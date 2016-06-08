<?xml version="1.0" encoding="utf-8" ?>
<%@page import="model.Lesson"%>
<%@page import="dao.LessonDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
                <a class="navbar-brand" href="index.html"><span class="glyphicon glyphicon-home"></span> PyLearning</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="#"><span class="glyphicon glyphicon-th-list"></span> Lições</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon glyphicon-user"></span> ${fn:toUpperCase(user.name)} <span class="glyphicon glyphicon-triangle-bottom"></span></a>
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
                <h3>Lições</h3>
            </div>
        </div>
        </hr>
        <hr>
        <div class="row">
        Lições já iniciadas
        	<div class="col-lg-12">
        		<h1>lição 1</h1>
        	</div>
        	<div class="col-lg-12">
        		<div class="progress">
        			<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
        			 60%
        			</div>
        		</div>
        		<div class="text-right">
        		<a href="aula.jsp" class="btn btn-primary text-center">Continuar</a>
        		</div>
        	</div>       
        </div>
        </hr>
        <hr>
        <div class="row">
        	<div class="col-lg-12">
        		<h1>lição 2</h1>
        	</div>
        	<div class="col-lg-12">
        		<div class="progress">
        			<div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;">
        			 0%
        			</div>
        		</div>
        		<div class="text-right">
        		<a href="#" class="btn btn-primary text-center">Iniciar</a>
        		</div>
        	</div>       
        </div>
        </hr>
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>


</html>