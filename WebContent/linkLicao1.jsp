<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
		<%@ include file="header.jsp" %>
		
		    <!-- Page Content -->
    <div class="container">
    	<hr>
        <!-- Title -->
        <div class="row">
            <div class="col-lg-12">
            <h3>Material Extra</h3>
                <ol class="breadcrumb">
                	<li><a href="aula.jsp">Lição 1</a></li>
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
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal9">
                 Link 9
                </button>
                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal10">
                 Link 10
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
        Wiki em português sobre Python
      </div>
      <div class="modal-footer">
        <form action="http://wiki.python.org.br/">
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
        Python/Conceitos básicos/Tipos e operadores
      </div>
      <div class="modal-footer">
        <form action="https://pt.wikibooks.org/wiki/Python/Conceitos_b%C3%A1sicos/Tipos_e_operadores ">
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
        Tipos numéricos integrados de Python
      </div>
      <div class="modal-footer">
        <form action="http://www.ibm.com/developerworks/br/library/os-python1/ ">
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
        Tipos Básicos
      </div>
      <div class="modal-footer">
        <form action="http://www.dcc.ufrj.br/~fabiom/mab225/02tipos.pdf ">
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
        Dicionários em Python
      </div>
      <div class="modal-footer">
        <form action="http://www3.ifrn.edu.br/~jurandy/fdp/doc/aprenda-python/capitulo_10.html ">
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
        Tuplas em python
      </div>
      <div class="modal-footer">
        <form action="http://www3.ifrn.edu.br/~jurandy/fdp/doc/aprenda-python/capitulo_09.html ">
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
        Conceitos básicos, variáveis e indicadores
      </div>
      <div class="modal-footer">
        <form action="https://pt.wikibooks.org/wiki/Python/Conceitos_b%C3%A1sicos/Vari%C3%A1veis_e_identificadores ">
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
        Variáveis, expressões e comandos
      </div>
      <div class="modal-footer">
        <form action="http://www3.ifrn.edu.br/~jurandy/fdp/doc/aprenda-python/capitulo_02.html">
            <input type="submit" class="btn btn-primary" value="Ir para página">
        </form>

      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal9" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal9Label">Material extra</h4>
      </div>
      <div class="modal-body">
        Introdução à Programação (Iniciantes)
      </div>
      <div class="modal-footer">
        <form action="http://www.livrariacultura.com.br/p/introducao-a-programacao-com-python-42273748?id_link=8787&adtype=pla&gclid=CKXxyPHJqcwCFYyAkQod1u4IMA">
            <input type="submit" class="btn btn-primary" value="Ir para página">
        </form>

      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal10" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal10Label">Material extra</h4>
      </div>
      <div class="modal-body">
        Python Para Desenvolvedores
      </div>
      <div class="modal-footer">
        <form action="https://ark4n.files.wordpress.com/2010/01/python_para_desenvolvedores_2ed.pdf">
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