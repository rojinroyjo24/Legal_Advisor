<?php
include('connection.php');
include('aheader.html');
?>

<div class="contact-mian">
  <h3 style="margin-top: 45px;">Feedbacks</h3>
  <br>
  <table id="customers">
    <tr>
      <th>Name</th>
      <th>Address</th>
      <th>Phone No</th>
      <th>Feedback</th>
    </tr>
    <?php
    $b = "SELECT feedback.*,owner.* FROM feedback join owner on feedback.oid=0";
    $res = mysqli_query($conn, $b);
    while ($data = mysqli_fetch_assoc($res)) {

      $fon = $data['feedback'];
      $fon1 = $data['oname'];
      $fon2 = $data['address'];
      $fon3 = $data['phno'];

      echo "
                <tr>
                    <td>$fon1</td>
                    <td>$fon2</td>
                    <td>$fon3</td>
                    <td>$fon</td>
					
					
                </tr>";
    }
    ?>






  </table>
</div>
<br>
<br>
<br>
