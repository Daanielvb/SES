<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

        <!-- Page Heading -->
        <hr>
        <div class="row">
            <div class="col-lg-12">
                <h1>4 - Fun��es</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-9 aula" >
                <b>4.1 - Introdu��o</b>
                <p>Uma fun��o � um bloco de c�digo organizado e reus�vel que � utilizado para desempenhar uma a��o simples e relacionada. As fun��es d�o � aplica��o uma melhor modularidade e um grau maior de reuso de c�digo. Python j� vem com diversas fun��es implementadas (built-in) mas voc� pode criar suas pr�prias fun��es. A sintaxe b�sica para a defini��o de fun��o em Python �:</p>

                <p>Assim como faz com estruturas de controle, Python usa indenta��o para delimitar o corpo da defini��o da fun��o. O exemplo a seguir coloca um c�digo fatorial dentro do corpo da fun��o, assim, podemos chamar a fun��o fatorial para obter o fatorial de um n�mero:</p>

                <P><img src="images/Imagem1Licao4.png"></P></P>

                <p>Todos os procedimentos de Python s�o fun��es; se n�o est� explicito o return no corpo do procedimento, ent�o, o valor especial none � retornado, e se return arg � executado, ent�o, o valor arg ser� imediatamente retornado. Nada mais na fun��o � executado uma vez que o return � executado.</p>

                <b>4.2 - Par�metros</b>
                <p>A maioria das fun��es precisam de par�metros, e cada linguagem tem sua pr�pria especifica��o de como os par�metros s�o definidos. Python � flex�vel e fornece tr�s op��es de defini��o de par�metros.</p>

                <b>4.2.1 - Par�metros</b>
                <p>A maneira mais simples para passar par�metros para uma fun��o em Python � por posi��o. Na primeira linha da fun��o, voc� especifica nomes de vari�veis de defini��o para cada par�metro; quando a fun��o � chamada, os par�metros utilizados no c�digo s�o compat�veis com as vari�veis de par�metro de fun��o com base em sua ordem. A fun��o a seguir calcula x elevado a y:</p>

                <P><img src="images/Imagem2Licao4.png"></P></P>

                <p>Este m�todo requer que os n�meros de par�metros usados pelo c�digo de chamada correspondam ao n�mero de par�metros na defini��o da fun��o, ou uma exce��o TypeError ser� mostrada:</p>

                <P><img src="images/Imagem3Licao4.png"></P></P>

                <p>A fun��o a seguir tamb�m calcula x elevado a y. Mas se y n�o for dado na chamada da fun��o, o valor padr�o de 2 � usado, e a fun��o vira apenas uma fun��o quadrado:</p>

                <P><img src="images/Imagem4Licao4.png"></P></P>

                <b>4.2.2 - Passar argumentos pelo nome do par�metro</b>

                <p>Voc� tamb�m pode passar argumentos para uma fun��o usando o nome correspondente ao par�metro de fun��o, em vez de a sua posi��o. Continuando com o exemplo anterior, podemos escrever:</p>

                <P><img src="images/Imagem5Licao4.png"></P></P>

                <b>4.3 - Vari�vel local e global</b>

                <p>Vamos voltar a nossa fun��o fator do come�o desse cap�tulo:</p>

                <P><img src="images/Imagem6Licao4.png"></P></P>

                <p>Ambas as vari�veis r e x s�o locais para qualquer chamada particular da fun��o fatorial; Altera��es nelas feitas quando a fun��o est� em execu��o n�o t�m efeito sobre quaisquer vari�veis fora da fun��o. Todas as vari�veis na lista de par�metros de uma fun��o, e quaisquer vari�veis criadas dentro de uma fun��o por uma atribui��o (como r = 1 na verdade), s�o locais para a fun��o.</p>

                <p>Voc� pode explicitamente fazer uma vari�vel global, declarando-a antes da vari�vel ser usada, utilizando a instru��o global. As vari�veis globais podem ser acessadas e alteradas pela fun��o. Elas existem fora da fun��o e tamb�m podem ser acessadas e alteradas por outras fun��es que lhes declarar global ou pelo c�digo que n�o est� dentro de uma fun��o. Vamos ver um exemplo para ver a diferen�a entre vari�veis locais e globais:</p>

                <P><img src="images/Imagem7Licao4.png"></P></P>

                <p>Isto define uma fun��o que trata a como uma vari�vel global e b como uma vari�vel local e tentativas de modificar tanto a e b.</p>

                <p>Agora, teste esta fun��o:</p>

                <P><img src="images/Imagem8Licao4.png"></P></P>

                <p>A atribui��o a um dentro de diversao � uma atribui��o para a vari�vel global que tamb�m existe fora de diversao. Porque a � designado global em diversao, a atribui��o modifica essa vari�vel global para armazenar o valor 1 em vez do valor "one". O mesmo n�o � verdade para b. A vari�vel local chamada de b dentro de diversao come�a referindo-se ao mesmo valor que a vari�vel b fora de diversao, mas a atribui��o provoca b para apontar para um novo valor que � local para a fun��o diversao.</p>

                <p>Para fixar todo o conte�do visto nessa aula � recomend�vel que sejam realizados os exerc�cios de fixa��o e que sejam seguidas as instru��es oferecidas no portal para tirar suas d�vidas.</p>
            </div>
            <div class="col-md-3">
            		<div class="row">
                		<h3><span class="glyphicon glyphicon-facetime-video" style="color: #337ab7"></span> V�deos</h3>
                		<p>Material em v�deo</p>
                		<a class="btn btn-primary" onclick="loadVideos(6)">V�deos <span class="glyphicon glyphicon-chevron-right"></span></a> 
                	</div>
                	<div class="row">
                		<h3><span class="glyphicon glyphicon-book" style="color: #337ab7"></span> Material extra</h3>
                		<p>Material de blogs e textos</p>
                		<a class="btn btn-primary" href="linkLicao4.jsp">Material extra <span class="glyphicon glyphicon-chevron-right"></span></a>
                	</div>
                	<div class="row">
                		<h3><span class="glyphicon glyphicon-pencil" style="color: #337ab7"></span> Exerc�cios</h3>
                		<p>Exercite o conhecimento adquirido</p>
                		<a class="btn btn-primary" onclick="loadQuestions(6)" >Exerc�cios <span class="glyphicon glyphicon-chevron-right"></span></a>
                	</div>
            </div>
        </div>
        
        <!-- /.row -->
        </hr>

		
        <!-- /.row -->

        <hr>
        <hr>

        <!-- Pagination -->
        <div class="row text-center">
            	<a class="btn btn-primary btn-large" href=#> <span class="glyphicon glyphicon-file"></span> Li��o Completa </a>
            </div>
        </div>
        <!-- /.row -->

        <hr>


    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
	<script>
	
	function loadVideos(lessonId){
		$.ajax({
            url:'LessonController',
            data:{lessonId:lessonId,action:"video"},
            type:'get',
            cache:false,
            success:function(data){
            	//window.location = ("/ProjetoSI/videoLicao" + lessonId + ".jsp");
            	window.location = ("/ProjetoSI/videoLicao" + (lessonId - 2) + ".jsp");
            },
            error:function(){
            	//window.location = ("/ProjetoSI/videoLicao" + lessonId + ".jsp");
            	window.location = ("/ProjetoSI/videoLicao" + (lessonId - 2) + ".jsp");
            }
		})
	}
	
	function loadQuestions(lessonId){
         $.ajax({
            url:'LessonController',
            data:{lessonId:lessonId,action:"question"},
            type:'get',
            cache:false,
            success:function(data){
            	window.location = ("/ProjetoSI/exercicio.jsp");
            },
            error:function(){
             	console.log("deu ruim");
             	window.location = ("/ProjetoSI/exercicio.jsp");
            }
         }
    );
}
	
	
	</script>	
	</body>
</html>