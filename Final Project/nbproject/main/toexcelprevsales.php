<?php
	header("Content-Type: application/xls");    
	header("Content-Disposition: attachment; filename=Prev_Sales.xls");  
	header("Pragma: no-cache"); 
	header("Expires: 0");

	require_once '../connect.php';
	
	$output = "";
	
	$output .="
		<table>
			<thead>
				<tr>
                <th> Invoice # </th>
                <th> Date </th>
                <th> Item Code(s) </th>
                <th> Item Name </th>
                <th> Category </th>
                <th> Price (PKR) </th>
                <th> Qty </th>
                <th> Total Amount (PKR) </th>
                <th> Profit </th>
				</tr>
			<tbody>
	";
	
	$result = $db->prepare("SELECT * FROM sales_order") or die(mysqli_errno());
	$result->execute();
    for($i=0; $row = $result->fetch(); $i++){
		
	$output .= "
				<tr>
                <td>".$row['invoice']."</td>
                <td>".$row['date']."</td>
                <td>".$row['product_code']."</td>
                <td>".$row['name']."</td>
                <td>".$row['gen_name']."</td>
                <td>".$row['price']."</td>
                <td>".$row['qty']."</td>
                <td>".$row['amount']."</td>
                <td>".$row['profit']."</td>
                </tr>
	";
	}
	
	$output .="
			</tbody>
			
		</table>
	";
	
	echo $output;
	
?>