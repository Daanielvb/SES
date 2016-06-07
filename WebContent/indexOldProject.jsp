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
<title>Mais Brasil</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/sb-admin.css" rel="stylesheet">
<link rel="icon" type="image/png" href="images/logo2.png" />
<link href="css/style.css" rel="stylesheet">
<link href="css/plugins/morris.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">

				<a class="navbar-brand" href="index.html">Mais Brasil</a>
			</div>
			<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav side-nav">
					<li class="active"><a href="index.jsp"><i
							class="fa fa-fw fa-dashboard"></i> Projeto Mais Brasil</a></li>

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
						<h1 class="page-header">Projeto Mais Brasil</h1>
						<img src="images/logo2.png" id="logo">

					</div>
				</div>
				<div class="row">
					<ol class="breadcrumb">
						<li class="active">
							<p>Todas as informações aqui presentes foram coletadas por
								crawlers a partir de várias fontes como IBGE, TripAdvisor e
								Accuweather. Todas reunidas aqui de maneira simples e
								transparente para você acompanhar melhor os estados e capitais
								brasileiras</p>
						</li>
					</ol>
				</div>
				<div class="row">
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-search-plus fa-5x"></i>
									</div>
									<div class="col-xs-9 text-right">
										<div class="huge">Estados</div>
										<div>Saiba mais sobre os estados brasileiros</div>
									</div>
								</div>
							</div>
							<a href="estados.jsp">
								<div class="panel-footer">
									<span class="pull-left">Mais detalhes</span> <span
										class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-green">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-home fa-5x"></i>
									</div>
									<div class="col-xs-9 text-right">
										<div class="huge">Capitais</div>
										<div>Tudo sobre as nossas capitais</div>
									</div>
								</div>
							</div>
							<a href="capitais.jsp">
								<div class="panel-footer">
									<span class="pull-left">Mais detalhes</span> <span
										class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>
					<div class="col-lg-4 col-md-6">
						<div class="panel panel-red">
							<div class="panel-heading">
								<div class="row">
									<div class="col-xs-3">
										<i class="fa fa-binoculars fa-5x"></i>
									</div>
									<div class="col-xs-9 text-right">
										<div class="huge">Ranking</div>
										<div>Comparações entre cidades e estados</div>
									</div>
								</div>
							</div>
							<a href="ranking.jsp">
								<div class="panel-footer">
									<span class="pull-left">Mais detalhes</span> <span
										class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
									<div class="clearfix"></div>
								</div>
							</a>
						</div>
					</div>
					<!-- /.row -->

					<div class="row" style="display: none">
						<div class="col-lg-12">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">
										<i class="fa fa-bar-chart-o fa-fw"></i> Area Chart
									</h3>
								</div>
								<div class="panel-body">
									<div id="morris-area-chart"></div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.row -->

					<div class="row">
						<div class="col-lg-12">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">
										<i class="fa fa-long-arrow-right fa-fw"></i> Atualmente em
										nossa base
									</h3>
								</div>
								<div class="panel-body">
									<div id="morris-donut-chart"></div>
								</div>
							</div>
						</div>
						<div class="col-lg-6" style="display:none;">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title">
										<i class="fa fa-money fa-fw"></i> Principais indíces
									</h3>
								</div>
								<div class="panel-body">
									<div class="table-responsive">
										<table class="table table-bordered table-hover table-striped">
											<thead>
												<tr>
													<th>Renda per capita</th>
													<th>População</th>
													<th>Order Time</th>
													<th>Estado</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>3326</td>
													<td>10/21/2013</td>
													<td>3:29 PM</td>
													<td>$321.33</td>
												</tr>
												<tr>
													<td>3325</td>
													<td>10/21/2013</td>
													<td>3:20 PM</td>
													<td>$234.34</td>
												</tr>
												<tr>
													<td>3324</td>
													<td>10/21/2013</td>
													<td>3:03 PM</td>
													<td>$724.17</td>
												</tr>
												<tr>
													<td>3323</td>
													<td>10/21/2013</td>
													<td>3:00 PM</td>
													<td>$23.71</td>
												</tr>
												<tr>
													<td>3322</td>
													<td>10/21/2013</td>
													<td>2:49 PM</td>
													<td>$8345.23</td>
												</tr>
												<tr>
													<td>3321</td>
													<td>10/21/2013</td>
													<td>2:23 PM</td>
													<td>$245.12</td>
												</tr>
												<tr>
													<td>3320</td>
													<td>10/21/2013</td>
													<td>2:15 PM</td>
													<td>$5663.54</td>
												</tr>
												<tr>
													<td>3319</td>
													<td>10/21/2013</td>
													<td>2:13 PM</td>
													<td>$943.45</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/plugins/morris/raphael.min.js"></script>
		<script src="js/plugins/morris/morris.min.js"></script>
		<script src="js/plugins/morris/morris-data.js"></script>
</body>

</html>
