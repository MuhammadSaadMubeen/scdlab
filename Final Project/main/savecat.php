<title>
Pharmacy Management System
</title>
    <link rel="shortcut icon" href="main/images/pos.jpg">

<?php
session_start();
include('../connect.php');
$a = $_POST['name'];
// query
$sql = "INSERT INTO category(name) VALUES (:a)";
$q = $db->prepare($sql);
$q->execute(array(':a'=>$a));
header("location: cat.php");


?>