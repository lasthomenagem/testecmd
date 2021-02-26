

<?php



session_start();
$ip_add = getenv("REMOTE_ADDR");
include "db.php";
include "./vendor/autoload.php";

if(isset($_POST["category"])){
	$category_query = "SELECT * FROM categories";
	$run_query = mysqli_query($con,$category_query) or die(mysqli_error($con));
	echo "
		<div class='nav nav-pills nav-stacked '>
			<li class='active'><a href='#' style='background-color: #ec6707; border-radius:35px; margin-top: -1px'><h4>Categorias</h4></a></li>
	";
	if(mysqli_num_rows($run_query) > 0){
		while($row = mysqli_fetch_array($run_query)){
			$cid = $row["cat_id"];
			$cat_name = $row["cat_title"];
			echo "
					<li><a href='#' class='category' cid='$cid' style='color:darkmagenta' id='catbut'>$cat_name</a></li>
			";
		}
		echo "</div>";
	}
}
if(isset($_POST["brand"])){
	$brand_query = "SELECT * FROM brands";
	$run_query = mysqli_query($con,$brand_query);
	echo "
		<div class='nav nav-pills nav-stacked'>
			<li class='active'><a href='#'  style='background-color: #ec6707; border-radius:35px'><h4>Marcas</h4></a></li>
	";
	if(mysqli_num_rows($run_query) > 0){
		while($row = mysqli_fetch_array($run_query)){
			$bid = $row["brand_id"];
			$brand_name = $row["brand_title"];
			echo "
					<li><a href='#' class='selectBrand' bid='$bid' style='color:darkmagenta'>$brand_name</a></li>
			";
		}
		echo "</div>";
	}
}
if(isset($_POST["page"])){
	$sql = "SELECT * FROM products";
	$run_query = mysqli_query($con,$sql);
	$count = mysqli_num_rows($run_query);
	$pageno = ceil($count/9);
	for($i=1;$i<=$pageno;$i++){
		echo "
			<li><a href='#' page='$i' id='page'>$i</a></li>
		";
	}
}



//carousel do cart
if(isset($_POST["getProduct1"])){
	$limit = 3;
	if(isset($_POST["setPage"])){
		$pageno = $_POST["pageNumber"];
		$start = ($pageno * $limit) - $limit;
	}else{
		$start = 4;
	}
	$product_query = "SELECT * FROM products LIMIT $start,$limit";
	$run_query = mysqli_query($con,$product_query);
	if(mysqli_num_rows($run_query) > 0){
		while($row = mysqli_fetch_array($run_query)){
			$pro_id    = $row['product_id'];
			$pro_cat   = $row['product_cat'];
			$pro_brand = $row['product_brand'];
			$pro_title = $row['product_title'];
			$pro_price = $row['product_price'];
			$pro_image = $row['product_image'];
			$pro_prazo = $pro_price / 12;
			$processamento = number_format($pro_prazo, 2);
			echo "
				<div class='col-md-4 w-25 justify-content-center'>
							<div class='panel panel-info justify-content-center' style='justify-content:center;min-height:70vh; border-radius: 20px; border-width: 5px;'>
								
								<div class='panel-body'>
								<a href='#'><img class='zoom' src='product_images/$pro_image' style='width:100%; height:100%;'/></a>
								</div>

								<div class='panel-heading text-center' style='text-transform:uppercase; font-weight: bold; font-size: 1.6rem; color: #ec6707; height:10vh'><strong>$pro_title</strong></div>

								<div class='my-3 panel-heading text-center' style='float-center; color: rgb(27, 173, 27); font-size: 2.3rem;'><strong>R$ $pro_price.00</strong>
								<h5 class='text-center' style='text-align: center;color:gray'>Ou 12x de R$ $processamento</h5></div>
									<button pid='$pro_id' style='float:center; height:7vh; background-color: #ec6707;border-radius: 15px' id='product' class='btn btn-success btn-xs text-center w-100 '><i class='fas fa-cart-plus'></i>&nbspAdicionar ao carrinho</button>
								</div>
							</div>
						</div>
			";
		}
	}
}

























