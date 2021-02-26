<?php
if (isset($_GET["register"])) {
	
define('CURRENCY', 'R$');
	?>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>AcheiPneus - Registro</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<link rel="stylesheet" type="text/css" href="style.css">
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous">
		<link rel="stylesheet" href="styles.css">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script>
		function funcao1()
		{
		alert("Site passou na verificação de segurança Compre&Confie!");
		}
		function funcao2()
		{
		alert("Nota Ouro na Qualidade de Atendimento e Segurança de pagamento!");
		}
		function funcao3()
		{
		alert("Este site possue o selo de segurança Let's Encrypt e está atualizado em questões de segurança.");
		}
		function funcao4()
		{
		alert("Este site passou na verificação de segurança do GOOGLE.");
		}
		</script>
	</head>
<body>
<div class="wait overlay">
	<div class="loader"></div>
</div>
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
		<div class="collapse navbar-collapse" id="collapse">
			<ul class="nav navbar-nav">
				<li><a class="mt-3 zoom1" href="index.php" style="color: white; font-size: 1.7rem; background-color:transparent"><span class="glyphicon glyphicon-home" style="color: white;"></span>&nbsp Início</a></li>
				<li><a class="mt-3 zoom1" href="index.php" style="color: white; font-size: 1.7rem; background-color:transparent"><span class="glyphicon glyphicon-earphone" style="color: white;"></span>&nbsp Televendas | (11) 97485-3258</a></li>
				<li><a class="mt-3 zoom1" href="quemsomos.php" style="color: white; font-size: 1.7rem; background-color:transparent"><i class="fas fa-users text-white"></i>&nbsp Quem somos</a></li>
				<li><a class="mt-3 zoom1" href="./politicadeprivacidade.php" style="color: white; font-size: 1.7rem; background-color:transparent"><i class="fas fa-lock text-white"></i>&nbsp Política de Privacidade</a></li>
			</ul>
			
			<ul class="nav navbar-nav navbar-right">

				<li><a href="#" class="dropdown-toggle mt-3" data-toggle="dropdown" style="color: white; font-size: 1.7rem">
				
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
	<div class="container-fluid mt-4">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8" id="signup_msg">
				<!--Alert from signup form-->
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-primary" style="border-color: #ec6707;">
					<div class="panel-heading" style="background-color: #ec6707">Registro de conta</div>
					<div class="panel-body">
					
					<form id="signup_form" onsubmit="return false">
						<div class="row">
							<div class="col-md-6">
								<label for="f_name">Nome</label>
								<input type="text" id="f_name" name="f_name" class="form-control">
							</div>
							<div class="col-md-6">
								<label for="f_name">Sobrenome</label>
								<input type="text" id="l_name" name="l_name"class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="email">Email</label>
								<input type="text" id="email" name="email"class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="password">Senha</label>
								<input type="password" id="password" name="password"class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="repassword">Redigite a senha</label>
								<input type="password" id="repassword" name="repassword"class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="mobile">Telefone</label>
								<input type="text" id="mobile" name="mobile"class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="address1">Endereço de entrega 1</label>
								<input type="text" id="address1" name="address1"class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<label for="address2">Endereço de Entrega 2</label>
								<input type="text" id="address2" name="address2"class="form-control">
							</div>
						</div>
						<p><br/></p>
						<div class="row">
							<div class="col-md-12">
								<input style="width:100%;" value="Cadastrar" type="submit" name="signup_button"class="btn btn-success btn-lg">
							</div>
						</div>
						
					</div>
					</form>
					<div class="panel-footer"></div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>



<hr>



	<div class="container">

        <div class="row my-5">

          <div class="col-lg-3 mt-3 ">

            <h5 class="ml-5 text-center" style="color: gray;"><strong>COMPRE COM</h5>
            <h4 class="ml-5 text-center">SEGURANÇA</strong></h4>

          </div>
          <div class="col-lg-2 text-center">

            <img class="w-50" onclick="funcao1(1)" src="./img/Seguranca/108742.png" id="seg1">

          </div>
          <div class="col-lg-2 text-center">

            <img class="w-50" onclick="funcao2()" src="./img/Seguranca/medalha_ouro_otima.png" id="seg1">

          </div>
          <div class="col-lg-3 text-center">

            <img  class="w-50" onclick="funcao3()" src="./img/Seguranca/download.png" id="seg1">

          </div>
          <div class="col-lg-2 text-center">

            <img class="w-75 mt-2 ml-3" onclick="funcao4()" src="./img/Seguranca/selo-google-site-verificado.png" id="seg1">

          </div>

        </div>

        <div class="row">

          <div class="col-lg-3 mt-2">

            <h5 class="ml-5 text-center" style="color: gray;"><strong>FORMAS DE</h5>
            <h4 class="ml-5 text-center">PAGAMENTO</strong></h4>

          </div>
          <div class="col-lg-4 text-center">

            <img class="w-50" src="./img/mercadopago.png">

          </div>
		  <div class="col-lg-4 text-center">


		  </div>

        </div>

      </div>

      <div class="container-fluid" style="background-color: black;">

        <div class="container">

          <div class="row">

            <div class="col-lg-3 my-3 text-center">

			<a href="https://www.facebook.com/acheipneusoficial" title="Siga no Facebook"><i class="fab fa-facebook text-light fa-2x"></i></a>

            </div>
            <div class="col-lg-2 my-3 text-center">

			<a href="https://www.instagram.com/acheipneus/" title="Siga no Instagram"><i class="fab fa-instagram text-light fa-2x"></i></a>
              
            </div>
            <div class="col-lg-2 my-3 text-center">

			<a href="http://wa.me/5547999995584" title="Chame no Whatsapp"><i class="fab fa-whatsapp text-light fa-2x"></i> </a>
              
            </div>
            <div class="col-lg-2 my-3 text-center">

			<a href="http://m.me/acheipneusoficial" title="Siga no Facebook"><i class="fab fa-facebook-messenger fa-2x text-light  "></i></a>
              
            </div>
            <div class="col-md-3 my-3 text-center">

			<a href="https://www.blog.acheipneus.com.br/" title="Siga nosso Blog"><i class="fab fa-blogger text-light fa-2x"></i></a>
              
            </div>

          </div>

       </div>

      </div>

      <div class="container">

        <div class="row">

          <div class="col-lg-3 text-center">

            <img src="./img/logo-footer.png" alt="logo">

          </div>
          <div class="col-lg-6 mt-3">

            <p class="my-5">Rua das Orquídeas, 575 - Galpão 02 - Sala 01 - CEP 89245-000 - Araquari/SC CNPJ: 05.326.792/0001-02</p>
            
          </div>
          <div class="col-lg-3">

            
          </div>

        </div>

      </div>
	
</body>
</html>
	<?php
}



?>






















