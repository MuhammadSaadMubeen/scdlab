<?php
include 'dbconnect.php';
	session_start();
	
	unset($_SESSION['SESS_DESTINATION']);
	unset($_SESSION['SESS_PASSWORD']);
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


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
                <a href="file:Login.html"><img src="pharmacy.png"
                        style="width: 40px !important; height: 40px !important; "></a>
                <a class="navbar-brand " href="file:Login.html"
                    style="padding-left: 10px; "><strong>Pharmacy System</strong></a>
                

                <div class="collapse navbar-collapse hh" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">

                        &nbsp;&nbsp;

                        &nbsp; &nbsp;
                </div>
            </div>
        </nav>

        
        <div class="form-box">
            <form id="login" class="input-group">
                <table>
                    <tr class="l">
                        <td>
                            <h3>LOGIN</h3>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <select class="opt" name="Destination">

                                <option value="Destination">Admin</option>
                                <option value="Destination">Manangement</option>
                                <option value="Destination">Transcation</option>

                            </select>
                        </td>
                    </tr>
                    <tr class="t">
                        <td>
                            <input type="password" class="pass" placeholder=" Account Pin" required>

                        </td>

                    </tr>

                    <tr>
                        <td>
                            <br>
                            <button type="submit" class="submit">Log In</button>
                        </td>
                    </tr>
                </table>

            </form>



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