if(isset($_POST["getProduct"])){
	$limit = 9;
	if(isset($_POST["setPage"])){
		$pageno = $_POST["pageNumber"];
		$start = ($pageno * $limit) - $limit;
	}else{
		$start = 0;
	}
	$product_query = "SELECT * FROM products LIMIT $start,$limit";
	$run_query = mysqli_query($con,$product_query);
	if(mysqli_num_rows($run_query) > 0){
		while($row = mysqli_fetch_array($run_query)){
			$pro_id    = $row['product_id'];
			$pro_cat   = $row['product_cat'];
			$pro_brand = $row['product_brand'];
			$pro_title = $row['product_title'];
			$pro_price = $row['product_price'];
			$pro_image = $row['product_image'];
			$pro_prazo = $pro_price / 12;
			$processamento = number_format($pro_prazo, 2);
			echo "
				<div class='col-md-4'>
							<div class='panel panel-info' style='min-height:70vh; border-radius: 20px; border-width: 5px;border-color:darkmagenta'>
								
								<div class='panel-body'>
								<a href='#'><img class='zoom' src='product_images/$pro_image' style='width:100%; height:100%;'/></a>
								</div>

								<div class='panel-heading text-center' style='text-transform:uppercase; font-weight: bold; font-size: 1.6rem; color: #ec6707; height:10vh'><strong>$pro_title</strong></div>

								<div class='my-3 panel-heading text-center' style='float-center; color: rgb(27, 173, 27); font-size: 2.3rem;'><strong>R$ $pro_price.00</strong>
								<h5 class='text-center' style='text-align: center;color:gray'>Ou 12x de R$ $processamento</h5></div>
									<button pid='$pro_id' style='float:center; height:7vh; background-color: #ec6707;border-radius: 15px' id='product' class='btn btn-success btn-xs text-center w-100 '><i class='fas fa-cart-plus'></i>&nbspAdicionar ao carrinho</button>
								</div>
							</div>
						</div>	
			";
		}
	}
}
if(isset($_POST["get_seleted_Category"]) || isset($_POST["selectBrand"]) || isset($_POST["search"])){
	if(isset($_POST["get_seleted_Category"])){
		$id = $_POST["cat_id"];
		$sql = "SELECT * FROM products WHERE product_cat = '$id'";
	}else if(isset($_POST["selectBrand"])){
		$id = $_POST["brand_id"];
		$sql = "SELECT * FROM products WHERE product_brand = '$id'";
	}else {
		$keyword = $_POST["keyword"];
		$sql = "SELECT * FROM products WHERE product_keywords LIKE '%$keyword%'";
	}
	
	$run_query = mysqli_query($con,$sql);
	while($row=mysqli_fetch_array($run_query)){
			$pro_id    = $row['product_id'];
			$pro_cat   = $row['product_cat'];
			$pro_brand = $row['product_brand'];
			$pro_title = $row['product_title'];
			$pro_price = $row['product_price'];
			$pro_image = $row['product_image'];
			$pro_prazo = $pro_price / 12;
			$processamento = number_format($pro_prazo, 2);
			echo "
				<div class='col-md-4'>
				<div class='panel panel-info' style='min-height:70vh; border-radius: 20px; border-width: 5px;border-color:darkmagenta'>
								
								<div class='panel-body'>
								<a href='#' id='sala'><img class='zoom' src='product_images/$pro_image' style='width:100%; height:100%;'/></a>
								</div>

								<div class='panel-heading text-center' style='text-transform:uppercase; font-weight: bold; font-size: 1.6rem; color: #ec6707; height:10vh'><strong>$pro_title</strong></div>

								<div class='my-3 panel-heading text-center' style='float-center; color: rgb(27, 173, 27); font-size: 2.3rem;'><strong>R$ $pro_price.00</strong><h5 class='text-center' style='text-align: center;color:gray'>Ou 12x de R$ $processamento</h5></div>
								<button pid='$pro_id' style='float:center; height:7vh; background-color: #ec6707;border-radius: 15px' id='product' class='btn btn-success btn-xs text-center w-100 '><i class='fas fa-cart-plus'></i>&nbspAdicionar ao carrinho</button>
								</div>
							</div>
						</div>		
			";
		}
	}
	


	if(isset($_POST["addToCart"])){
		

		$p_id = $_POST["proId"];
		

		if(isset($_SESSION["uid"])){

		$user_id = $_SESSION["uid"];

		$sql = "SELECT * FROM cart WHERE p_id = '$p_id' AND user_id = '$user_id'";
		$run_query = mysqli_query($con,$sql);
		$count = mysqli_num_rows($run_query);
		if($count > 0){
			echo "
				<div class='alert alert-warning'>
						<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
						<b>Produto já adicionado ao carrinho, continue comprando..!</b>
				</div>
			";//not in video
		} else {
			$sql = "INSERT INTO `cart`
			(`p_id`, `ip_add`, `user_id`, `qty`) 
			VALUES ('$p_id','$ip_add','$user_id','1')";
			if(mysqli_query($con,$sql)){
				echo "
					<div class='alert alert-success'>
						<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
						<b>Produto foi adicionado..!</b>
					</div>
				";
			}
		}
		}else{
			$sql = "SELECT id FROM cart WHERE ip_add = '$ip_add' AND p_id = '$p_id' AND user_id = -1";
			$query = mysqli_query($con,$sql);
			if (mysqli_num_rows($query) > 0) {
				echo "
					<div class='alert alert-warning'>
							<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
							<b>O produto já foi adicionado ao carrinho..!</b>
					</div>";
					exit();
			}
			$sql = "INSERT INTO `cart`
			(`p_id`, `ip_add`, `user_id`, `qty`) 
			VALUES ('$p_id','$ip_add','-1','1')";
			if (mysqli_query($con,$sql)) {
				echo "
					<div class='alert alert-success'>
						<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
						<b>Produto adicionado ao carrinho..!</b>
					</div>
				";
				exit();
			}
			
		}
		
		
		
		
	}

