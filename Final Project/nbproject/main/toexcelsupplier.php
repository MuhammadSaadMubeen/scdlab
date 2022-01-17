<?php
	header("Content-Type: application/xls");    
	header("Content-Disposition: attachment; filename=Suppliers.xls");  
	header("Pragma: no-cache"); 
	header("Expires: 0");

	require_once '../connect.php';
	
	$output = "";
	
	$output .="
		<table>
			<thead>
				<tr>
                <th> Supplier </th>
                <th> Contact Person </th>
                <th> Address </th>
                <th> Contact No.</th>
                <th> Note</th>
                </tr>
			<tbody>
	";
	
	$result = $db->prepare("SELECT * FROM supliers") or die(mysqli_errno());
	$result->execute();
    for($i=0; $row = $result->fetch(); $i++){
		
	$output .= "
				<tr>
                <td>".$row['suplier_name']."</td>
			<td>".$row['suplier_contact']."</td>
			<td>".$row['suplier_address']."</td>
			<td>".$row['contact_person']."</td>
			<td>".$row['note']."</td>
				</tr>
	";
	}
	
	$output .="
			</tbody>
			
		</table>
	";
	
	echo $output;
	
?>