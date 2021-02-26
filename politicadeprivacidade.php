
	<?php


define('CURRENCY', 'R$');

if(isset($_SESSION["uid"])){
	header("location:profile.php");
}
?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>AcheiPneus - Quem somos?</title>
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
				<li><a class="mt-3 zoom1" href="quemsomos.php" style="color: white; font-size: 1.7rem; background-color:transparent"><i class="fas fa-users text-white"></i>&nbsp Quem somos</a></li>
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

<div class="container-fluid" style="background-color:#e6e6e6">
        <div class="container" style="background-color:white">
            <div class="row text-center">
                <h1><strong>Política de Privacidade</strong></h1>
            </div>
            <hr>
            <div class="row" style="margin-left:3vh; margin-right:3vh; margin-bottom: 3vh">
				<h4><strong>POLÍTICA DE PRIVACIDADE ACHEI PNEUS
</strong></h4>
                <h5>
Em conformidade com a Lei Geral de Proteção de Dados (LGPD), a Achei Pneus torna pública a forma como coleta, armazena, trata e compartilha os dados pessoais de seus clientes. <br><br>

Os dados cadastrais de nossos clientes não são divulgados para terceiros que não estejam envolvidos no processo de cobrança e entrega do produto adquirido em nosso site. <br><br>

Dados como nome, CPF, RG e endereço são compartilhados de forma segura com as transportadoras que atendem a Achei Pneus a fim de entregar nossos produtos em todo o Brasil. Excetuando as empresas que fazem parte do nosso processo de trabalho, os dados de nossos clientes não são compartilhados com terceiros.</h4>
            </div>
            
            <div class="row" style="margin-left:3vh; margin-right:3vh">
                <h4><strong>QUAIS DADOS COLETAMOS?
</strong></h4>
                <h5>A Achei Pneus coleta as informações que nossos clientes fornecem quando se cadastram e criam uma conta em nosso site, os dados são: </h5>
				<ul>
					<li>Nome completo</li>
					<li>Endereço completo </li>
					<li>Dados de contato (telefones e e-mail)</li>
				</ul>
                <h4 class="mt-4"><strong>POR QUE COLETAMOS ESSES DADOS?</strong></h4>
                <h5>A Achei Pneus faz a coleta desses específicos dados pois nosso sistema de integração para pagamentos do mercado pago já faz todo o processo de aquisição de informações para efetuação de pagamento, por isso e para sua segurança, nós da Achei pneus não temos acesso a esses dados.</h5><h5>A Achei Pneus também coleta informações automaticamente de nossos clientes quando eles navegam em nossas páginas, independentemente de terem se registrado no site ou não. São elas:</h5>
                <ul>
					<li>Informações dos dispositivos ou computadores a partir dos quais os clientes acessam o site da Achei Pneus; </li>
					<li>Endereço IP da internet que utiliza ao se conectar ao nosso site; </li>
					<li>Informações sobre a localização dos clientes; </li>
					<li>Informações sobre transações e percursos dentro do site da Achei Pneus, como movimentações de compras, pagamentos, atendimentos realizados, transferências, devoluções, entre outras; </li>
					<li>Interações com nossos anúncios dentro e fora de nosso site; </li>
					<li>Informações de movimentação dos clientes dentro de nosso site, como páginas que acessam dentro da nossa plataforma e fora dela;</li>
				</ul>
                <h4 class="mt-4"><strong>PARA QUE USAMOS SEUS DADOS? 
</strong></h4>
                <h5>A Achei Pneus utiliza os dados de seus clientes tanto para efetivar o pedido e entregar os produtos quanto para oferecer a melhor experiência com a marca. </h5>
				<h5>Detalhadamente, usamos os dados para:</h5>
				<ul>
				<li>Para verificar a identidade de nossos clientes, em conformidade com os requisitos legais; 
</li>
				<li>Para entregar os produtos adquiridos no site da Achei Pneus; 
</li>
				<li>Para manter os clientes informados sobre o status do pedido; 
</li>
				<li>Para registrar os clientes em nossos sistemas e fazermos acompanhamento de seus pedidos; 
</li>
				<li>Para repassar as informações necessárias para que nossos parceiros realizem a entrega; 
</li>
				<li>Para a realização de trocas; 
</li>
				<li>Para enviar atualizações sobre o status do pedido; 
</li>
				<li>Para atender comentários, reclamações, sugestões e realizar suporte aos clientes;  
</li>
				<li>Para nos comunicar com os clientes sobre produtos, notícias e promoções. Esse tipo de comunicação pode ser cancelada pelo cliente a qualquer momento;  
</li>
				<li>Para fazer publicidade online direcionada; 
</li>
				<li>Para desenvolver estudos internos sobre interesses e comportamentos de nossos clientes, a fim de oferecer os melhores produtos e experiências a eles;
