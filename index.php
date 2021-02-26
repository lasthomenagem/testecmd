<?php
session_start();

require "config/constants.php";

if(isset($_SESSION["uid"])){
	header("location:profile.php");
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>AcheiPneus - Queima de Estoque</title>
		<meta name="description" content="Pneu Online das melhores marcas com os melhores preços estão na Achei Pneus. Loja de Pneu Ouro E-Bit. Compre pneu online em até 12x. Queima de estoque de pneus.">
		<meta name="keywords" content="pneu online">
		<meta name="author" content="Achei Pneus">
		<!--<meta name="google-site-verification" content="C52dOz3bmkCNZPb4IUqBSO_N6Zq-CoTTE3uRBCEigqk">-->
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
		
		<style></style>
	</head>
<body style="background-color: #e6e6e6;">
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

					<div class="dropdown-menu " id="carrinhopop">
						<div class="panel panel-success">
							<div class="panel-heading hos">
								<div class="row">
									<div class="col-md-3">Ordem</div>
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

<div id="myCarousel" class="carousel slide" data-ride="carousel" style="margin-top: 90px;">
	<!-- Indicators -->
	<ol class="carousel-indicators">
	  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	  <li data-target="#myCarousel" data-slide-to="1" class=""></li>
	  <li data-target="#myCarousel" data-slide-to="2" class=""></li>
	</ol>
	<div class="carousel-inner justify-content-center text-center" role="listbox" id="slidess">
	  <div class="item active">
		<img class="first-slide" src="./img/bannerslide1.jpg" alt="First slide">
	  </div>
	  <div class="item">
		<img class="second-slide" src="./img/bannerslide2.jpg" alt="Second slide">
	  </div>
	  <div class="item">
		<img class="third-slide" src="./img/bannerslide3.jpg" alt="Third slide">
	  </div>
	</div>
	<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	  <span class="sr-only">Previous</span>
	</a>
	<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
	  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	  <span class="sr-only">Next</span>
	</a>
  </div>


  <div class="container-fluid" style="background-color: white;">

	<div class="container">

		<div class="row justify-content-center text-center">

			<div class="col-md-4">

				<p class="mt-2" style="color: black; font-size: 1.2rem"><strong><i class="fas fa-credit-card fa-2x" style="color: black;"></i>&nbspPAGUE EM ATÉ 12X SEM JUROS</strong></p>

			</div>

			<div class="col-md-4">

				<p class="mt-2" style="color: black; font-size: 1.2rem"><strong><i class="fas fa-car fa-2x" style="color: black;"></i>&nbspENVIO IMEDIATO</strong></p>

			</div>
			<div class="col-md-4">

				<p class="mt-2" style="color: black; font-size: 1.2rem"><strong><i class="fas fa-star fa-2x" style="color: black;"></i>&nbsp5 ANOS DE GARANTIA</strong></p>

			</div>

		</div>

	</div>

  </div>

  

  <div class="container-fluid">

	<div class="row justify-content-center" style="background-color: darkmagenta;">

		<h3 class="text-center my-3" style="font-family:sans-serif;
	color: white;"><strong>Nossa Queima de Estoque se encerrará em:</strong></h3>

	</div>

  </div>

  <!-- Display the countdown timer in an element -->
<p id="demo"></p>

<script>
// Set the date we're counting down to
var countDownDate = new Date("Feb 25, 2021 23:59:59").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

  // Get today's date and time
  var now = new Date().getTime();

  // Find the distance between now and the count down date
  var distance = countDownDate - now;

  // Time calculations for days, hours, minutes and seconds
  var days = Math.floor(distance / (1000 * 60 * 60 * 24));
  var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Display the result in the element with id="demo"
  document.getElementById("demo").innerHTML = days + "d " + hours + "h "
  + minutes + "m " + seconds + "s ";

  // If the count down is finished, write some text
  if (distance < 0) {
    clearInterval(x);
    document.getElementById("demo").innerHTML = "EXPIRED";
  }
}, 1000);
</script>


  

	<p><br/></p>
	
	<div class="container-fluid">
		<div class="row">
			
			<div class="col-md-1"></div>
			<div class="col-md-2 col-xs-12">
				<h5 style="color:darkmagenta; "><strong>PESQUISE PNEUS POR ARO OU MARCA</strong></h5>
				<div class="mt-2" id="get_category" style="border-style:solid;border-width:5px;border-color:darkmagenta;border-radius:35px; margin-top:5px">
				</div>
				<!--<div class="nav nav-pills nav-stacked">
					<li class="active"><a href="#"><h4>Categorias</h4></a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
				</div> -->
				<div id="get_brand" style="border-style:solid;border-width:5px;border-color:darkmagenta;border-radius:35px; margin-top:5px">
				</div>
				<!--<div class="nav nav-pills nav-stacked">
					<li class="active"><a href="#"><h4>Brand</h4></a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
					<li><a href="#">Categories</a></li>
				</div> -->
			</div>
			<div class="col-md-8 col-xs-12">
				
				<div class="row">
					<div class="col-md-12 col-xs-12" id="product_msg">
					</div>
				</div>
				<div class="panel panel-info">
					
					<div class="panel-body" style="background-color: white;">

					<div class="row mt-5">

						<img  src="./img/jumbotron1.png" style="margin-bottom: 2rem; float:right; width:80%" id="jumbotron">
			
					   </div>
					   
						<div id="get_product">
							<!--Here we get product jquery Ajax Request-->
						</div>
						<!--<div class="col-md-4">
							<div class="panel panel-info">
								<div class="panel-heading">Samsung Galaxy</div>
								<div class="panel-body">
									<img src="product_images/images.JPG"/>
								</div>
								<div class="panel-heading">$.500.00
									<button style="float:right;" class="btn btn-danger btn-xs">AddToCart</button>
								</div>
							</div>
						</div> -->
						
						<div class="row mt-5">

						<img  src="./img/principaismarcas.png" id="jumbotron" style="margin-top: 2rem;">
			
					   </div>

						<div class="container">

							</div>
								<div id="myCarousel1" class="carousel slide" data-ride="carousel" style="margin-top: 90px;">
								<!-- Indicators -->
								<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1" class=""></li>
								<li data-target="#myCarousel" data-slide-to="2" class=""></li>
								</ol>
								<div class="carousel-inner justify-content-center text-center" role="listbox" id="slidess">
								<div class="item active">
									<img class="first-slide" src="./img/marcas1.png" alt="First slide">
								</div>
								<div class="item">
									<img class="second-slide" src="./img/marcas2.png" alt="Second slide">
								</div>
								<div class="item">
									<img class="third-slide" src="./img/marcas3.png" alt="Third slide">
								</div>
								</div>
								<a class="left carousel-control" href="#myCarousel1" role="button" data-slide="prev">
								<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
								</a>
								<a class="right carousel-control" href="#myCarousel1" role="button" data-slide="next">
								<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
								</a>
							</div>

						

						<div class="row">

							<div class="col-md-4 mt-3">

								<h5 class="ml-5" style="color: gray;">CENTRAL DE</h5>
								<h4 class="ml-5">ATENDIMENTO</h4>

							</div>

							<div class="col-md-4 mt-5 text-center">

								<h5 class="my-auto mr-2 text-center"><i class="fas fa-phone fa-2x" style="color: darkmagenta;"></i>
								47 3512-8484</p>

							</div>
							
							<div class="col-md-4 mt-3 text-center">

								<h5 class=" mr-2 text-center"><i class="fa fa-comments fa-2x" style="color: darkmagenta;"></i>  
								Envie-nos um e-mail</h5>

							</div>

							</div>

							</div>
						
					<div class="panel-footer">&copy; 2021 Todos os direitos reservados.</div>
				</div>

				

			</div>
			<div class="col-md-1"></div>
		</div>
	</div>

	<div class="container">

			

  </div>

	

	<div class="container-fluid" style="background-color: #ec6707;">

        <div class="container">

            <div class="row ">

              <div class="col-lg-4 mt-4">

                  <div class="panel" style="width: 100%;">

                    <i class="fas fa-star fa-star ml-3 mt-3" style="color: #ec6707;"><i class="fas fa-star fa-star" style="color: #ec6707;"></i><i class="fas fa-star fa-star" style="color: #ec6707;"></i><i class="fas fa-star fa-star" style="color: #ec6707;"></i><i class="fas fa-star fa-star" style="color: #ec6707;"></i></i>

                      <div class="panel-body">
                        <p class="card-title text-center" style="color: gray;  min-height: 10vh;" id="depoimentoTexto"><i>"Atendimento excelente com entrega rápida e sempre nos mantendo informado sobre o andamento da entreg..."</i></p>
                        <p class="card-text" style="font-size: 1.5rem;"><strong>ANTONIO DE OLIVEIRA</strong></p>
                      </div>
                    </div>

              </div>
              <div class="col-lg-4 mt-4">

                <div class="panel" style="width: 100%;">

                  <i class="fas fa-star fa-star ml-3 mt-3" style="color: #ec6707;"><i class="fas fa-star fa-star" style="color: #ec6707;"></i><i class="fas fa-star fa-star" style="color: #ec6707;"></i><i class="fas fa-star fa-star" style="color: #ec6707;"></i><i class="fas fa-star fa-star" style="color: #ec6707;"></i></i>

                    <div class="panel-body">
                      <p class="card-title text-center" style="color: gray;  min-height: 10vh;" id="depoimentoTexto"><i>"Preço bom e entrega rápida, antes do prazo. Muito bom."</i></p>
                      <p class="card-text" style="font-size: 1.5rem;"><strong>GOMES MARTINS</strong></p>
                    </div>
                  </div>

                  </div>
                  <div class="col-lg-4 mt-4">

                    <div class="panel" style="width: 100%;">

                      <i class="fas fa-star fa-star ml-3 mt-3" style="color: #ec6707;"><i class="fas fa-star fa-star" style="color: #ec6707;"></i><i class="fas fa-star fa-star" style="color: #ec6707;"></i><i class="fas fa-star fa-star" style="color: #ec6707;"></i><i class="fas fa-star fa-star" style="color: #ec6707;"></i></i>

                        <div class="panel-body">
                          <p class="card-title text-center" style="color: gray; min-height: 10vh;" id="depoimentoTexto"><i>
                            "muito boa dentro do praz com ótimo atendimento"</i></p>
                          <p class="card-text" style="font-size: 1.4rem;"><strong>ARRUDA ALVES</strong></p>
                        </div>
                      </div>

                </div>

            </div>

            <div class="row justify-content-center text-center">

              <img class="mb-1" src="./img/OPINIOES.png" alt="Opiniões Verificadas">
            

            </div>

          </div>

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
	<script
						src="https://www.mercadopago.com.br/integrations/v1/web-payment-checkout.js"
						data-preference-id="<?php echo $preference->id; ?>">
						</script>
</body>
</html>
















































