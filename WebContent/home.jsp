<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" href="favicon.ico" />
<title>PyLearning</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/style.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- Navigation -->
	<%@ include file="header.jsp"%>

	<!-- Page Content -->
	<div class="container">

		<script src="js/Util.js"></script>
        <header class="jumbotron hero-spacer">
            <h1>PyLearning</h1>
            <p style="text-align: justify">PyLearning é uma plataforma inteligente para o aprendizado da linguagem de programação Python. A plataforma contém 4 lições básicas com o intuito de introduzir conhecimento de maneira iterativa. A plataforma contém as estatísticas do usuário sobre as aulas lidas, exercícios já resolvidos,sugestões de vídeos e links para consulta de conteúdo.</p>
            <div class="collapse" id="collapseExample">
             <hr>
             <h3 style="text-align: justify; font-weight: bold; ">Por que aprender python?</h3>
             <p style="text-align: justify">Aprender linguagem de programação é uma atividade  que exige tempo e dedicação para que seja corretamente compreendida. 
             Acredita-se que deve existir uma grande motivação para o aprendizado pois a maioria das pessoas acaba desistindo,acha difiícil continuar gostando de programar.
             A linguagem de programção Python é bastante interessante, geralmente é usada como primeira linguagem de aprendizado devido a sua facilidade de entendimento e clareza.</p>
             <p style="text-align: justify">Python é software livre e pode ser usada na maioria das arquiteturas de computadores
              ou sistemas operacionais,mas independente da simplicidade é bastante poderosa e vem crescendo desde que adentrou nas
              áreas mais complexas como inteligencia artificial,animaçãao 3D,biotecnologia, jogos e desenvolvimento de plataformas web.
              Python tambem aparece no mercado com usuários como o Youtube, Nasa,Google e estudios de cinema como disney e dreamworks.</p>	
              </br>
              <p style="text-align: justify">Fazendo uma avaliação mais técnica da linguagem podemos listar alguns motivos para aprender Python:</p>
              <p style="text-align: justify; font-weight: bold;">1-Livre e de código aberto:</p> 
              <p style="text-align: justify">Como ja citado anteriormente, a linguagem segue modelo de desenvolvimento com licenciamento livre para o design,tem  redistribuição universal e oferece possibilidade para que qualquer um consulte, examine ou modifique-a.</p>
              <p style="text-align: justify; font-weight: bold;">2-Alto Nível:</p>
              <p style="text-align: justify">Linguagem com fácil nivel de abstraçao,menos parecida com a linguagem de maquina e mais proxima à linguagem humana.</p>
              <p style="text-align: justify; font-weight: bold;">3-Orientada a Objetos:</p>
              <p style="text-align: justify">Segue um modelo de análise, projeto e programação de sistemas  baseado na composição e interação entre diversas unidades de software chamadas de objetos.</p>
              <p style="text-align: justify; font-weight: bold;">4-Sintaxe:</p>
              <p style="text-align: justify">Em Python um bloco de código é feito através de indentações(recuo de um texto em relação a sua margem.) Isso força o desenvolvedor a indentar seu código fonte e garante uma boa legibilidade.</p>
              <p style="text-align: justify; font-weight: bold;">5-Documentação:</p>
              <p style="text-align: justify">Possui comunidades( uma delas brasileira) com uma lista de fontes de estudos  e informações sobre a linguagem.</p>
            </div>
            <div class="text-center">
            	<a id="texto" onclick="mudar(flag)" class="btn btn-primary btn-lg" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    				Saiba Mais
  				</a>
            </div>
        </header>

		<hr>

		<!-- Title -->
		<div class="row">
			<h1>
				Bem vindo, <span>${user.name}
			</h1>
			<div class="col-lg-12">
				<h3>Lições correntes</h3>
			</div>
		</div>
		<!-- /.row -->
		<!--  Viewed lessons -->
		<c:forEach items="${lessonTrackings}" var="lts" varStatus="myIndex">
			<c:choose>
				<c:when test="${lts.lesson.id == 3}">
					<c:set var="lesson1" value="true" />
				</c:when>
				<c:when test="${lts.lesson.id == 4}">
					<c:set var="lesson2" value="true" />
				</c:when>
				<c:when test="${lts.lesson.id == 5}">
					<c:set var="lesson3" value="true" />
				</c:when>
				<c:when test="${lts.lesson.id == 6}">
					<c:set var="lesson4" value="true" />
				</c:when>
			</c:choose>
		</c:forEach>
		<!-- Page Features -->
		<div class="row text-center">

			<div class="col-md-3 col-sm-6 hero-feature">
				<div class="thumbnail">
					<c:choose>
						<c:when test="${lesson1 == true}">
							<img src="images/python.png" alt="Aula não assistida">
						</c:when>
						<c:otherwise>
							<img src="images/pythonInc.png" alt="Aula já assistida">
						</c:otherwise>
					</c:choose>
					<div class="caption">
						<h3>1 - Tipos primitivos e variáveis</h3>
						<p>Lição sobre os conceitos basicos de tipos primitivos e
							variáveis</p>
						<p>
							<a href="#" onclick="createLessonTracking(3)"
								class="btn btn-primary text-center">Continuar</a>
							<!--<a href="#" onclick="createLessonTracking(1)" class="btn btn-primary text-center">Continuar</a> -->
						</p>

					</div>
				</div>
			</div>

			<div class="col-md-3 col-sm-6 hero-feature">
				<div class="thumbnail">
					<c:choose>
						<c:when test="${lesson2 == true}">
							<img src="images/python.png" alt="Aula não assistida">
						</c:when>
						<c:otherwise>
							<img src="images/pythonInc.png" alt="Aula já assistida">
						</c:otherwise>
					</c:choose>
					<div class="caption">
						<h3>2 - Operações</h3>
						<p>Lição sobre operações aritmeticas, lógicas e com strings</p>
						<p>
							<a href="#" onclick="createLessonTracking(4)"
								class="btn btn-primary text-center">Continuar</a>
							<!-- <a href="#" onclick="createLessonTracking(2)" class="btn btn-primary text-center">Continuar</a>-->
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-3 col-sm-6 hero-feature">
				<div class="thumbnail">
					<c:choose>
						<c:when test="${lesson3 == true}">
							<img src="images/python.png" alt="Aula não assistida">
						</c:when>
						<c:otherwise>
							<img src="images/pythonInc.png" alt="Aula já assistida">
						</c:otherwise>
					</c:choose>
					<div class="caption">
						<h3>3 - Estruturas de controle</h3>
						<p>Lição sobre as estruturas existentes no controle do código</p>
						<p>
							<a href="#" onclick="createLessonTracking(5)"
								class="btn btn-primary text-center">Continuar</a>
							<!--<a href="#" onclick="createLessonTracking(3)" class="btn btn-primary text-center">Continuar</a>-->
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-3 col-sm-6 hero-feature">
				<div class="thumbnail">
					<c:choose>
						<c:when test="${lesson4 == true}">
							<img src="images/python.png" alt="Aula não assistida">
						</c:when>
						<c:otherwise>
							<img src="images/pythonInc.png" alt="Aula já assistida">
						</c:otherwise>
					</c:choose>
					<div class="caption">
						<h3>Funções</h3>
						<p>4 - Lição sobre o que são funções e como utilizá-las</p>
						<p>
							<a href="#" onclick="createLessonTracking(6)"
								class="btn btn-primary text-center">Continuar</a>
							<!--<a href="#" onclick="createLessonTracking(4)" class="btn btn-primary text-center">Continuar</a>-->
						</p>
					</div>
				</div>
			</div>

		</div>
		<!-- /.row -->

		<hr>

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<script>
		function createLessonTracking(lessonId) {
			$.ajax({
				type : "GET",
				data : {
					lessonId : lessonId
				},
				async : true,
				url : 'HomeController',
				success : function(data) {
					console.log("FUNFOU!");
				},
				error : function(data) {
					console.log("NÃO FUNFOU!");
				},
				complete : function(data) {
					console.log("SEMPRE FUNFA!");
					console.log(lessonId);
					switch (lessonId) {

					case 3:
						//case 1:
						window.location = "/ProjetoSI/aulaLicao1.jsp";
						console.log(window.location);
						break;
					case 4:
						// case 2:
						window.location = ("/ProjetoSI/aulaLicao2.jsp");
						break;
					case 5:
						//case 3:
						window.location = ("/ProjetoSI/aulaLicao3.jsp");
						break;
					default:
						window.location = ("/ProjetoSI/aulaLicao4.jsp");
						break;
					}
				}
			});
		}
	</script>
</body>

</html>
