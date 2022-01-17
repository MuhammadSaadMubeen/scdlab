<?php
	header("Content-Type: application/xls");    
	header("Content-Disposition: attachment; filename=Inventory.xls");  
	header("Pragma: no-cache"); 
	header("Expires: 0");

	require_once '../connect.php';
	
	$output = "";
	
	$output .="
		<table>
			<thead>
				<tr>
                <th> Item Code </th>
                <th> Item Name </th>
                <th> Category </th>
				<th> Supplier </th>
                <th> Date Received </th>
                <th> Expiry Date </th>
                <th> Original Price </th>
                <th> Selling Price </th>
                <th> Quantity Purchased </th>
                <th> Quantity Left </th>
				</tr>
			<tbody>
	";
	
	$result = $db->prepare("SELECT * FROM products") or die(mysqli_errno());
	$result->execute();
    for($i=0; $row = $result->fetch(); $i++){
		
	$output .= "
				<tr>
                <td>".$row['product_code']."</td>
                <td>".$row['product_name']."</td>
                <td>".$row['gen_name']."</td>
                <td>".$row['supplier']."</td>
                <td>".$row['date_arrival']."</td>
                <td>".$row['expiry_date']."</td>
                <td>".$row['o_price']."</td>
                <td>".$row['price']."</td>
                <td>".$row['qty_sold']."</td>
                <td>".$row['qty']."</td>
				</tr>
	";
	}
	
	$output .="
			</tbody>
			
		</table>
	";
	
	echo $output;
	
?>