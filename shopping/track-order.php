<?php
session_start();
include_once 'includes/config.php';
$oid=intval($_GET['oid']);
 ?>
<script language="javascript" type="text/javascript">
function f2()
{
window.close();
}ser
function f3()
{
window.print(); 
}
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Order Tracking Details</title>
<link rel='stylesheet' type='text/css' href='css/invoice.css' />
	<link rel='stylesheet' type='text/css' href='css/print.css' media="print" />
	<script type='text/javascript' src='js/jquery-1.3.2.min.js'></script>
	<script type='text/javascript' src='js/example.js'></script>


</head>
<body>

	<div id="page-wrap">

		<div id="header" style="padding-bottom:20px;">ORDER DETAILS</div>
		
		<div id="identity">
		<?php
		$rt = mysqli_query($con,"SELECT orders.*,users.name,users.contactno,users.shippingAddress
	,users.shippingCity,users.shippingState,users.shippingPincode,products.productName,
	products.productDescription,products.productCompany,
products.productPrice,products.productImage1,products.shippingCharge FROM ((
	orders inner join users on orders.userId=users.id) inner join products
		on orders.productId = products.id) WHERE orders.id='$oid'");
     while($num=mysqli_fetch_array($rt))
     {
		 ?>
			
            <div id="address">
			
			<?php echo $num['name'];?><br/>
			<?php echo $num['shippingAddress']; ?><br/>
			<?php echo $num['shippingCity'].", ".$num['shippingState']." ".$num['shippingPincode']; ?>
			<br/>
			<?php echo "Phone: ".$num['contactno']; ?>
			</div>
	 <?php }?>
            <div id="logo">
              <img height="100px;"  src="img/logo.png" alt="logo" />
            </div>
		
		</div>
		
		<div style="clear:both"></div>
		
		<div id="customer">

            <textarea id="customer-title">Arkon Pvt. Ltd.</textarea>

            <table id="meta">
                
				
				<?php 
					$ret = mysqli_query($con,"SELECT * FROM ordertrackhistory WHERE orderId='$oid'");
					$num=mysqli_num_rows($ret);
					if($num>0)
					{
					while($row=mysqli_fetch_array($ret))
						  {
							?>
							<tr height="20">
							  <td class="fontkink1" ><b>At Date:</b></td>
							  <td  class="fontkink"><?php echo $row['postingDate'];?></td>
							</tr>
							 <tr height="20">
							  <td  class="fontkink1"><b>Status:</b></td>
							  <td  class="fontkink"><?php echo $row['status'];?></td>
							</tr>
							 <tr height="20">
							  <td  class="fontkink1"><b>Remark:</b></td>
							  <td  class="fontkink"><?php echo $row['remark'];?></td>
							</tr>
							<tr>
							  <td colspan="2"><hr /></td>
							</tr>
					<?php } 
					}
					else{
					
					
					?>
				<?php  }
$st='Delivered';
   $rt = mysqli_query($con,"SELECT orders.*,users.name,users.contactno,users.shippingAddress
	,users.shippingCity,users.shippingState,users.shippingPincode,products.productName,
	products.productDescription,products.productCompany,
products.productPrice,products.productImage1,products.shippingCharge FROM ((
	orders inner join users on orders.userId=users.id) inner join products
		on orders.productId = products.id) WHERE orders.id='$oid'");
     while($num=mysqli_fetch_array($rt))
     {
     $currrentSt=$num['orderStatus'];
	 ?>
	 
				<tr>
                    <td class="meta-head">Order #</td>
                    <td><textarea><?php echo $oid; ?></textarea></td>
                </tr>
                <tr>

                    <td class="meta-head">Date</td>
                    <td><?php echo DateTime::createFromFormat("Y-m-d H:i:s", $num['orderDate'])->format("d/m/Y"); ?></td>
                </tr>
                <tr>
                    <td class="meta-head">Amount Due</td>
                    <td><div class="due"><?php echo "$".$num['productPrice']; ?></div></td>
                </tr>

            </table>
		
		</div>
		
		<table id="items">
		
		  <tr>
		      <th>Item</th>
		      <th>Product Name</th>
		      <th>Unit Cost</th>
		      <th>Quantity</th>
		      <th>Price</th>
		  </tr>
		  
		  <tr class="item-row">
		      <td class="item-name"><div><img width="50px" height="80px" src="admin/productImages/<?php echo $num['productId']."/".$num['productImage1']; ?>"/></div></td>
		      <td class="name"><div><?php echo $num['productName']; ?></div></td>
		      <td><textarea class="cost"><?php echo "$".$num['productPrice']; ?></textarea></td>
		      <td><textarea class="qty"><?php echo $num['quantity']; ?></textarea></td>
		      <td><span class="price"> <?php echo "$".(($num['quantity']*$num['productPrice']))?></span></td>
		  </tr>
		  
		  <tr id="hiderow">
		    <td colspan="5"></td>
		  </tr>
		  
		  <tr>
		      <td colspan="2" class="blank"> </td>
		      <td colspan="2" class="total-line">Subtotal</td>
		      <td class="total-value"><div id="subtotal"><?php echo "$".(($num['quantity']*$num['productPrice']))?></div></td>
		  </tr>
		  <tr>

		      <td colspan="2" class="blank"> </td>
		      <td colspan="2" class="total-line">Shipping Charge</td>
		      <td class="total-value"><div id="total"><?php echo "$".$num['shippingCharge']; ?></div></td>
		  </tr>
		  
		  <tr>
		      <td colspan="2" class="blank"> </td>
		      <td colspan="2" class="total-line balance">Balance Due</td>
		      <td class="total-value balance"><div class="due"><?php echo "$".(($num['quantity']*$num['productPrice'])+$num['shippingCharge'])?></div></td>
		  </tr>
		  
		
		</table>
		
		
	
	</div>
	<?php
   }
     if($st==$currrentSt)
     { ?>
 <tr><td colspan="2"><b>
      Product Delivered successfully </b></td>
   <?php } 
	else {
		?>
		
		<?php
	}
  ?>
</body>
</html>

     