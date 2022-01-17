<?php include 'header.php'; ?>
<?php include('navfixed.php');?>
    <div class="container-fluid">
      <div class="row-fluid">
	
	
	<div class="contentheader">
			<i class    ="icon-dashboard"></i> Dashboard
			</div>
			<ul class="breadcrumb">
			<li class="active">Dashboard</li>
			</ul>
<div id="mainmain">
	<?php
$position=$_SESSION['SESS_LAST_NAME'];
if($position=='Cashier') {
?>
<a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i><br>Sales</a>

<a href="../index.php"><i class="icon-signout icon-2x"></i><br>Logout</a>   
<?php
}
if($position=='Admin') {
?>

<a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i><br>Invoice</a>               
<a href="products.php"><i class="icon-list-alt icon-2x"></i><br>Inventory</a>           
<a href="cat.php"><i class="icon-list-alt icon-2x"></i><br>Inventory Categories</a>     
<a href="customer.php"><i class="icon-group icon-2x"></i><br>Customers</a>     
<a href="supplier.php"><i class="icon-group icon-2x"></i><br>Suppliers</a>
<a href="admin-settings.php"><i class="icon-group icon-2x"></i><br> Users</a>
<?php 
    }                   
    ?>
<?php
if($position=='Manager') {
?>
<a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i><br>Invoice</a>               
<a href="products.php"><i class="icon-list-alt icon-2x"></i><br>Inventory</a>           
<a href="cat.php"><i class="icon-list-alt icon-2x"></i><br>Inventory Categories</a>     
<a href="customer.php"><i class="icon-group icon-2x"></i><br>Customers</a>     
<a href="supplier.php"><i class="icon-group icon-2x"></i><br>Suppliers</a>
<?php
}
if($position=='Pharmacist') {
?>

<a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i><br>Invoice</a>               
<a href="products.php"><i class="icon-list-alt icon-2x"></i><br>Inventory</a>           
<a href="supplier.php"><i class="icon-group icon-2x"></i><br>Suppliers</a>
<?php 
    }                   
    ?>

<div class="clearfix"></div>
</div>
</div>
</div>
</body>
<?php include('footer.php'); ?>
</html>