<?php
require "config/constants.php";
include "./vendor/autoload.php";
include "./credenciais.php";
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>AcheiPneus - Carrinho</title>
		<link rel="stylesheet" href="css/bootstrap.min.css"/>
		<script src="js/jquery2.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="main.js"></script>
		<link rel="stylesheet" type="text/css" href="style.css"/>
		<link rel="stylesheet" type="text/css" href="styles.css"/>
		<script src="https://secure.mlstatic.com/sdk/javascript/v1/mercadopago.js"></script>
    	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
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
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#collapse" aria-expanded="false" style="background-color:white; margin-top:5vh">
					<span class="sr-only">navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand ml-5 mb-3" style="max-width: 75%; color: white;"><img class="" src="./img/logo.png" id="imgbrand"></a>
			</div>
			<div class="collapse navbar-collapse" id="collapse">
			<ul class="nav navbar-nav">
				<li><a class="mt-3 zoom1" href="index.php" style="color: white; font-size: 1.7rem; background-color:transparent"><span class="glyphicon glyphicon-home" style="color: white;"></span>&nbsp Início</a></li>
				<li><a class="mt-3 zoom1" href="index.php" style="color: white; font-size: 1.7rem;  background-color:transparent"><span class="glyphicon glyphicon-earphone" style="color: white;"></span>&nbsp Televendas | (11) 97485-3258</a></li>
				<li><a class="mt-3 zoom1" href="quemsomos.php" style="color: white; font-size: 1.7rem; background-color:transparent"><i class="fas fa-users text-white"></i>&nbsp Quem somos</a></li>
				<li><a class="mt-3 zoom1" href="./politicadeprivacidade.php" style="color: white; font-size: 1.7rem; background-color:transparent"><i class="fas fa-lock text-white"></i>&nbsp Política de Privacidade</a></li>
			</ul>
		</div>
	</div>
	</div>
	<p><br/></p>
	<p><br/></p>
	<p><br/></p>
	<div class="container-fluid mt-3">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8" id="cart_msg">
				<!--Cart Message--> 
			</div>
			<div class="col-md-2"></div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="panel panel-primary" style="color:">
					<div class="panel-heading" style="font-size: 2rem; background-color:#ec6707; border-color:darkmagenta">Carrinho</div>
					<div class="panel-body">
						<div class="row mb-3">
							<div class="col-md-2 col-xs-2"><b>Ações</b></div>
							<div class="col-md-2 col-xs-2 hos"><b>Imagem do produto</b></div>
							<div class="col-md-2 col-xs-2 hos"><b>Nome do produto</b></div>
							<div class="col-md-2 col-xs-2 hos"><b>Quantidade</b></div>
							<div class="col-md-2 col-xs-2 hos"><b>Valor do produto</b></div>
							<div class="col-md-2 col-xs-2 hos"><b>Valor total <?php echo CURRENCY; ?></b></div>
							
						</div>
						
						<div id="cart_checkout"></div>
						
						

						<script
						src="https://www.mercadopago.com.br/integrations/v1/web-payment-checkout.js"
						data-preference-id="<?php echo $preference->id; ?>">
						</script>

        
						<!--<div class="row">
							<div class="col-md-2">
								<div class="btn-group">
									<a href="#" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span></a>
									<a href="" class="btn btn-primary"><span class="glyphicon glyphicon-ok-sign"></span></a>
								</div>
							</div>
							<div class="col-md-2"><img src='product_images/imges.jpg'></div>
							<div class="col-md-2">Product Name</div>
							<div class="col-md-2"><input type='text' class='form-control' value='1' ></div>
							<div class="col-md-2"><input type='text' class='form-control' value='5000' disabled></div>
							<div class="col-md-2"><input type='text' class='form-control' value='5000' disabled></div>
						</div> -->
						<!--<div class="row">
							<div class="col-md-8"></div>
							<div class="col-md-4">
								<b>Total $500000</b>
							</div> -->
							
						</div> 
					</div>
					<div class="panel-footer"></div>
					
				</div>
			</div>
			<div class="col-md-2"></div>
			
		</div>

		
	<hr><div class="container">

</div>
		

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



<script>


var CURRENCY = '<?php echo CURRENCY; ?>';</script>


<script src="https://secure.mlstatic.com/sdk/javascript/v1/mercadopago.js"></script>
</body>	
</html>
















		