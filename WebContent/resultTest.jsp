<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
    <%@ include file="header.jsp" %>

	<div class="container">
		<header class="jumbotron text-center" style="padding-bottom:5px;">
		<h2>
			<span>Resultado da Avaliação</span>
		</h2>
		<div class="row">
			<div class="col-md-6 text-center">
				<h2>Questões Corretas</h2>
				<h2> ${score}/${quizSize}</h2>
			</div>
			<div class="col-md-6 text-center">
				<h2>Pontuação</h2>
				<h2>
					${points} <span>(*)</span>
				</h2>
			</div>
			<div class="col-md-12 text-center">
				<h2>Tópicos que merecem atenção</h2>
				<h3>${subjectsTxt}</h3>
			</div>
		</div>
		<p class="text-center" style="padding-top:40px; font-size: 12px;">*A pontuação se
			baseia num valor dado a cada questão de acordo com seu nível de
			dificuldade.</p>
		</header>

		<div class="row">
			<div class="col-md-3">
				<div class="panel panel-primary">
					<div class="panel-body">
						<div class="list-group">
							<a onclick="conteudoVideo()" class="list-group-item">Videos</a> <a
								onclick="conteudoLink()" class="list-group-item">Links</a>
						</div>
					</div>
				</div>
			</div>
			<h3> Recomendações
				
				</h3>
			<div class="col-md-9" id="conteudo">
			
				<div id="video" class="text-center">
					<h4 class="text-center">Videos:</h4>
					<c:forEach items="${videos}" var="video" varStatus="videoIndx">
						<p>
							<a href="<c:out value='${video.link}'/>" target="_blank">${video.name}</a>
						</p>
					</c:forEach>
				</div>
				<div id="link" class="text-center">
					<h4 class="text-center">Links:</h4>
					<c:forEach items="${links}" var="link" varStatus="linkIndx">
						<p>${link.lesson.theme}
							- <a href="<c:out value='${link.content}'/>" target="_blank">
								${link.content}</a>
						</p>

					</c:forEach>
				</div>
			</div>
		</div>
	</div>

	<!-- fim container -->


	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<script>
		window.onload = $("#link").hide();
		function conteudoVideo() {
			$("#link").hide();
			$("#video").show();
		};
		function conteudoLink() {
			$("#video").hide();
			$("#link").show();
		};
	</script>

</body>
</html>