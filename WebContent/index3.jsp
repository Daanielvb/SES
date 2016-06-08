<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="pt">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Plataforma</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

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
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span> Plataforma</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#"><span class="glyphicon glyphicon-th-list"></span>Lições</a>
                    </li>
                    <li>
                        <a href="#"><span class="glyphicon glyphicon-stats"></span> Estatisticas</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Jumbotron Header -->
        <header class="jumbotron hero-spacer">
            <h1>Plataforma de Programação</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, ipsam, eligendi, in quo sunt possimus non incidunt odit vero aliquid similique quaerat nam nobis illo aspernatur vitae fugiat numquam repellat.</p>
        </header>

        <hr>

        <!-- Title -->
        <div class="row">
        <h1> Bem vindo, <span>${user.name}</h1>
        

            <div class="col-lg-12">
                <h3>Últimas lições</h3>
            </div>
        </div>
        <!-- /.row -->

        <!-- Page Features -->
        <div class="row text-center">

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="images/progress.png" alt="">
                    <div class="caption">
                        <h3>Tipos primitivos e variáveis</h3>
                        <p>Lição sobre os conceitos basicos de tipos primitivos e variáveis</p>
                        <p>
                            <a href="#" class="btn btn-primary text-center">Continue</a> 
                        </p>
                        <c:forEach items="${lessonTrackings}" var="lts" varStatus="myIndex">
							<c:if test="${lts.lesson.id == 1}">
								<p class="seen"> Já assistida </p>
							</c:if>
						</c:forEach>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="images/progress.png" alt="">
                    <div class="caption">
                        <h3>Operações</h3>
                        <p>Lição sobre operações aritmeticas, lógicas e com strings</p>
                        <p>
                            <a href="#" class="btn btn-primary text-center">Continue</a> 
                        </p>
                        <c:forEach items="${lessonTrackings}" var="lts" varStatus="myIndex">
							<c:if test="${lts.lesson.id == 2}">
								<p class="seen"> Já assistida </p>
							</c:if>
						</c:forEach>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="images/progress.png" alt="">
                    <div class="caption">
                        <h3>Estruturas de controle</h3>
                        <p>Lição sobre as estruturas existentes no controle do código</p>
                        <p>
                            <a href="#" class="btn btn-primary text-center">Continue</a> 
                        </p>
                        <c:forEach items="${lessonTrackings}" var="lts" varStatus="myIndex">
							<c:if test="${lts.lesson.id == 3}">
								<p class="seen"> Já assistida </p>
							</c:if>
						</c:forEach>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="images/progress.png" alt="">
                    <div class="caption">
                        <h3>Funções</h3>
                        <p>Lição sobre o que são funções e como utilizá-las</p>
                        <p>
                            <a href="#" class="btn btn-primary text-center">Continue</a> 
                        </p>
                        <c:forEach items="${lessonTrackings}" var="lts" varStatus="myIndex">
							<c:if test="${lts.lesson.id == 4}">
								<p class="seen"> Já assistida </p>
							</c:if>
						</c:forEach>
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

</body>

</html>
