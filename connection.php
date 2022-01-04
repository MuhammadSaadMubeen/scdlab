<?php
error_reporting(E_ALL & ~E_NOTICE);
error_reporting(E_ALL & ~E_NOTICE & ~E_DEPERECATED);

$title1=filter_input(INPUT_POST, 'value1');
$title2=filter_input(INPUT_POST, 'value2');
$title3=filter_input(INPUT_POST, 'value3');
$title4=filter_input(INPUT_POST, 'value4');

$password= filter_input(INPUT_POST, 'pass');

    mysql_connect("localhost" , "root" , "");
    mysql_select_db("pharmacy");
    echo " Database connected Succesfully ";

    
$result= mysql_query("SELECT * FROM `mainaccounts` WHERE `AcPin` = '$password'")
or die("Failed to query database ".mysql_error());

$row = mysql_fetch_array($result);

if($_POST['Destination']== "value1" && $row['AcPin'] == $password){
    $Destination1=$title1;
    header("location: AdministratorDashboard.html");
}
    elseif($_POST['Destination']== "value2" && $row['AcPin'] == $password){
        $Destination2=$title2;
    header("location: Manager.html");
    }

            elseif($_POST['Destination']== "value3" && $row['AcPin'] == $password){
                $Destination3=$title3;
            header("location:Transaction.html");
        }
                    elseif($_POST['Destination']== "value4" && $row['AcPin'] == $password ){
                        $Destination4=$title4;
                    header("location: Sales.html");
                    }

                        else{
                        echo " Unfortunately Login failed, Check Password Again ";
                        }
?>