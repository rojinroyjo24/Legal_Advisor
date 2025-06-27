<?php
include("connection.php");
include('aheader.html');
?>

<div class="contact-mian">

  <h3>Customer</h3>
  <table id="customers">

    <tr>
      <th>
      Id
      </th>
      <th>
      Name
      </th>
      <th>
      Address
      </th>
      <th>
      District
      </th>
      <th>
      Email
      </th>
      <th>
      Phone no
      </th>
      <th>
        Delete
      </th>
    
    </tr>
    <?php
   $ret = " SELECT * FROM owner  ";
    // echo $ret;
   $re = mysqli_query($conn, $ret);

        if ($re) {
            while ($data = mysqli_fetch_assoc($re)) {

      $id = $data['oid'];
      // echo $id;
      $fid = $data['oname'];
      $question = $data['address'];
      $answer = $data['district'];
      $sid = $data['email'];
      $ph = $data['phno'];
  
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
          <?php
          echo $ph;
          ?>
        </td>

       
        <td>
       
          <a href=<?php echo("owner_delete_staff.php?id=".$id); ?>>Delete</a>
        </td>
      </tr>
    <?php
    }
    ?>
  </table>
</div>
</br>
</br>
<?php


        } else {
            echo "<script type = \"text/javascript\">
alert(\"Sorry You Dont Have Any Question.\");

</script>";
        }
?>
</div>



<?php
include('common_footer.php');
?>