</li>
				</ul>
				<h5 class="my-3">A Achei Pneus manterá as informações pessoais de seus clientes pelo tempo necessário para cumprir os fins pelos quais foram coletados.
</h5>
				<h4 class="mt-4"><strong>COM QUEM COMPARTILHAMOS ESSES DADOS?
</h4></strong>
				<h5>A Achei Pneus compartilha as informações coletadas somente quando necessárias:
</h5>
				<ul>
					<li>Para prestação adequada dos serviços de suas atividades com empresas parceiras
</li>
					<li>Para proteção em caso de conflito
</li>
					<li>Mediante decisão judicial ou requisição de autoridade competente
</li>
					<li>Com empresas provedoras de infraestrutura tecnológica e operacional, como empresas intermediadoras de pagamento e provedoras de serviço de armazenamento de informações.
</li>
				</ul>
				<h5 class="my-3">As informações pessoais de nossos clientes são protegidas. A Achei Pneus não comercializa qualquer tipo de informação que possa identificar seus clientes.
</h5>
				<h4 class="mt-4"><strong>POR QUANTO TEMPO ARMAZENAMOS SUAS INFORMAÇÕES PESSOAIS? 
				</strong></h4>
                <h5>A Achei Pneus armazena as informações de seus clientes, seguindo as normas de prescrição do Direito Brasileiro.
</h5>
				<h4 class="mt-4"><strong>QUAIS SÃO OS DIREITOS DE PRIVACIDADE DOS TITULARES DOS DADOS? 
				</strong></h4>
                <h5>Seguindo as normas da Lei Geral de Proteção de Dados (LGPD), o titular dos dados pessoais tem o direito de, a qualquer momento, através de solicitação formal, informações à Achei Pneus sobre o uso, armazenamento e tratamento de seus dados
</h5>	
                <h5 class="mt-3">A Achei Pneus terá 15 dias para responder às solicitações dos titulares. Os pedidos serão analisados conforme previsto em legislação vigente e, por questões legais, algumas solicitações podem não ser atendidas.
</h5>
				<h5 class="mt-3">Os titulares dos dados, segundo o texto da LGPD, podem exercer os seus direitos por meio de:
				</h5>
				</ul>
				<h5 class="my-3">A Achei Pneus manterá as informações pessoais de seus clientes pelo tempo necessário para cumprir os fins pelos quais foram coletados.
</h5>
				<h4 class="mt-4"><strong>COM QUEM COMPARTILHAMOS ESSES DADOS?
</h4></strong>
				<h5>A Achei Pneus compartilha as informações coletadas somente quando necessárias:
</h5>
				<ul>
					<li>Direito de confirmação de existência do tratamento;
</li>
					<li>Direito de acesso aos dados;
</li>
					<li>Direito de correção de dados incompletos, inexatos ou desatualizados;
</li>
					<li>Direito de anonimização, bloqueio ou eliminação de dados desnecessários, excessivos ou tratados em desconformidade com o disposto na LGPD;
</li>
					<li>Direito de portabilidade dos dados a outro fornecedor de serviço ou produto, mediante requisição expressa, de acordo com a regulamentação da autoridade nacional, observados os segredos comercial e industrial;</li>
					<li>Direito de eliminação dos dados pessoais tratados com o consentimento do titular;
</li>
					<li>Direito de informação das entidades públicas e privadas com as quais o controlador realizou uso compartilhado de dados;
</li>
					<li>Direito de informação sobre a possibilidade de não fornecer consentimento e sobre as consequências da negativa;
</li>
					<li>Direito de revogação do consentimento.
</li>
				</ul>
				<h4 class="mt-4"><strong>SEGURANÇA DOS DADOS 
</h4></strong>
				<h5>A Achei Pneus utiliza as melhores metodologias de segurança para proteger as informações de seus clientes, mas também recomenda que medidas de proteção individual sejam tomadas, por isso, orientamos que logins e senhas nunca sejam compartilhados com outras pessoas. <br><br></h5>
				<h5>Caso acesse sua conta em um computador que não seja o seu, não se esqueça de fazer o logout para que outra pessoa não acesse seus dados. 
</h5><br>
				<h5>A Achei Pneus não faz contato ativo solicitando dados pessoais por telefone, WhatsApp, SMS ou e-mail. Em nenhuma hipótese eles devem ser fornecidos, pois pode ser uma tentativa de uso indevido.
</h5><br>
				<h4 class="mt-3"><strong>DECLARAÇÃO DE PRIVACIDADE E ATUALIZAÇÕES 
</strong></h4>
				<h5>A última atualização dessa declaração de privacidade tem data de 09/10/2020.<br>
Toda e qualquer atualização feita em nossa declaração de privacidade, comunicaremos nossos clientes via e-mail.</h5>
            </div>
        </div>
        
<hr style="border-color:orange;border-width:3px">
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
	
</body>
</html>






















