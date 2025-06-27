<?php
include('sheader.php');
include('connection.php');
session_start();

// $mname=$_SESSION["ovname"];
?>
<div class="contact">
	<div class="container">
		<div class="contact-mian">
			<form method="POST">
				<table>
					<h3>Add Bill</h3>
					<div>
						<input class="user-input" type="text" name="t1" placeholder="Booking Id">
					</div>


					<div class="contact-but-user">
						<input type="submit" name="b1" value="Submit" class="but">
					</div>
				</table>
			</form>
			<?php
			if (isset($_REQUEST['b1'])) {
				$a = $_REQUEST['t1'];
				$_SESSION['bookid'] = $a;



				echo "<script>alert('Added Successfully')</script>";
				header("location:calculatebill.php");
			}
			?>
		</div>
	</div>
</div>
<?php
include('common_footer.php');
?>