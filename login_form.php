<?php
#this is Login form page , if user is already logged in then we will not allow user to access this page by executing isset($_SESSION["uid"])
#if below statment return true then we will send user to their profile.php page
if (isset($_SESSION["uid"])) {
	header("location:profile.php");
}
//in action.php page if user click on "ready to checkout" button that time we will pass data in a form from action.php page
if (isset($_POST["login_user_with_product"])) {
	//this is product list array
	$product_list = $_POST["product_id"];
	//here we are converting array into json format because array cannot be store in cookie
	$json_e = json_encode($product_list);
	//here we are creating cookie and name of cookie is product_list
	setcookie("product_list",$json_e,strtotime("+1 day"),"/","","",TRUE);

}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>AcheiPneus - Login</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>
<body>
<div class="wait overlay">
	<div class="loader"></div>
</div>
<div class="navbar navbar-fixed-top" style="background-color: #ec6707;">
		<div class="container-fluid">	
		<div class="navbar-header">
		<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse" aria-expanded="false" style="background-color:white; margin-top:5vh">
					<span class="sr-only"> navigation toggle</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand ml-5 mb-3" style="max-width: 75%; color: white;"><img class="" src="./img/logo.png" id="imgbrand"></a>
			</div>
		<div class="collapse navbar-collapse" id="collapse">
			<ul class="nav navbar-nav">
				<li><a class="mt-3 zoom1" href="index.php" style="color: white; font-size: 1.7rem; background-color:transparent"><span class="glyphicon glyphicon-home" style="color: white;"></span>&nbsp Início</a></li>
				<li><a class="mt-3 zoom1" href="index.php" style="color: white; font-size: 1.7rem; background-color:transparent"><span class="glyphicon glyphicon-earphone" style="color: white;"></span>&nbsp Televendas | (11) 97485-3258</a></li>
				<li><a class="mt-3 zoom1" href="./quemsomos.php" style="color: white; font-size: 1.7rem; background-color:transparent"><i class="fas fa-users text-white"></i>&nbsp Quem somos</a></li>
				<li><a class="mt-3 zoom1" href="./politicadeprivacidade.php" style="color: white; font-size: 1.7rem; background-color:transparent"><i class="fas fa-lock text-white"></i>&nbsp Política de Privacidade</a></li>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">

			<li><a href="cart.php" class="xablau" style="color:white" ><span class="glyphicon glyphicon-shopping-cart" style="color: white;"></span>&nbsp Carrinho&nbsp <span class="badge">0</span></a></li>

<li><a href="#" class="dropdown-toggle mt-3 hos" data-toggle="dropdown" style="color: white; font-size: 1.7rem">
				
				<span class="glyphicon glyphicon-shopping-cart" style="color: white;"></span>&nbsp Carrinho&nbsp <span class="badge">0</span></a>

					<div class="dropdown-menu" style="width:400px;">
						<div class="panel panel-success">
							<div class="panel-heading">
								<div class="row">
									<div class="col-md-3">Quantidade</div>
									<div class="col-md-3">Imagem</div>
									<div class="col-md-3">Nome do produto</div>
									<div class="col-md-3">Preço <?php echo CURRENCY; ?></div>
								</div>
							</div>
							<div class="panel-body">
								<div id="cart_product">
								<!--<div class="row">
									<div class="col-md-3">Sl.No</div>
									<div class="col-md-3">Product Image</div>
									<div class="col-md-3">Product Name</div>
									<div class="col-md-3">Price in $.</div>
								</div>-->
								</div>
							</div>
							<div class="panel-footer"></div>
						</div>
					</div>
				</li>
				<li><a href="#" class="dropdown-toggle mt-3" data-toggle="dropdown" style="color: white;"><span class="glyphicon glyphicon-user" style="color: white; font-size: 1.7rem"></span>&nbsp Acessar</a>
					<ul class="dropdown-menu">

						<div style="width:300px;">
							<div class="panel panel-primary">
								<div class="panel-heading">Login</div>
								<div class="panel-heading">
									<form onsubmit="return false" id="login">
										<label for="email">Email</label>
										<input type="email" class="form-control" name="email" id="email" required/>
										<label for="email">Senha</label>
										<input type="password" class="form-control" name="password" id="password" required/>
										<p><br/></p>
										<a href="#" style="color:white; list-style:none;">Esqueceu a senha?</a><input type="submit" class="btn btn-success" style="float:right;"><br>
										<a href="customer_registration.php?register=1" style="color:white; list-style:none;">Criar conta</a>
									</form>
								</div>
								<div class="panel-footer" id="e_msg"></div>
							</div>
						</div>
					</ul>
				</li>
			</ul>
		</div>
	</div>
</div>	
	<p><br/></p>
	<p><br/></p>
	<p><br/></p>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8" id="signup_msg">
				<!--Alert from signup form-->
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<div class="panel panel-primary">
					<div class="panel-heading">Acesso</div>
					<div class="panel-body">
						<!--User Login Form-->
						<form onsubmit="return false" id="login">
							<label for="email">Email</label>
							<input type="email" class="form-control" name="email" id="email" required/>
							<label for="email">Senha</label>
							<input type="password" class="form-control" name="password" id="password" required/>
							<p><br/></p>
							<a href="#" style="color:#333; list-style:none;">Esqueceu a senha?</a><input type="submit" class="btn btn-success" style="float:right;" Value="Login">
							<!--If user dont have an account then he/she will click on create account button-->
							<div><a href="customer_registration.php?register=1">Criar nova conta</a></div>						
						</form>
				</div>
				<div class="panel-footer"><div id="e_msg"></div></div>
			</div>
		</div>
		<div class="col-md-4"></div>
	</div>
</body>
</html>






