//Count User cart item
if (isset($_POST["count_item"])) {
	//When user is logged in then we will count number of item in cart by using user session id
	if (isset($_SESSION["uid"])) {
		$sql = "SELECT COUNT(*) AS count_item FROM cart WHERE user_id = $_SESSION[uid]";
	}else{
		//When user is not logged in then we will count number of item in cart by using users unique ip address
		$sql = "SELECT COUNT(*) AS count_item FROM cart WHERE ip_add = '$ip_add' AND user_id < 0";
	}
	
	$query = mysqli_query($con,$sql);
	$row = mysqli_fetch_array($query);
	echo $row["count_item"];
	exit();
}
//Count User cart item







//Get Cart Item From Database to Dropdown menu
if (isset($_POST["Common"])) {

	if (isset($_SESSION["uid"])) {
		//When user is logged in this query will execute
		$sql = "SELECT a.product_id,a.product_title,a.product_price,a.product_image,b.id,b.qty FROM products a,cart b WHERE a.product_id=b.p_id AND b.user_id='$_SESSION[uid]'";
	}else{
		//When user is not logged in this query will execute
		$sql = "SELECT a.product_id,a.product_title,a.product_price,a.product_image,b.id,b.qty FROM products a,cart b WHERE a.product_id=b.p_id AND b.ip_add='$ip_add' AND b.user_id < 0";
	}
	$query = mysqli_query($con,$sql);
	if (isset($_POST["getCartItem"])) {
		//display cart item in dropdown menu
		if (mysqli_num_rows($query) > 0) {
			$n=0;
			while ($row=mysqli_fetch_array($query)) {
				$n++;
				$product_id = $row["product_id"];
				$product_title = $row["product_title"];
				$product_price = $row["product_price"];
				$product_image = $row["product_image"];
				$cart_item_id = $row["id"];
				$qty = $row["qty"];
				echo '
					<div class="row">
						<div class="col-md-3">'.$n.'</div>
						<div class="col-md-3"><img class="img-responsive" src="product_images/'.$product_image.'" /></div>
						<div class="col-md-3 cct">'.$product_title.'</div>
						<div class="col-md-3 cpp">'.CURRENCY.''.$product_price.'</div>
					</div>
					<hr>';
				
			}
			?>
				<a style="float:right; " href="cart.php" class="btn btn-warning">Editar carrinho / Checkout&nbsp;&nbsp;<span class="glyphicon glyphicon-edit"></span></a>
			<?php
			exit();
		}
	}
	$_SESSION['price_total'] = 0;
	if (isset($_POST["checkOutDetails"])) {
		if (mysqli_num_rows($query) > 0) {
			//display user cart item with "Ready to checkout" button if user is not login
			echo "<form method='post' action='login_form.php'>";
				$n=0;
				while ($row=mysqli_fetch_array($query)) {
					$n++;
					$product_id = $row["product_id"];
					$product_title = $row["product_title"];
					$product_price = $row["product_price"];
					$product_image = $row["product_image"];
					$cart_item_id = $row["id"];
					$qty = $row["qty"];

					echo 
						'<hr>
						<div class="row mt-2">
								<div class="col-md-2">
									<div class="btn-group">
										<a href="#" remove_id="'.$product_id.'" class="btn btn-danger remove"><span class="glyphicon glyphicon-trash"></span></a>
										<a href="#" update_id="'.$product_id.'" class="btn update" style="background-color: green; color:white"><span class="glyphicon glyphicon-ok-sign"></span></a>
									</div>
								</div>
								<input type="hidden" name="product_id[]" value="'.$product_id.'"/>
								<input type="hidden" name="" value="'.$cart_item_id.'"/>
								<div class="col-md-2"><img class="img-responsive" src="product_images/'.$product_image.'"></div>
								<div class="col-md-2 text-tittle">'.$product_title.'</div>
								
								<div class="col-md-2"><p class="hol mt-2" style="color: darkmagenta; font-size:1.4rem">Insira a quantidade desejada:</p><input type="text" class="form-control qty" value="'.$qty.'" ></div>

								<div class="col-md-2 "><p class="hol mt-2" style="color: darkmagenta; font-size:1.4rem">Valor do Produto</p><input type="text" class="form-control price" value="'.$product_price.'" readonly="readonly"></div>

								<div class="col-md-2 "><p class="hol mt-2" style="color: darkmagenta; font-size:1.4rem">Valor Total do produto</p><input type="text" class="form-control price total" value="'.$product_price.'" readonly="readonly"></div>
							</div>';
				$_SESSION['price_total'] += ($product_price * $qty);

				}
				echo '<hr>
				<div class="row">
							<div class="col-md-8"></div>
							<div class="col-md-4">
								<b class="net_total" style="font-size:20px;"> </b>
					</div>';
				if (!isset($_SESSION["uid"])) {
					
						
					
				}else if(isset($_SESSION["uid"])){
					//Paypal checkout form
					
					
						




								}
							
				}
			}
	}
	
	




