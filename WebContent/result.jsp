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
<link href="css/style.css" rel="stylesheet">
<link rel="icon" type="image/png" href="images/logo2.png" />
<link href="css/plugins/morris.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">

				<a class="navbar-brand" href="index.jsp">Mais Brasil</a>
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
						<h1 class="page-header">${capital.nome}</h1>
						<img src="images/logo2.png" id="logo">
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									Dados básicos <i class="fa fa-long-arrow-right fa-fw"></i>
								</h3>
							</div>
							<div class="panel-body">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>Nome</th>
											<th>Pop. Atual</th>
											<th>Pop. Estimada</th>
											<th>Área(km)</th>
											<th>Dens. demográfica</th>
											<th>Prefeito</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">${capital.nome}</th>
											<td>${capital.populacaoA}</td>
											<td>${capital.populacaoE}</td>
											<td>${capital.densidadeD}</td>
											<td>${capital.densidadeD}</td>
											<td>${capital.nomePrefeito}</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									Clima <span id="data"></span> <i
										class="fa fa-long-arrow-right fa-fw"></i>
								</h3>
							</div>
							<div class="panel-body">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>Turno</th>
											<th>Cond. Climáticas</th>
											<th>Temp. Máx.</th>
											<th>Temp. Mín.</th>
											<th>Sens. Term. Temp. Máx</th>
											<th>Sens. Term. Temp. Mín</th>
											<th>Preciptação</th>
											<th>Chuva</th>
											<th>Neve</th>
											<th>Umidade</th>
											<th>Nebulosidade</th>
											<th>Ponto. Orva.</th>
											<th>Visibilidade</th>
											<th>Vento</th>
											<!--<th>Horário Nascer do Sol</th>
											<th>Horário Por do Sol</th>
											<th>Horário Nascer do Lua</th>
											<th>Horário Por da Lua</th>
											<th>Data</th>  -->
										</tr>
									</thead>
									<tbody>
										<tr>
											<th scope="row">${climaManha.turno}</th>
											<td>${climaManha.condicoesClima}</td>
											<td>${climaManha.tempMax}</td>
											<td>${climaManha.tempMin}</td>
											<td>${climaManha.sensacaoTermTempMax}</td>
											<td>${climaManha.sensacaoTermTempMin}</td>
											<td>${climaManha.precipt}</td>
											<td>${climaManha.chuva}</td>
											<td>${climaManha.neve}</td>
											<td>${climaManha.umidade}</td>
											<td>${climaManha.nebulosidade}</td>
											<td>${climaManha.pontoOrva}</td>
											<td>${climaManha.visib}</td>
											<td>${climaManha.vento}</td>
											<!--<td>${climaManha.nascerSol}</td>
											<td>${climaManha.porSol}</td>
											<td>${climaManha.nascerLua}</td>
											<td>${climaManha.porLua}</td>
											<td>${climaManha.data}</td>  -->
										</tr>
										<tr>
											<th scope="row">${climaTarde.turno}</th>
											<td>${climaTarde.condicoesClima}</td>
											<td>${climaTarde.tempMax}</td>
											<td>${climaTarde.tempMin}</td>
											<td>${climaTarde.sensacaoTermTempMax}</td>
											<td>${climaTarde.sensacaoTermTempMin}</td>
											<td>${climaTarde.precipt}</td>
											<td>${climaTarde.chuva}</td>
											<td>${climaTarde.neve}</td>
											<td>${climaTarde.umidade}</td>
											<td>${climaTarde.nebulosidade}</td>
											<td>${climaTarde.pontoOrva}</td>
											<td>${climaTarde.visib}</td>
											<td>${climaTarde.vento}</td>
											<!--<td>${climaTarde.nascerSol}</td>
											<td>${climaTarde.porSol}</td>
											<td>${climaTarde.nascerLua}</td>
											<td>${climaTarde.porLua}</td>
											<td>${climaManha.data}</td>  -->
										</tr>
										<tr>
											<th scope="row">${climaNoite.turno}</th>
											<td>${climaNoite.condicoesClima}</td>
											<td>${climaNoite.tempMax}</td>
											<td>${climaNoite.tempMin}</td>
											<td>${climaNoite.sensacaoTermTempMax}</td>
											<td>${climaNoite.sensacaoTermTempMin}</td>
											<td>${climaNoite.precipt}</td>
											<td>${climaNoite.chuva}</td>
											<td>${climaNoite.neve}</td>
											<td>${climaNoite.umidade}</td>
											<td>${climaNoite.nebulosidade}</td>
											<td>${climaNoite.pontoOrva}</td>
											<td>${climaNoite.visib}</td>
											<td>${climaNoite.vento}</td>
											<!--<td>${climaNoite.nascerSol}</td>
											<td>${climaNoite.porSol}</td>
											<td>${climaNoite.nascerLua}</td>
											<td>${climaNoite.porLua}</td>
											<td>${climaManha.data}</td>  -->
										</tr>
										<tr>
											<th scope="row">${climaMadrugada.turno}</th>
											<td>${climaMadrugada.condicoesClima}</td>
											<td>${climaMadrugada.tempMax}</td>
											<td>${climaMadrugada.tempMin}</td>
											<td>${climaMadrugada.sensacaoTermTempMax}</td>
											<td>${climaMadrugada.sensacaoTermTempMin}</td>
											<td>${climaMadrugada.precipt}</td>
											<td>${climaMadrugada.chuva}</td>
											<td>${climaMadrugada.neve}</td>
											<td>${climaMadrugada.umidade}</td>
											<td>${climaMadrugada.nebulosidade}</td>
											<td>${climaMadrugada.pontoOrva}</td>
											<td>${climaMadrugada.visib}</td>
											<td>${climaMadrugada.vento}</td>
											<!--<td>${climaMadrugada.nascerSol}</td>
											<td>${climaMadrugada.porSol}</td>
											<td>${climaMadrugada.nascerLua}</td>
											<td>${climaMadrugada.porLua}</td>
											<td>${climaManha.data}</td>  -->
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">
									Pontos turísticos <i class="fa fa-long-arrow-right fa-fw"></i>
								</h3>
							</div>
							<div class="panel-body">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>Nome</th>
											<th>Endereço</th>
											<th>Avaliação</th>
											<th>Comentário #1</th>
											<th>Comentário #2</th>
											<th>Comentário #3</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${destino}" var="elt">
											<tr>
													<th scope="row">${elt.atracao}</th>
													<td>${elt.endereco}</td>
													<td>${elt.avaliacao}</td>
													<c:forEach items="${elt.comentarios}" var="elt2" varStatus="loop">
														<c:if test="${loop.index < 3}">														
														<td>${elt2.descricao}</td>
														</c:if>
													</c:forEach>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<span class="pull-right"><i class="fa fa-arrow-circle-left"></i><a
					href="index.jsp">Voltar</a></span>
			</div>
		</div>
	</div>
	<script>
		today = new Date().toJSON().slice(0, 10);
		document.getElementById("data").innerHTML = "de hoje (" + today + ")";
	</script>
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>


</body>

</html>
