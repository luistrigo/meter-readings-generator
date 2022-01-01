<?php
include("connection.php");
if(!$connection){
    echo json_encode(
        array(
            "message" => "<ul><li>Your config:</li>
            <li>dbhost = ".$dbhost. "</li>
            <li>dbuser = ".$dbuser."</li>
            <li>dbpassword = ".$dbpassword."</li> 
            <li>db = ".$db . "<li>
            <li>Review your configuration and create the database " . $db . "</li>" 
        )
    );
    die();
}

if (!mysqli_query($connection, "DESCRIBE `tname`") ) {
    echo json_encode(
        array(
            "message" => "<ul><li>You need to execute sql file</li>
            <li>file: database/meterreadings.sql</li>
            <li>This file contains the initial tables to create customers and meter readings</li>
            </ul>"
        )
    );
    die();
}

$sql = "SELECT count(id) as tcustomers FROM customers";

$r_customers = mysqli_query($connection, $sql);
$t_customers = mysqli_num_rows($r_customers);


$totalCustomers = 0;
while ($row_customers = mysqli_fetch_assoc($r_customers)) {
    $totalCustomers = $row_customers['tcustomers'];
}
mysqli_free_result($r_customers);

$sql = "SELECT count(id) as tmeterReadings FROM meter_readings";

$r_meterReadings = mysqli_query($connection, $sql);
$t_meterReadings = mysqli_num_rows($r_meterReadings);

$totalMeterReadings = 0;
while ($row_meterReadings = mysqli_fetch_assoc($r_meterReadings)) {
    $totalMeterReadings = $row_meterReadings['tmeterReadings'];
}

mysqli_free_result($r_meterReadings);

echo json_encode(
    array(
        "totalMeterReadings"=>$totalMeterReadings, "totalCustomers" => $totalCustomers
    )
);