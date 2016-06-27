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
                	<li><a href="aulaLicao2.jsp">Operações aritméticas, lógicas e com Strings em Python</a></li>
                	<li class="active">Material extra</li>
                </ol>
            </div>
        </div>
        </hr>
        <hr>
        <div class="row">
        	<div class="col-lg-12">
        		<h1>Tópico 2.2</h1>
        	</div>
        		<div class="text-right">
        		<button id = "6" onclick="createVideoTracking(6)" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal1">
 				 Video 1
				</button>
                <button id = "7" onclick="createVideoTracking(7)" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal2">
                 Video 2
                </button>
        		</div>
        	</div>
        </hr>
        <hr>
        <div class="row">
            <div class="col-lg-12">
                <h1>Tópico 2.3</h1>
            </div>
                <div class="text-right">
                <button id = "8" onclick="createVideoTracking(8)" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal3">
                 Video 1
                </button>
                <button id = "9" onclick="createVideoTracking(9)" type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal4">
                 Video 2
                </button>
                </div>
            </div>
        </hr>
        <hr>
        <div class="row">
            <div class="col-lg-12">
                <h1>Tópico 2.4</h1>
            </div>
                <div class="text-right">
                <button id = "10" type="button" onclick="createVideoTracking(10)" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal5">
                 Video 1
                </button>
                <button id = "11" type="button" onclick="createVideoTracking(11)" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal6">
                 Video 2
                </button>
                <button id = "12" type="button" onclick="createVideoTracking(12)" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal7">
                 Video 3
                </button>
                </div>
            </div>
        </hr>       
        </div>       
        </div>
    </div>
    <!-- /.container -->
    
    <!-- Modal -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal1Label">Videos</h4>
      </div>
      <div class="modal-body">
      	<div class="embed-responsive embed-responsive-16by9">
 		 	<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/x5hnMWGxRvw"></iframe>
		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal2Label">Videos</h4>
      </div>
      <div class="modal-body">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/MHpQugpJrTc"></iframe>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal3Label">Videos</h4>
      </div>
      <div class="modal-body">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/czW7I2CCcUM"></iframe>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal4Label">Videos</h4>
      </div>
      <div class="modal-body">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/JyDJApTQjzI"></iframe>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal5Label">Videos</h4>
      </div>
      <div class="modal-body">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/LZlhYWaAckc"></iframe>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal6Label">Videos</h4>
      </div>
      <div class="modal-body">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/D5ChMm-KR3Y"></iframe>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal7" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal7Label">Videos</h4>
      </div>
      <div class="modal-body">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/mrbG8B6Gqfs"></iframe>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
    
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
	<script>
	
	function createVideoTracking(videoId){
	         $.ajax({
	            url:'VideoController',
	            data:{videoId:videoId,action:"video"},
	            type:'get',
	            cache:false,
	            success:function(data){
	               console.log("saved");
	            },
	            error:function(){
	              
	            }
	         }
	    );
	}
	
	</script>
</body>