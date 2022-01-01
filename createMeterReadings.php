<?php
include "connection.php";

$year = $_GET["years"];
$meterReading_type = $_GET["meterReadingType"];
$nCustomers = $_GET["nCustomers"];

$sql = "SELECT max(id_customer) as last from meter_readings";

$r_meterReading = mysqli_query($connection, $sql);
$t_Medicion = mysqli_num_rows($r_meterReading);

$lastCustomers = 0;
$start = true;
while ($row_medicion = mysqli_fetch_assoc($r_meterReading)) {
    $lastCustomers = $row_medicion['last'];
    $start = false;
}

mysqli_free_result($r_meterReading);
if (!$start)
    $lastCustomers++;
$customersEnd = $lastCustomers + $nCustomers;

$sql = "SELECT id,meters FROM customers WHERE id >='$lastCustomers' and id <=$customersEnd ORDER BY id";
$r_customers = mysqli_query($connection, $sql);
$t_customers = mysqli_num_rows($r_customers);
$ster_year = date("Y") - $year;

$start_month = 1;



if ($t_customers > 0) {
    $counter = 0;
    while ($row_customers = mysqli_fetch_assoc($r_customers)) {
        //meterReadings for each customer
        $counterKW = 0;
        for ($i = 0; $i < $year; $i++) {
            //KW ramdom min 50 max 50 + meters
            $KW = rand(50, $row_customers['meters'] + 50);

            for ($j = 1; $j < 13; $j++) {
                if ($meterReading_type == 0) {
                    //Daily
                    $month = $j + 1; //next month
                    if ($month == 12)
                        $month = 1; //january have 31 days

                    $date = mktime('0', '0', '0', $month, 1, date("Y") - $i);
                    $date = $date - 86400; //day 1 next month less 1 day (24h*60m*60s) is last day previous month
                    $daymonth = date("d", $date);
                } else {
                    //Monthly
                    $daymonth = 1;
                }
                for ($k = 1; $k < ($daymonth + 1); $k++) {
                    $dateMeterReading = date("Y") - $i . "-" . $j . "-" . $k;
                    $KWmas = rand(5, 20);
                    $KW_T = $KW + ($KW * $KWmas / 100); //between 5% - 20%
                    $counterKW += $KW_T;
                    $id_customers = $row_customers['id'];
                    $sql = "insert into meter_readings (id_customer,kw,datetime,reading) values('$id_customers','$KW_T','$dateMeterReading','$counterKW')";
                    $newMeterReading = mysqli_query($connection, $sql);

                    $counter++;
                }
                
            }
        }
    }
    echo json_encode(
        array(
            "message" => "Created $counter Meter Readings for customers $lastCustomers ... $customersEnd",
            "lastCustomers" => $customersEnd, "meterReadings"=>$counter
        )
    );

    mysqli_free_result($r_customers);
} else {
    echo json_encode(
        array(
            "message" =>  "END",
            "slq" => $sql
        )
    );
}
