<<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>859-1" ?>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
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
    	<link href="css/heroic-features.css" rel="stylesheet">
    	<style type="text/css">
    		.aula{
    			text-align: justify;
    		}
    	</style>
	</head>
	<body>
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
                		<a class="navbar-brand" href="index.html"><span class="glyphicon glyphicon-home"></span> PyLearning</a>
            		</div>
            	<!-- Collect the nav links, forms, and other content for toggling -->
            	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                	<ul class="nav navbar-nav navbar-right">
                    	<li>
                        	<a href="licao.jsp"><span class="glyphicon glyphicon-th-list"></span> Lições</a>
                    	</li>
                    	<li class="dropdown">
                        	<a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon glyphicon-user"></span> Usuario <span class="glyphicon glyphicon-triangle-bottom"></span></a>
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
    	<hr>
        <!-- Title -->
        <div class="row">
            <div class="col-lg-12">
            <h3>Material Extra</h3>
                <ol class="breadcrumb">
                	<li><a href="aulaLicao3.jsp">Lição 3</a></li>
                	<li class="active">Material extra</li>
                </ol>
            </div>
        </div>
        </hr>
        <hr>
        <div class="row">
        	<div class="col-lg-12">
        		<h1>Links</h1>
        	</div>
        		<div class="text-right">
        		    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal1">
 				        Link 1
				        </button>
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal2">
                 Link 2
                </button>
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal3">
                 Link 3
                </button>
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal4">
                 Link 4
                </button>
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal5">
                 Link 5
                </button>
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal6">
                 Link 6
                </button>
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal7">
                 Link 7
                </button>
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal8">
                 Link 8
                </button>
        		</div>
        	</div>
        </hr>       
        </div>
    </div>
    <!-- /.container -->
    
    <!-- Modal -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal1Label">Material extra</h4>
      </div>
      <div class="modal-body">
        Aprendendo a programar em python estruturas condicionais  If
      </div>
      <div class="modal-footer">
        <form action="http://www.devmedia.com.br/aprendendo-a-programar-em-python-estruturas-condicionais-if/17358">
            <input type="submit" class="btn btn-primary" value="Ir para página">
        </form>

      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal2Label">Material extra</h4>
      </div>
      <div class="modal-body">
        Estruturas condicionais em python (Parte 1)
      </div>
      <div class="modal-footer">
        <form action="http://programeempython.com.br/blog/estruturas-condicionais-em-python-parte-1/">
            <input type="submit" class="btn btn-primary" value="Ir para página">
        </form>

      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal3Label">Material extra</h4>
      </div>
      <div class="modal-body">
        Estruturas condicionais em python (Parte 2)
      </div>
      <div class="modal-footer">
        <form action="http://programeempython.com.br/blog/estruturas-condicionais-em-python-parte-2/">
            <input type="submit" class="btn btn-primary" value="Ir para página">
        </form>

      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal4Label">Material extra</h4>
      </div>
      <div class="modal-body">
        Aprendendo python -4- estruturas de decisão
      </div>
      <div class="modal-footer">
        <form action="https://dtutoriais.wordpress.com/2010/07/20/aprendendo-python-4-estruturas-de-decisao/">
            <input type="submit" class="btn btn-primary" value="Ir para página">
        </form>

      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal5Label">Material extra</h4>
      </div>
      <div class="modal-body">
        Estruturas de repetição (Parte 1) - while
      </div>
      <div class="modal-footer">
        <form action="http://programeempython.com.br/blog/estruturas-de-repeticao-parte-1-while/">
            <input type="submit" class="btn btn-primary" value="Ir para página">
        </form>

      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal6Label">Material extra</h4>
      </div>
      <div class="modal-body">
        Estrutura de repetição (Parte 2) - for
      </div>
      <div class="modal-footer">
        <form action="http://programeempython.com.br/blog/estruturas-de-repeticao-parte-2-for/">
            <input type="submit" class="btn btn-primary" value="Ir para página">
        </form>

      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal7" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal7Label">Material extra</h4>
      </div>
      <div class="modal-body">
        Curso de python  aula 11  estrutura de repetição for e while
      </div>
      <div class="modal-footer">
        <form action="https://desenvolvo.wordpress.com/2013/03/18/curso-de-python-aula-11-estruturas-de-repeticao-for-e-while/">
            <input type="submit" class="btn btn-primary" value="Ir para página">
        </form>

      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal8" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal8Label">Material extra</h4>
      </div>
      <div class="modal-body">
        Aprendendo python 5- laços de repetição
      </div>
      <div class="modal-footer">
        <form action="https://dtutoriais.wordpress.com/2010/07/24/aprendendo-python-5-lacos-de-repeticao/">
            <input type="submit" class="btn btn-primary" value="Ir para página">
        </form>

      </div>
    </div>
  </div>
</div>
    
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
		
</body>