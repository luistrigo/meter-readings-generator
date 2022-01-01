<?php

include "connection.php";

$data = [];
$totalCustomers = $_GET["customers"];
$totalCities = $_GET["cities"];
$totalPopulation = 0;

$sql = "SELECT id,population FROM `tcities` order by population desc limit 0, " . $totalCities;
$r_population = mysqli_query($connection, $sql);

while ($row_population = mysqli_fetch_assoc($r_population)) {
    $totalPopulation += $row_population['population'];
}

mysqli_free_result($r_population);

$ratio = $totalCustomers / $totalPopulation;

$data['totalPopulation'] = $totalPopulation;
$data['ratio'] = $ratio;
//population
$sql = "SELECT  * FROM `tcities` order by population desc limit 0,$totalCities";

$r_tcities = mysqli_query($connection, $sql);
$t_tpoblaciones = mysqli_num_rows($r_tcities);
$total = 0;
$counter = 0;
while ($row_tcities = mysqli_fetch_assoc($r_tcities)) {
    $cities[$counter]['city'] = $row_tcities['city'];
    $cities[$counter]['id'] = $row_tcities['id'];
    $cities[$counter]['id_state'] = $row_tcities['id_state'];
    $cities[$counter]['population'] = $row_tcities['population'];
    $cities[$counter]['numcustomers'] = (int)($row_tcities['population'] * $ratio);
    $total += $cities[$counter]['numcustomers'];
    $counter++;
}

mysqli_free_result($r_tcities);
//add customers to first city
if ($total > $totalCustomers)
    $cities[0]['numcustomers'] = $cities[0]['numcustomers'] - ($total - $totalCustomers);
else
    $cities[0]['numcustomers'] = $cities[0]['numcustomers'] + ($totalCustomers - $total);

$data['cities']= $cities;

//all names
$sql = "SELECT * FROM tname ORDER BY id";

$r_tnames = mysqli_query($connection, $sql);
$t_tnames = mysqli_num_rows($r_tnames);

$counter = 0;
while ($row_tnames = mysqli_fetch_assoc($r_tnames)) {
    $tname[$counter] = $row_tnames['name'];
    $counter++;
}
mysqli_free_result($r_tnames);

//all lastnames
$sql = "SELECT * FROM tlastname ORDER BY id";

$r_tlastnames = mysqli_query($connection, $sql);
$t_lastnames = mysqli_num_rows($r_tlastnames);

if ($t_lastnames > 0)
    $counter = 0;
while ($row_tlastnames = mysqli_fetch_assoc($r_tlastnames)) {

    $tlastname[$counter] = $row_tlastnames['lastname'];
    $counter++;
}
$id = 0;

mysqli_free_result($r_tlastnames);

$data['total_lastnames'] = $t_lastnames;
$data['total_names'] = $t_tnames;

for ($j = 0; $j < $totalCities; $j++) {
    //streets
    /*
    $sql = "SELECT * FROM streets where id_city ='" . $cities[$j]['id'] . "'";
    $r_tstreets = mysqli_query($connection, $sql);
    $t_streets = mysqli_num_rows($r_tstreets);

    if ($t_streets > 0)
        $counter = 0;
    while ($row_tstreets = mysqli_fetch_assoc($r_tstreets)) {
        $tstreets[$counter] = $row_tstreets['id'];
        $counter++;
    }
    */

    //Create customeres by city
    for ($i = 0; $i < $cities[$j]['numcustomers']; $i++) {
        $uuid = guidv4(openssl_random_pseudo_bytes(16));
        $n_name = mt_rand(0, $t_tnames - 1);
        $n_lastname = mt_rand(0, $t_lastnames - 1);
        $n_surename = mt_rand(0, $t_lastnames - 1);
        //$n_street = mt_rand(0, $t_streets - 1);
        $n_street = 0;
        $tstreets[$n_street] = 0;
        $n_floor = mt_rand(1, 7);
        $n_numStreet = mt_rand(1, 100);
        $n_meters = mt_rand(50, 300);
        $id++;
        
        //sql to insert customers in database
        $sql = "insert into customers (id,uuid,name,lastname,surename,id_city,id_street,floor,number,meters) 
        values('" . $id . "','" . $uuid . "','" . $tname[$n_name] . "','" . $tlastname[$n_lastname] . "','" . $tlastname[$n_surename] . "','" . $cities[$j]['id'] . "','" . $tstreets[$n_street] . "','" . $n_floor . "','" . $n_numStreet . "','" . $n_meters . "');";

        $nuevocustomers = mysqli_query($connection, $sql);
        if (!$nuevocustomers){
            $data['failsql'][] = $id. " ".$sql .'<br>';
        }
    }
    mysqli_free_result($r_tstreets);
}

$data['message'] = "END";
echo json_encode(
    $data
);
	
function guidv4($data)
{
    assert(strlen($data) == 16);

    $data[6] = chr(ord($data[6]) & 0x0f | 0x40); // set version to 0100
    $data[8] = chr(ord($data[8]) & 0x3f | 0x80); // set bits 6-7 to 10

    return vsprintf('%s%s-%s-%s-%s-%s%s%s', str_split(bin2hex($data), 4));
}




