<?php
include "connection.php";
$sql = "DELETE  FROM customers";
$r_customers = mysqli_query($connection, $sql);

$sql = "DELETE FROM meter_readings";
$r_meterReadings = mysqli_query($connection, $sql);

echo json_encode(
    array(
        "message" =>  "END",
        "slq" => $sql
    )
);
