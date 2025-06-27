<?php
include('oheader.php');
include('connection.php');


// $mname=$_SESSION["ovname"];
?>

<!-- contact -->

<div class="contact">
	<div class="container">
		<div class="contact-mian">
			<h3>Staff Registration</h3>

			<form action="#" method="post">
				<!-- <div class="form-group"> -->
				<input class="user-input" type="text" name="name" required="" pattern="[A-Z a-z]+" placeholder="Name" required="">
				<br><br>
				<!-- <div class="form-group"> -->
				<input class="user-input" type="text" name="address" placeholder="Address" required="">
				<br><br>
				<!-- <div class="form-group"> -->
				<input class="user-input" style="padding: 15px 15px;" type="email" name="email" placeholder="Email Id" required="">
				<br><br>
				<!-- <div class="form-group"> -->
				<input class="user-input" type="text" name="phone" pattern="[0-9]{10}" maxlength="12"  placeholder="Phone Number" required="">
				<br><br>

				<!-- <div class="form-group"> -->
				<!-- <input type="text" name="accountno"  placeholder="Account Number" required="">  
                        </div>
                        <div class="form-group">
                        <input type="text" name="bank"  placeholder="Bank Name" required="">  
                        </div>
                        <div class="form-group">
                        <input type="text" name="ifsccode"  placeholder="IFSC code" required="">  
						</div> -->
				<!-- <div class="form-group"> -->
				<input class="user-input" style="padding: 15px 15px;" type="password" name="password" placeholder="Password" required="">
				<br><br>

				<div class="contact-but-user">
					<input type="submit" name="submit" value="Submit">
				</div>
			</form>
		</div>
	</div>
</div>
</div>
</div>
</div>




</body>
<?php

if (isset($_POST["submit"])) {
	$oid = $_SESSION["oid"];
	echo "hello";
	$Name = $_POST["name"];

	$Address = $_POST["address"];
	$email = $_POST["email"];
	$phone = $_POST["phone"];
	// $district=$_REQUEST["district"];
	// $licenceno=$_REQUEST["licenceno"];
	$password = $_POST["password"];


	$a = "insert into staff(sname,address,email,phno,oid) values('$Name','$Address','$email','$phone','$oid')";
	mysqli_query($conn, $a);
	// echo "$a";
	$qry1 = "insert into login(username,password,usertype,status) values('$email','$password','staff','approved')";
	// echo $a;
	mysqli_query($conn, $qry1);
	// echo $qry1;
	echo "<script>alert('Registration Completed Successfully')</script>";
}
include("footer.html");
?>

</html>