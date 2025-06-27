<?php
include("connection.php");
session_start();
$oid=$_GET['id'];
$ret="  delete FROM owner where oid='$oid'";
echo $ret;
mysqli_query($conn,$ret);
header("location:view_customer.php");
?>