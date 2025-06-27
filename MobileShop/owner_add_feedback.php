<?php
include('oheader.php');
include('connection.php');

// $mname=$_SESSION["ovname"];
?>

<div class="contact">
	<div class="container">
		<div class="contact-mian">
			<h3>FeedBack</h3>

			<form method="post">
				<div>
					<input type="text" name="t1" class="user-input" placeholder="Feedback">
				</div>


				<div class="contact-but-user">
					<input type="submit" name="b1" value="Add" class="but">
				</div>

			</form>

		</div>

	</div>

</div>

<?php
if (isset($_POST['b1'])) {
	$a = $_POST['t1'];
	$oid = $_POST['oid'];

	$qry = "insert into feedback(oid,feedback) values('$oid','$a')";
	mysqli_query($conn, $qry);

	echo "<script>alert('Added Successfully')</script>";
}
?>

<br>
<br>
<br>
<br>
<br>
<br>
<?php
include('common_footer.php');
?>