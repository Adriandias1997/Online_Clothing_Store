<?php
   

	$username = $_POST['username'];
	$password = $_POST['password'];

	$conn = new mysqli("localhost","root","1234","bimak");

		
		$get_admin = "select * from employee where Name ='$username' ";

         $run_admin = mysqli_query($conn , $get_admin);
         $row_admin = mysqli_fetch_array($run_admin);
         $un = $row_admin['ename'];
         $pw = $row_admin['epassword'];
         $id = $row_admin['id'];

         if(($username == admin) && ($password == admin)){
          
         	header("Location:http://localhost/ITP_Project/Bimak/OrderHandler/order_handling_dashboard.php");
          
         
         }else{

         	echo "<script>alert ('User Name didn't match to the password!')</script>";
         	header("Location:http://localhost/ITP_Project/Bimak/OrderHandler/oh_login.php");

         }

?>