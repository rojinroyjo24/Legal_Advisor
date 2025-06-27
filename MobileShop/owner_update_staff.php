<?php
include("connection.php");
include('aheader.html');

$ret = " SELECT * FROM staff ";
// echo $ret;
$re = mysqli_query($conn, $ret);

$data = mysqli_fetch_array($re);
$name=$data["sname"];
?>
		<center>
			
<div class="contact">
	<div class="container">
		<div class="contact-mian">
		<h3>Update Customer</h3>
			<form action="#" method="post">

<select name="t1">
          
                <option value="<?php echo $data["sid"];
                    // The value we usually set is the primary key
                ?>">
                    <?php echo $name;
                        // To show the category name to the user
                    ?>
                </option>
             
  
        </select>


				<!-- <div class="form-group"> -->
			
				<!-- <div class="form-group"> -->
				<input type="text" name="t2"  class="user-input" value="<?php echo $data['address']; ?>" required="">
				<!-- </div> --></br>
				<!-- <div class="form-group"> -->
				<input type="text" name="t3"  class="user-input" value="<?php echo $data['email']; ?>" required="" >
				<!-- </div> --></br>
				<!-- <div class="form-group"> -->
				<input type="text" name="t4"  class="user-input" value="<?php echo $data['phno']; ?>" required="" placeholder="enter your answer here">
				<!-- </div> --></br>
				<!-- <div class="form-group"> -->
				
				<!-- </div> --></br>

				<div class="contact-but-user">

				<input type="submit" name="submit" value="Submit">
				</div>
				</div>
				</div>
				</div>
			</form>
		</center>
		</br>
		</br>
</div>

<?php
if (isset($_POST['submit'])) {
	$id = mysqli_real_escape_string($conn,$_POST['t1']);
	$fid = $_POST['t2'];
	$question = $_POST['t3'];
	$answer = $_POST['t4'];
	//  $sid=$_SESSION['ovname'];
	//  echo "$id, $fid, $question, $answer";
	$m = "update staff set address='$fid',email='$question',phno='$answer' where sname='$id' ";
	$f = mysqli_query($conn, $m);
	echo "<script type=\"text/javascript\">
	 alert(\"SUCCESSFULLY EDITED \");
	 window.location = (\"view_customer.php\")
	 </script>";
}
?>


<?php
include('common_footer.php');
?>