//Remove Item From cart
if (isset($_POST["removeItemFromCart"])) {
	$remove_id = $_POST["rid"];
	if (isset($_SESSION["uid"])) {
		$sql = "DELETE FROM cart WHERE p_id = '$remove_id' AND user_id = '$_SESSION[uid]'";
	}else{
		$sql = "DELETE FROM cart WHERE p_id = '$remove_id' AND ip_add = '$ip_add'";
	}
	if(mysqli_query($con,$sql)){
		echo "<div class='alert alert-danger'>
						<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
						<b>Produto removido do carrinho..!</b>
				</div>";
		exit();
	}
}


//Update Item From cart
if (isset($_POST["updateCartItem"])) {
	$update_id = $_POST["update_id"];
	$qty = $_POST["qty"];
	if (isset($_SESSION["uid"])) {
		$sql = "UPDATE cart SET qty='$qty' WHERE p_id = '$update_id' AND user_id = '$_SESSION[uid]'";
	}else{
		$sql = "UPDATE cart SET qty='$qty' WHERE p_id = '$update_id' AND ip_add = '$ip_add'";
	}

	if($query = mysqli_query($con,$sql)){
		echo "<div class='alert alert-info'>
						<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>
						<b>Produto atualizado</b>
				</div>";
	}

		exit();
}




?>






