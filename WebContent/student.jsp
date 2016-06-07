<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="author" content="Daniel Vilas-Boas">
<title>SAS</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/sb-admin.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/plugins/morris.css" rel="stylesheet">
<link rel="icon" type="image/png" href="images/logo2.png" />
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">

				<a class="navbar-brand" href="index.jsp">SAS</a>
			</div>
			<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav side-nav">
					<li class="active"><a href="index.jsp"><i
							class="fa fa-fw fa-dashboard"></i> SAS</a></li>
					<li><a href="javascript:;" data-toggle="collapse"
						data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Sobre
							<i class="fa fa-fw fa-caret-down"></i></a>
						<ul id="demo" class="collapse">
							<li><a href="team.html">Equipe de desenvolvimento</a></li>
							<li><a href="termos.html">Termos de uso</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</nav>
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row" id="logoRow">
					<div class="col-lg-12">
						<h1 class="page-header">Cadastro de aluno</h1>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									<i class="fa fa-long-arrow-right fa-fw"></i> Insira seus dados para cadastro:
								</h3>
							</div>
							<div class="panel-body">
								<form action="<c:url value="/StudentController"/>" method="post">
									<label for="name">Nome:</label>
									<input type="text" id="studentName" name="name"/>
									<label for="name">Cpf:</label>
									<input type="text" id="cpf" name="cpf"/>
									<label for="name">Email:</label>
									<input type="text" id="email" name="email"/>
									<input type="hidden" name="action" value="saveStudent">
									<button type="submit">OK</button>
								</form>
								
								
								<iframe src="https://trinket.io/embed/python/27965ff4ab" width="100%" height="600" frameborder="0" marginwidth="0" marginheight="0" allowfullscreen></iframe>
							</div>
						</div>
						<span class="pull-right"><i class="fa fa-arrow-circle-left"></i><a href="index.jsp">Voltar</a></span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>


</body>

</html>
