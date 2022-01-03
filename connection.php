<?php
error_reporting(E_ALL & ~E_NOTICE);
error_reporting(E_ALL & ~E_NOTICE & ~E_DEPERECATED);

$password= filter_input(INPUT_POST, 'pass');

    mysql_connect("localhost" , "root" , "");
    mysql_select_db("pharmacy");
    echo " Database connected Succesfully ";

    
$result= mysql_query("SELECT * FROM `mainaccounts` WHERE `AcPin` = '$password' ")
or die("Failed to query database ".mysql_error());


$row = mysql_fetch_array($result);

if($row['AcPin'] == $password ){
header("location: AdministratorDashboard.html");
}
else{
echo " Unfortunately Login failed, Check Password Again ";
}





?>