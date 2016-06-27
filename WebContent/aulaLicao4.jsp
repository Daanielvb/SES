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
                <h1>4 - Funções</h1>
            </div>
        </div>
        <div class="row">
            <div class="col-md-9 aula" >
                <b>4.1 - Introdução</b>
                <p>Uma função é um bloco de código organizado e reusável que é utilizado para desempenhar uma ação simples e relacionada. As funções dão à aplicação uma melhor modularidade e um grau maior de reuso de código. Python já vem com diversas funções implementadas (built-in) mas você pode criar suas próprias funções. A sintaxe básica para a definição de função em Python é:</p>

                <p>Assim como faz com estruturas de controle, Python usa indentação para delimitar o corpo da definição da função. O exemplo a seguir coloca um código fatorial dentro do corpo da função, assim, podemos chamar a função fatorial para obter o fatorial de um número:</p>

                <P><img src="images/Imagem1Licao4.png"></P></P>

                <p>Todos os procedimentos de Python são funções; se não está explicito o return no corpo do procedimento, então, o valor especial none é retornado, e se return arg é executado, então, o valor arg será imediatamente retornado. Nada mais na função é executado uma vez que o return é executado.</p>

                <b>4.2 - Parâmetros</b>
                <p>A maioria das funções precisam de parâmetros, e cada linguagem tem sua própria especificação de como os parâmetros são definidos. Python é flexível e fornece três opções de definição de parâmetros.</p>

                <b>4.2.1 - Parâmetros</b>
                <p>A maneira mais simples para passar parâmetros para uma função em Python é por posição. Na primeira linha da função, você especifica nomes de variáveis de definição para cada parâmetro; quando a função é chamada, os parâmetros utilizados no código são compatíveis com as variáveis de parâmetro de função com base em sua ordem. A função a seguir calcula x elevado a y:</p>

                <P><img src="images/Imagem2Licao4.png"></P></P>

                <p>Este método requer que os números de parâmetros usados pelo código de chamada correspondam ao número de parâmetros na definição da função, ou uma exceção TypeError será mostrada:</p>

                <P><img src="images/Imagem3Licao4.png"></P></P>

                <p>A função a seguir também calcula x elevado a y. Mas se y não for dado na chamada da função, o valor padrão de 2 é usado, e a função vira apenas uma função quadrado:</p>

                <P><img src="images/Imagem4Licao4.png"></P></P>

                <b>4.2.2 - Passar argumentos pelo nome do parâmetro</b>

                <p>Você também pode passar argumentos para uma função usando o nome correspondente ao parâmetro de função, em vez de a sua posição. Continuando com o exemplo anterior, podemos escrever:</p>

                <P><img src="images/Imagem5Licao4.png"></P></P>

                <b>4.3 - Variável local e global</b>

                <p>Vamos voltar a nossa função fator do começo desse capítulo:</p>

                <P><img src="images/Imagem6Licao4.png"></P></P>

                <p>Ambas as variáveis r e x são locais para qualquer chamada particular da função fatorial; Alterações nelas feitas quando a função está em execução não têm efeito sobre quaisquer variáveis fora da função. Todas as variáveis na lista de parâmetros de uma função, e quaisquer variáveis criadas dentro de uma função por uma atribuição (como r = 1 na verdade), são locais para a função.</p>

                <p>Você pode explicitamente fazer uma variável global, declarando-a antes da variável ser usada, utilizando a instrução global. As variáveis globais podem ser acessadas e alteradas pela função. Elas existem fora da função e também podem ser acessadas e alteradas por outras funções que lhes declarar global ou pelo código que não está dentro de uma função. Vamos ver um exemplo para ver a diferença entre variáveis locais e globais:</p>

                <P><img src="images/Imagem7Licao4.png"></P></P>

                <p>Isto define uma função que trata a como uma variável global e b como uma variável local e tentativas de modificar tanto a e b.</p>

                <p>Agora, teste esta função:</p>

                <P><img src="images/Imagem8Licao4.png"></P></P>

                <p>A atribuição a um dentro de diversao é uma atribuição para a variável global que também existe fora de diversao. Porque a é designado global em diversao, a atribuição modifica essa variável global para armazenar o valor 1 em vez do valor "one". O mesmo não é verdade para b. A variável local chamada de b dentro de diversao começa referindo-se ao mesmo valor que a variável b fora de diversao, mas a atribuição provoca b para apontar para um novo valor que é local para a função diversao.</p>

                <p>Para fixar todo o conteúdo visto nessa aula é recomendável que sejam realizados os exercícios de fixação e que sejam seguidas as instruções oferecidas no portal para tirar suas dúvidas.</p>
            </div>
            <div class="col-md-3">
            		<div class="row">
                		<h3><span class="glyphicon glyphicon-facetime-video" style="color: #337ab7"></span> Vídeos</h3>
                		<p>Material em vídeo</p>
                		<a class="btn btn-primary" onclick="loadVideos(6)">Vídeos <span class="glyphicon glyphicon-chevron-right"></span></a> 
                	</div>
                	<div class="row">
                		<h3><span class="glyphicon glyphicon-book" style="color: #337ab7"></span> Material extra</h3>
                		<p>Material de blogs e textos</p>
                		<a class="btn btn-primary" href="linkLicao4.jsp">Material extra <span class="glyphicon glyphicon-chevron-right"></span></a>
                	</div>
                	<div class="row">
                		<h3><span class="glyphicon glyphicon-pencil" style="color: #337ab7"></span> Exercícios</h3>
                		<p>Exercite o conhecimento adquirido</p>
                		<a class="btn btn-primary" onclick="loadQuestions(6)" >Exercícios <span class="glyphicon glyphicon-chevron-right"></span></a>
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
            	<a class="btn btn-primary btn-large" href=#> <span class="glyphicon glyphicon-file"></span> Lição Completa </a>
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