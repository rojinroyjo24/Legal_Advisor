<?php
include("connection.php");
include('aheader.html');
?>

<div class="contact-mian">

    <h3>View Products</h3>
    <table id="customers">

        <tr>
            <th>
                Sid
            </th>
            <th>
                Product Name
            </th>
            <th>
                Price
            </th>
            <th>
                Stock
            </th>
            <th colspan="2">
                Action
            </th>
        </tr>
        <?php
      
        // $sid=$_REQUEST['sid'];
       // $oid = $_POST['sid'];
        $ret = " SELECT * FROM stock  ";
        // echo $ret;
        $re = mysqli_query($conn, $ret);

        if ($re) {
            while ($data = mysqli_fetch_assoc($re)) {
                $id = $data['stockid'];
                // echo $id;
                $fid = $data['pname'];
                $question = $data['price'];
                $answer = $data['stock'];


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
                        <a href="del.php?id=<?php echo $id; ?>">Delete</a>
                        <?php

                        ?>
                    </td>

                    <td>
                        <a href="staff_update_product.php?id=<?php echo $id; ?>">Update</a>
                    <?php
                }
                    ?>
                    </td>
                </tr>
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