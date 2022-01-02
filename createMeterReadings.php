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
$today = new DateTime('now');
$now = new DateTime('now');
$now = $now->modify('+1 DAY');

if ($t_customers > 0) {
    $counter = 0;
    while ($row_customers = mysqli_fetch_assoc($r_customers)) {
        //meterReadings for each customer
        $newtime = $today->modify('-'.$year.' YEAR');
        if ($meterReading_type == 1) {
            //Monthly First month day
            $newtime = new DateTime($newtime->format("Y")."-".$newtime->format("m").'-01');
        }
        $counterKW = 0;
        while($newtime->format('U') < $now->format('U')){
            //KW ramdom min 50 max 50 + meters
            $KW = rand(50, $row_customers['meters'] + 50);
            $dateMeterReading = date("Y") - $i . "-" . $j . "-" . $k;
            $KWmas = rand(5, 20);
            $KW_T = $KW + ($KW * $KWmas / 100); //between 5% - 20%
            $counterKW += $KW_T;
            $id_customers = $row_customers['id'];
            $sql = "insert into meter_readings (id_customer,kw,datetime,reading) values('".$id_customers."','".$KW_T."','".$newtime->format('Y-m-d')."','".$counterKW."')";
            $newMeterReading = mysqli_query($connection, $sql);
            $counter++;
            if ($meterReading_type == 0) {
                //Daily
                $newtime = $newtime->modify('+1 DAY');
            } else {
                //Monthly
                $newtime = $newtime->modify('+1 MONTH');
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
