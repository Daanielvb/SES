<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.css"/>">
<title>Conjunto de dados dos estados e capitais brasileiras</title>
</head>
<body>

<div class="container-fluid">
<header>
</header>
<form action="<c:url value="/GastoController"/>" method="post">
<label> Estado </label>
<select name="origem" id="origemField">
<option value="empty">Selecione o estado</option>
<option value="ac">ACRE</option>
<option value="al">ALAGOAS</option>
<option value="am">AMAZONAS</option>
<option value="ap">AMAPÁ</option>
<option value="ba">BAHIA</option>
<option value="ce">CEARÁ</option>
<option value="df">DISTRITO FEDERAL</option>
<option value="es">ESPIRITO SANTO</option>
<option value="go">GOIÁS</option>
<option value="ma">MARANHÃO</option>
<option value="mt">MATO GROSSO</option>
<option value="ms">MATO GROSSO DO SUL</option>
<option value="mg">MINAS GERAIS</option>
<option value="pa">PARÁ</option>
<option value="pb">PARAÍBA</option>
<option value="pr">PARANÁ</option>
<option value="pe">PERNAMBUCO</option>
<option value="pi">PIAUÍ</option>
<option value="rj">RIO DE JANEIRO</option>
<option value="rn">RIO GRANDE DO NORTE</option>
<option value="rs">RIO GRANDE DO SUL</option>
<option value="rr">RORAIMA</option>
<option value="sc">SANTA CATARINA</option>
<option value="sp">SÃO PAULO</option>
<option value="se">SERGIPE</option>
<option value="to">TOCANTINS</option>
</select>
<button type="submit"> Enviar</button>
</form>

</div>
</body>
</html>