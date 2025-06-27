<?php
error_reporting(0);
//Setting session start
session_start();

$total=0;

//Database connection, replace with your connection string.. Used PDO
$conn = new PDO("mysql:host=localhost;dbname=mobileshop", 'root', '');      
$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


//get action string
$action = isset($_GET['action'])?$_GET['action']:"";

//Add to cart
if($action=='addcart' && $_SERVER['REQUEST_METHOD']=='POST') {
    
    //Finding the product by code
    $query = "SELECT * FROM stock WHERE stockid=:stockid";
    $stmt = $conn->prepare($query);
    $stmt->bindParam('stockid', $_POST['stockid']);
    $stmt->execute();
    $product = $stmt->fetch();
    
    $currentQty = $_SESSION['products'][$_POST['stockid']]['qty']+1; //Incrementing the product qty in cart
    $_SESSION['products'][$_POST['stockid']] =array('qty'=>$currentQty,'name'=>$product['pname'],'image'=>$product['image'],'price'=>$product['price']);
    $product='';
    header("Location:addtocart.php");
}

//Empty All
if($action=='emptyall') {
    $_SESSION['products'] =array();
    header("Location:addtocart.php");   
}

//Empty one by one
if($action=='empty') {
    $stockid = $_GET['stockid'];
    $products = $_SESSION['products'];
    unset($products[$stockid]);
    $_SESSION['products']= $products;
    header("Location:addtocart.php");   
}


 
 
 //Get all Products
$query = "SELECT * FROM stock";
$stmt = $conn->prepare($query);
$stmt->execute();
$products = $stmt->fetchAll();

?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>PHP registration form</title>

<!-- Bootstrap -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container" style="width:1500px;">
  <?php if(!empty($_SESSION['products'])):?>
  <nav class="navbar navbar-inverse" style="background:#04B745;">
    <div class="container-fluid pull-left" style="width:300px;">
      <div class="navbar-header"> <a class="navbar-brand" href="#" style="color:#FFFFFF;">Shopping Cart</a> </div>
    </div>
    <div class="pull-right" style="margin-top:7px;margin-right:7px;"><a href="addtocart.php?action=emptyall" class="btn btn-info">Empty cart</a></div>
  </nav>
  <table class="table table-striped">
    <thead>
      <tr>
       
        <th>Name</th>
        <th>Price</th>
        <th>Qty</th>
        <th>Actions</th>
      </tr>
    </thead>
    <?php foreach($_SESSION['products'] as $key=>$product):?>
    <tr>
    
      <td><?php print $product['name']?></td>
      <td>$<?php print $product['price']?></td>
      <td><?php print $product['qty']?></td>
      <td><a href="addtocart.php?action=empty&stockid=<?php print $key?>" class="btn btn-info">Delete</a></td>
    </tr>
    <?php $total = $total+$product['price'];?>
    <?php endforeach;?>
    <tr><td colspan="5" align="right"><h4>Total:$<?php print $total?></h4></td></tr>
    <tr><td colspan="5" align="right"><h4><a href="payment.php"><h2>Buy now</h2></a></h4></td></tr>
  </table>
  <?php endif;?>
  <center>
    
  <nav class="navbar navbar-inverse" style="background:#04B745;">
    <div class="container-fluid">
      <div class="navbar-header"> <a class="navbar-brand" href="#" style="color:#FFFFFF;">Products</a> </div>
    </div>
  </nav>
  <div class="row">
    <div class="container" style="width:600px;">
      <?php foreach($products as $product):?>
      <div class="col-md-4">
        <div class="thumbnail"> <img src="<?php print $product['image']?>" alt="">
          <div class="caption">
            <p style="text-align:center;"><?php print $product['pname']?></p>
            <p style="text-align:center;color:#04B745;"><b>$<?php print $product['price']?></b></p>
            <form method="post" action="addtocart.php?action=addcart">
              <p style="text-align:center;color:#04B745;">
                <button type="submit" class="btn btn-warning">Add To Cart</button>
                <input type="hidden" name="stockid" value="<?php print $product['stockid']?>">
              </p>
            </form>
          </div>
        </div>
      </div>
      <?php endforeach;?>
    </div>
  </div>
</div>
</center>
</body>
</html>