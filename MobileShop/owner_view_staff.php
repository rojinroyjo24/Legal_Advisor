<?php
include("connection.php");
include('oheader.php');
?>

<div class="contact-mian">

  <h3>Staff</h3>
  <table id="customers">

    <tr>
      <th>
        Sid
      </th>
      <th>
        Name
      </th>
      <th>
        Email
      </th>
      <th>
        Phone No
      </th>
      <th>
      Address
      </th>
      <th>
        Update
      </th>
      <th>
        Delete
      </th>
      <th>
        Mark Attendence
      </th>
    </tr>
    <?php
    if (isset($_POST["submit"]))
    {
    $oid = $_POST['oid'];
    $ret = " SELECT * FROM staff where oid=$oid ";
    // echo $ret;
    $re = mysqli_query($conn, $ret);
    
    while($data = mysqli_fetch_array($re)) {
      $id = $data['sid'];
      // echo $id;
      $fid = $data['sname'];
      $question = $data['email'];
      $answer = $data['phno'];
      $sid = $data['address'];
  
    ?>

      <tr>
        <td>
          <?php
          echo $id;
          ?>
        </td>
        <td>
          <?php
          echo $fid;
          ?>
        </td>
        <td>
          <?php
          echo $question;
          ?>
        </td>
        <td>
          <?php
          echo $answer;
          ?>
        </td>
        <td>
          <?php
          echo $sid;
          ?>
        </td>
        <td>
          <a href="owner_update_staff.php">Update</a>
        </td>
        <td>
          <a href="owner_delete_staff.php">Delete</a>
        </td>
        <td>
          <a href="staff_add_attendence.php">Attendence</a>
        </td>
      </tr>
    <?php
    }
}
    ?>
  </table>
</div>
</br>
</br>

</div>

<?php
if (isset($_POST['submit'])) {
  $id = $_POST['t1'];
  $fid = $_POST['t2'];
  $question = $_POST['t3'];
  $answer = $_POST['t4'];
  $t5 = $_POST['t5'];

  // $sid=$_SESSION['ovname'];
  // echo "$id, $fid, $question, $answer";
  $m = "update staff set sname='$fid',email='$question',address='$t5',phno='$answer' where sid='$id'";
  $f = mysqli_query($conn, $m);
  echo "<script type=\"text/javascript\">
	 alert(\"SUCCESSFULLY EDITED \");
	 
	 </script>";
}
?>


<?php
include('common_footer.php');
?>