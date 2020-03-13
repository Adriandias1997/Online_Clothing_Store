<?php

		$conn = new mysqli("localhost","root","1234","bimak");


		if (isset($_GET['del'])) {
			
			$del_id = $_GET['del'];

			$del_item = "delete from customer_account where cid = $del_id";
			$run_del_item = mysqli_query($conn , $del_item);

			if ($run_del_item) {
				
				echo "<script>alert ('The Customer has been removed from Customers successfully!')</script>";
				echo "<script>window.open('../list_customer.php','_self')</script>";

			}
		}

?>