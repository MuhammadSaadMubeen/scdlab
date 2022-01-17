<?php
	header("Content-Type: application/xls");    
	header("Content-Disposition: attachment; filename=Customers.xls");  
	header("Pragma: no-cache"); 
	header("Expires: 0");

	require_once '../connect.php';
	
	$output = "";
	
	$output .="
		<table>
			<thead>
				<tr>
                <th> Customer Name Name </th>
                <th> Address </th>
                <th> Contact Number</th>
                <th> Product Name</th>
                <th> Total (PKR)</th>
                <th> Note </th>
                <th> Due Date </th>
				</tr>
			<tbody>
	";
	
	$result = $db->prepare("SELECT * FROM customer") or die(mysqli_errno());
	$result->execute();
    for($i=0; $row = $result->fetch(); $i++){
		
	$output .= "
				<tr>
                <td>".$row['customer_name']."</td>
			    <td>".$row['address']."</td>
			    <td>".$row['contact']."</td>
			    <td>".$row['prod_name']."</td>
			    <td>".$row['membership_number']."</td>
			    <td>".$row['note']."</td>
			    <td>".$row['expected_date']."</td>
				</tr>
	";
	}
	
	$output .="
			</tbody>
			
		</table>
	";
	
	echo $output;
	
?>