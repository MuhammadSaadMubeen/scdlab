<?php
include 'dbconnect.php';
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <link href="bootstrap.min.css" rel="stylesheet">
    <link href="Style.css" rel="stylesheet">

    <link rel="shortcut icon" type="x-icon" href="pharmacy.png">
    <title>Pharmacy System</title>
</head>

<body>

    <div class="container-1">

        <nav class="navbar navbar-expand-lg navbar-dark bg-secondary"
            style="flex-basis: auto; background-color: rgb(97, 97, 255) !important;">
            <div class="container-fluid">
                <a href="Project.html"><img src="pharmacy.png"
                        style="width: 40px !important; height: 40px !important; "></a>
                <a class="navbar-brand " href="Project.html"
                    style="padding-left: 10px; "><strong>Pharmacy System</strong></a>
                <!-- <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span><img src="options.png" style="width: 25px; height: 25px; "></span>
                </button> -->

                <div class="collapse navbar-collapse hh" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">



                </div>
            </div>
        </nav>



        <div class="container">

            <div class="row card_1">
                <div class="col-sm-12 col-md-3 ">
                    <div class="card round" style="width: 12rem; background: #fff;" id="user" onmouseover="user()"
                        onmouseout="user1()">
                        <img src="images/man.png" class="card-img-top pic" alt="Pls wait">
                        <div class="card-body card_btn">
                            <!-- <a href="#" class="btn btn-primary" id="user" onmouseover="user()"
                            onmouseout="user1()">User</a> -->
                            <h4 >User</h4>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-3">
                    <div class="card round" style="width: 12rem;  background: #fff;" id="staff" onmouseover="staff()"
                    onmouseout="staff1()">
                        <img src="images/staff.png" class="card-img-top pic" alt="...">
                        <div class="card-body card_btn">
                            <!-- <a href="#" class="btn btn-primary" >Staff</a> -->
                            <h4>Staff</h4>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-3">
                    <div class="card round" style="width: 12rem;  background: #fff;" id="purchase" onmouseover="purchase()"
                    onmouseout="purchase1()">
                        <img src="images/purchase.png" class="card-img-top pic1" alt="...">
                        <div class="card-body card_btn1">
                            <!-- <a href="#" class="btn btn-primary" >Purchase</a> -->
                            <h4>Purchase</h4>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-3">
                    <div class="card round" style="width: 12rem;  background: #fff;" id="account" onmouseover="account()"
                    onmouseout="account1()">
                        <img src="images/accounts.png" class="card-img-top pic1" alt="...">
                        <div class="card-body card_btn3">
                            <!-- <a href="#" class="btn btn-primary" >Accounts</a> -->
                            <h4>Account</h4>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row card_2">

                <div class="col-sm-12 col-md-4">
                    <div class="card round" style="width: 12rem;  background: #fff;" id="sale" onmouseover="sale()" onmouseout="sale1()">
                        <img src="images/cashier-machine.png" class="card-img-top pic1" alt="...">
                        <div class="card-body card_btn">
                            <!-- <a href="#" class="btn btn-primary" >
                                Sales</a> -->
                                <h4>Sales</h4>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-md-4">
                    <div class="card round" style="width: 12rem;  background: #fff;" id="inventory" onmouseover="inventory()"
                    onmouseout="inventory1()">
                        <img src="images/inventory.png" class="card-img-top pic1" alt="...">
                        <div class="card-body card_btn1">
                            <!-- <a href="#" class="btn btn-primary" >Inventory</a> -->
                            <h4>Inventory</h4>
                        </div>
                    </div>
                </div>

                <div class="col-sm-12 col-md-4">
                    <div class="card round" style="width: 12rem;  background: #fff;" id="report" onmouseover="report()"
                    onmouseout="report1()">
                        <img src="images/report.png" class="card-img-top pic1" alt="...">
                        <div class="card-body card_btn2">
                            <!-- <a href="#" class="btn btn-primary" id="report" onmouseover="report()"
                            onmouseout="report1()" >Report</a> -->
                            <h4>Reports</h4>
                        </div>
                    </div>
                </div>
            </div>



        </div>

    </div>

    </div>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js "
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ " crossorigin="anonymous ">
        </script>
    <script src="index.js ">
    </script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js " integrity="sha384-W8fXfP3gkOKtndU4JGtKDvXbO53Wy8SZCQHczT5FMiiqmQfUpWbYdTil/SxwZgAN " crossorigin="anonymous "></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js " integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/ " crossorigin="anonymous "></script>
    -->
</body>

</html>