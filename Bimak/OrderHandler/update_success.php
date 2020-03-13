<?php
	session_start();

	
		
		$dDate = $_POST['dDate'];
		$status =$_POST['status'];
			$aid =$_POST['oid'];	
		$conn = new mysqli("localhost","root","1234","bimak");

		


		$query1 = "update delivery_details set delivered_date = '$dDate', del_status='$status' where oId = '$aid' ";
		
		$run_query = mysqli_query($conn , $query1);

		if($run_query){
			
			header('Location: http://localhost/ITP_Project/Bimak/OrderHandler/delivery_details.php');

		}
	



?>