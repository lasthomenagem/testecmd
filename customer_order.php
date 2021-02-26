<?php
//require "config/constants.php";

session_start();
if(!isset($_SESSION["uid"])){
	header("location:index.php");
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>AcheiPneus</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		
		<link rel="stylesheet" type="text/css" href="style.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous">
		<link rel="stylesheet" href="styles.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<style>
			table tr td {padding:10px;}
		</style>
	</head>
<body>
	<div class="navbar navbar-fixed-top" style="background-color: #ec6707;">
		<div class="container-fluid">	
		<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse" aria-expanded="false">
					<span class="sr-only"> navigation toggle</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand ml-5 mb-3" style="max-width: 75%; color: white;"><img class="" src="./img/logo.png" id="imgbrand"></a>
			</div>
			<ul class="nav navbar-nav">
				<li><a class="mt-3 zoom1" href="index.php" style="color: white; font-size: 1.7rem; background-color:transparent"><span class="glyphicon glyphicon-home" style="color: white;"></span>&nbsp Início</a></li>
				<li><a class="mt-3 zoom1" href="index.php" style="color: white; font-size: 1.7rem; background-color:transparent"><span class="glyphicon glyphicon-earphone" style="color: white;"></span>&nbsp Televendas | (11) 97485-3258</a></li>
				<li><a class="mt-3 zoom1" href="quemsomos.php" style="color: white; font-size: 1.7rem; background-color:transparent"><i class="fas fa-users text-white"></i>&nbsp Quem somos</a></li>
				<li><a class="mt-3 zoom1" href="./politicadeprivacidade.php" style="color: white; font-size: 1.7rem; background-color:transparent"><i class="fas fa-lock text-white"></i>&nbsp Política de Privacidade</a></li>
			</ul>
		</div>
	</div>
	<p><br/></p>
	<p><br/></p>
	<p><br/></p>
	<div class="container-fluid">
	
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-default">
					<div class="panel-heading"></div>
					<div class="panel-body">
						<h1>Seus pedidos aparecerão aqui.</h1>
						<hr/>
						<?php
							include_once("db.php");
							$user_id = $_SESSION["uid"];
							$orders_list = "SELECT o.order_id,o.user_id,o.product_id,o.qty,o.trx_id,o.p_status,p.product_title,p.product_price,p.product_image FROM orders o,products p WHERE o.user_id='$user_id' AND o.product_id=p.product_id";
							$query = mysqli_query($con,$orders_list);
							if (mysqli_num_rows($query) > 0) {
								while ($row=mysqli_fetch_array($query)) {
									?>
										<div class="row">
											<div class="col-md-6">
												<img style="float:right;" src="product_images/<?php echo $row['product_image']; ?>" class="img-responsive img-thumbnail"/>
											</div>
											<div class="col-md-6">
												<table>
													<tr><td>Nome do Produto</td><td><b><?php echo $row["product_title"]; ?></b> </td></tr>
													<tr><td>Valor do produto</td><td><b><?php echo  CURRENCY." ".$row["product_price"]; ?></b></td></tr>
													<tr><td>Quantidade</td><td><b><?php echo $row["qty"]; ?></b></td></tr>
													<tr><td>ID da transação</td><td><b><?php echo $row["trx_id"]; ?></b></td></tr>
												</table>
											</div>
										</div>
									<?php
								}
							}
						?>
						
					</div>
					<div class="panel-footer"></div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>
















































