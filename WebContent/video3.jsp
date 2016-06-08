<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
                	<li><a href="aula.jsp">Li��o 1</a></li>
                	<li class="active">Material extra</li>
                </ol>
            </div>
        </div>
        </hr>
        <hr>
        <div class="row">
        	<div class="col-lg-12">
        		<h1>T�pico 1</h1>
        	</div>
        		<div class="text-right">
        		<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
 				 Visualizar
				</button>
        		</div>
        	</div>
        </hr>
        <hr>
        <div class="row">
        	<div class="col-lg-12">
        		<h1>T�pico 2</h1>
        	</div>
        		<div class="text-right">
        		<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
 				 Visualizar
				</button>
        		</div>
        	</div>
        </hr>       
        </div>
    </div>
    <!-- /.container -->
    
    <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Videos</h4>
      </div>
      <div class="modal-body">
      	<div class="embed-responsive embed-responsive-16by9">
 		 	<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/VtcYvpdUjiQ"></iframe>
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
		
</body>