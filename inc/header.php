<?php 
    include 'lib/session.php';
     Session::init();
 ?>
<?php
	include_once ('lib/database.php');
	include_once ('helpers/format.php');
	spl_autoload_register(function($className){include_once "classes/".$className.".php";});

	$db = new database();
	$fm = new format();
	$ct = new cart ();
	$us = new user();
	$cat =new category();
	$product = new product();
	$cs = new customer();
	$dir = new direct();
	
?>
<?php
  header("Cache-Control: no-cache, must-revalidate");
  header("Pragma: no-cache"); 
  header("Expires: Sat, 26 Jul 1997 05:00:00 GMT"); 
  header("Cache-Control: max-age=2592000");
?>

<!DOCTYPE php>
<head>
<title>Shop BKA</title>
<meta http-equiv="Content-Type" content="text/php; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/menu.css" rel="stylesheet" type="text/css" media="all"/>
<script src="js/jquerymain.js"></script>
<script src="js/script.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script> 
<script type="text/javascript" src="js/nav.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script> 
<script type="text/javascript" src="js/nav-hover.js"></script>
<link href='http://fonts.googleapis.com/css?family=Monda' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Doppio+One' rel='stylesheet' type='text/css'>
<script type="text/javascript">
  $(document).ready(function($){
    $('#dc_mega-menu-orange').dcMegaMenu({rowItems:'4',speed:'fast',effect:'fade'});
  });
</script>
<style>
	.hust{
		height: 130px;
	}
</style>
</head>
<body>
  <div class="wrap">
		<div class="header_top">
			<div class="logo">				
				<a href="index.php"><img class="hust" src="images/hustlogo.png" alt="" /></a>
			</div>

			  <div class="header_top_right">
			    <div class="search_box">
				    <form action="search.php" method="get">
				    	<input type="text" name="fsearch" value="T??m ki???m s???n ph???m" onfocus="this.value ='';" onblur="if (this.value == '') {this.value = 'T??m ki???m s???n ph???m';}"><input type="submit" name="search" value="T??m ki???m">
				    </form>
			    </div>
			    <div class="shopping_cart">
					<div class="cart">
						<a href="#" title="View my shopping cart" rel="nofollow">
								<span class="cart_title"></span>
								
								<span class="no_product">
									
									<?php
									$check_cart = $ct->check_cart();
									if ($check_cart)
									{
										$qty = session::get("qty");
										echo $qty;
									} 
									else
										echo 'Tr???ng';
									?>
								</span>

							</a>
						</div>
			      </div>
			      <?php
			      if(isset($_GET['id'])){
			      	$delcart = $ct->del_all_data_cart();
			      	Session::destroy();
			      }
			      ?>

		   <div class="login">
		   	<?php
			      $login_check = Session::get('customer_login');
			      if ($login_check == false)
			      {
			      	echo '<a href="login.php">????ng nh???p</a></div>';
			      }
			      else
			      	echo '<a href="?id='.Session::get('customer_id').'">????ng xu???t</a></div>';
			       ?>
		 <div class="clear"></div>
	 </div>
	 <div class="clear"></div>
 </div>
<div class="menu">
	<ul id="dc_mega-menu-orange" class="dc_mm-orange">
	  <li><a href="index.php">Trang ch???</a></li>
	  <li><a href="introduce.php">Gi???i thi???u</a></li>
	  <li><a href="products.php">S???n ph???m</a> </li>
	  <li><a href="cart.php">Gi??? h??ng</a></li>
	  <li><a href="contact.php">Li??n h???</a> </li>
	  <!-- <li><a href="direct.php">H?????ng d???n</a> </li> -->
	  <?php
	  $login_check = Session::get('customer_login');
	  if($login_check==false)
	  {
	  	echo '';
	  }
	  else {
	  	echo '<li><a href="profile.php">Th??ng tin kh??ch h??ng</a> </li>';
	  	echo '<li><a href="orderdetails.php">????n h??ng</a> </li>';
	  }
	  ?>

	  <div class="clear"></div>
	</ul>
</div>
