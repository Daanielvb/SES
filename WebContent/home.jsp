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
                <a class="navbar-brand" href="#"><span class="glyphicon glyphicon-home"></span> PyLearning</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="licao.jsp"><span class="glyphicon glyphicon-th-list"></span> Lições</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon glyphicon-user"></span> ${fn:toUpperCase(user.name)}  <span class="glyphicon glyphicon-triangle-bottom"></span></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="estatisticas.jsp"><span class="glyphicon glyphicon-stats"></span> Estatisticas</a>
                                <a href="alterarUser.jsp"><span class="glyphicon glyphicon glyphicon-cog"></span> Configurações</a>
                            </li>
                            <li role="separator" class="divider"></li>
                            <li>
                                <a href="#"><span class="glyphicon glyphicon glyphicon-log-out"></span> Sair</a>
                            </li>
                        </ul>
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
            <h1>PyLearning</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, ipsam, eligendi, in quo sunt possimus non incidunt odit vero aliquid similique quaerat nam nobis illo aspernatur vitae fugiat numquam repellat.</p>
            <div class="text-right">
            	<a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
    				Saiba mais
  				</a>
            </div>
            <div class="collapse" id="collapseExample">
             <hr>
            	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed volutpat aliquam felis. Suspendisse imperdiet cursus augue, eget vulputate nulla vulputate eu. Sed sed dolor blandit, rhoncus odio quis, pretium erat. In tellus ex, tincidunt eu magna et, pulvinar convallis ex. Pellentesque gravida dolor ut augue scelerisque iaculis. Phasellus massa nibh, molestie et diam eget, convallis ultrices sapien. Donec pharetra diam at ipsum convallis, ac lobortis metus cursus. Aliquam bibendum turpis viverra interdum dictum. Donec aliquet sapien sit amet dignissim suscipit. Duis quis tortor at libero cursus convallis. Vivamus aliquet, neque sit amet hendrerit congue, nisi ligula ultrices purus, et eleifend odio purus eget nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus non elementum augue, quis cursus erat. Aliquam et elit a dolor auctor elementum.

					Nulla mollis nec eros nec pretium. Donec vel nibh nec urna blandit molestie. Cras at risus elementum, lobortis nunc vel, gravida sem. Proin non sollicitudin orci, ac tristique nisl. Donec consequat ut massa in ultricies. Integer fermentum, lorem nec volutpat fringilla, tortor eros facilisis dui, sed lacinia ante mi in neque. Ut at bibendum ex. Donec eget erat lorem. Pellentesque accumsan vulputate nibh sed hendrerit. Maecenas posuere, nisi non cursus fermentum, erat tellus eleifend nisi, sed placerat quam augue eget risus. Ut porta, ex porttitor tempor euismod, orci justo euismod orci, eget eleifend felis mi vehicula est. Aliquam in hendrerit lacus. Aliquam et orci dapibus, aliquet dolor nec, lacinia mi.
					
					Maecenas arcu quam, blandit at sollicitudin eu, elementum ut enim. Nam ultricies consequat dignissim. Sed condimentum scelerisque iaculis. Sed scelerisque purus ac lorem tincidunt gravida. Suspendisse potenti. Praesent fermentum massa ac interdum vehicula. Nam fringilla leo in velit molestie, sed mollis quam convallis. Suspendisse sapien lacus, finibus quis ullamcorper sed, porttitor sed velit. Phasellus suscipit mollis felis vitae imperdiet.
					
					Sed eget lacinia orci, ultricies tempor est.</p>
            </div>
        </header>

        <hr>

        <!-- Title -->
        <div class="row">
        <h1> Bem vindo, <span>${user.name}</h1>
            <div class="col-lg-12">
                <h3>Lições correntes</h3>
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
                            <a href="#" on-click="createLessonTracking(1)" class="btn btn-primary text-center">Continuar</a> 
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
                            <a href="licao.jsp" class="btn btn-primary text-center">Continuar</a> 
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
                            <a href="licao.jsp" class="btn btn-primary text-center">Continuar</a> 
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
                            <a href="licao.jsp" class="btn btn-primary text-center">Continuar</a> 
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
	<script>
	
	function createLessonTracking(lessonId){
			console.log("FUI CHAMADO");
	         $.ajax({
	            url:'HomeController',
	            data:{lessonId:lessonId},
	            type:'get',
	            cache:false,
	            success:function(data){
	               alert(data);
	            },
	            error:function(){
	              alert('error');
	            }
	         }
	    );
	}
	
	</script>
</body>

</html>
