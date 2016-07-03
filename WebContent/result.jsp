<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Daniel Vilas-Boas">
<title>PyLearning</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/sb-admin.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link rel="icon" type="image/png" href="favicon.ico" />
<link href="css/plugins/morris.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">

				<a class="navbar-brand" href="index.jsp">Mais Brasil</a>
			</div>

			<!-- /.navbar-collapse -->
		</nav>
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row" id="logoRow">
					<div class="col-lg-12">
						<h1 class="page-header">Resultado da avaliação</h1>		
						<h4> Questões corretas: ${score}/${quizSize} </h4>	
						<p> Pontos adquiridos nessa liçao ${points}	(*)
						 <span> (*) A pontuação se baseia num valor dado a cada questão de acordo com seu nível de dificuldade</span>
						 </p>
						 
					</div>
				</div>
				<p> Baseado nas questões que você errou e nas aulas, vídeos e links acessados,
				    seguem as recomendações para que você possa entender melhor o contéudo:
				
				</p>
				<h3> Tópicos da lição que merecem atenção :</h3> 
				<p>${subjectsTxt}</p>	
				
				<h3> Vídeos:</h3>				
				<c:forEach items="${videos}" var="video" varStatus="videoIndx">		
					<p><a href="<c:out value='${video.link}'/>" target="_blank" >${video.name}</a>		</p>				
				</c:forEach>
				<h3> Links:</h3>
				<c:forEach items="${links}" var="link" varStatus="linkIndx">
					<p>${link.lesson.theme} - <a href="<c:out value='${link.content}'/>" target="_blank" >Link: ${link.content}</a></p>
					
				</c:forEach>
				
				<span class="pull-right"><i class="fa fa-arrow-circle-left"></i><a
					href="index.jsp">Voltar</a></span>
			</div>
		</div>
	</div>
	
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>


</body>

</html>
