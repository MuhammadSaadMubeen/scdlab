<?php
	header("Content-Type: application/xls");    
	header("Content-Disposition: attachment; filename=Users.xls");  
	header("Pragma: no-cache"); 
	header("Expires: 0");

	require_once '../connect.php';
	
	$output = "";
	
	$output .="
		<table>
			<thead>
				<tr>
                <th> Employee Name </th>
                <th> Role</th>
                <th> Username </th>
                <th> Password </th>
                </tr>
			<tbody>
	";
	
	$result = $db->prepare("SELECT * FROM user") or die(mysqli_errno());
	$result->execute();
    for($i=0; $row = $result->fetch(); $i++){
		
	$output .= "
				<tr>
                <td>".$row['name']."</td>
                <td>".$row['position']."</td>
                <td>".$row['username']."</td>
                <td>".$row['password']."</td>
                </tr>
	";
	}
	
	$output .="
			</tbody>
			
		</table>
	";
	
	echo $output;
	
?>