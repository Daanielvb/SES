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
		<link rel="icon" type="image/png" href="favicon.ico" />
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
                <h1>2 - Operações aritméticas, lógicas e com Strings em Python</h1>
            </div>
        </div>
        <!-- /.row -->
        </hr>


        <div class="row">
            <div class="col-md-9 aula" >
                <b>2.1 - Introdução</b>
                <p>Nessa lição iremos estudar sobre operações em Python. Como foi visto anteriormente, em Python podemos guardar valores de vários tipos em variáveis. Além disso, também podemos usar essas variáveis para realizar operações. Operações são procedimentos que podemos realizar em busca de uma transformação. Essas operações podem ser aritméticas, como operações matemáticas quaisquer (divisão, adição, subtração, resto da divisão) ou operações lógicas, como as operações de igualdade, negação, "OU" e "E". Além disso, também podemos realizar operações com Strings, que foram vistas na lição anterior e representam caracteres ou texto. Esse texto pode ser transformado de diversas formas, como transformação em maiúsculo e mínusculo, separação de letras e número de caracteres numa palavra, por exemplo.</p>

                <b>2.2 - Operações matemáticas:</b>
                <p>Existem diversas operações matemáticas possíveis de se realizar em Python, porém neste curso iremos mostrar apenas as principais. As operações de soma, subtração, multiplicação e divisão podem ser vistas no trecho de código abaixo, sua sintaxe se assemelha a utilizada na linguagem humana.</p>

                <P><img src="images/Imagem1Licao2.png"></P></P>

                <p>A ordem de precedência na realização das operações segue a mesma lógica da matemática, porém é possível alterar a ordem de execução das mesmas pelo uso de parentêses:</p>

                <P><img src="images/Imagem2Licao2.png"></P></P>

                <p>Outras operações como exponenciação, raiz quadrada e resto da divisão também existem em Python e para maior entendimento de sua sintaxe e funcionamento, confira os materiais complementares da aula.</p>

                <b>2.3 - Operações lógicas:</b>

                <p>As operações lógicas são operações conhecidas por todos nós indiretamente, usadas no nosso dia a dia porém não são reconhecidas por esse nome, seu objetivo é retornar um valor boleano, que como visto na lição anterior, representa verdadeiro ou falso. As principais operações lógicas são a de igualdade,  “E” e “OU”.  A operação de igualdade verifica se os valores de ambos os lados do operador == são equivalentes.</p>

                <P><img src="images/Imagem3Licao2.png"></P></P>

                <p>A operação “E”, ou AND em inglês é representada pela palavra reservada and em Python pelo simbolo retornará verdade apenas quando todas as expressões envolvidas foram verdadeiras.</p>

                <P><img src="images/Imagem4Licao2.png"></P></P>

                <p>A operação “OU” é representada pela palavra or em Python. Essa operação retornará verdadeiro sempre que houver uma expressão verdadeira envolvida. Caso não exista nenhuma expressão avaliada como verdadeira, a mesma retornará falso.</p>

                <P><img src="images/Imagem5Licao2.png"></P></P>

                <b>2.4 - Operações com Strings:</b>

                <p>Como já foi visto anteriormente, String são tipos de dados usados para representar elementos textuais. Essas palavras ou frases podem ser manipuladas de diversas formas, a depender do que se pretende fazer. A manipulação de Strings se dá por meio de funções, que serão descritas na lição 6. Neste momento não precisamos entender detalhadamente o que são funções, desta forma vamos considerar que funções são ferramentas que irão facilitar a programação.</p>

                <p>Existem muitas funções já criadas e incluidas no linguagem, desta forma vamos nos ater a utilização das principais funções de manipulação de Strings, e não a sua criação.</p>

                <p>As operações matemáticas de adição e multiplicação podem ser usadas em Strings, sendo a adição responsável por adicionar o texto indicado ou multiplicar ele.</p>

                <P><img src="images/Imagem6Licao2.png"></P></P>

                <p>Além dessas operações, também é possível separar apenas a parte desejada do texto. Cada letra da palavra representa um índice, que se inicia em 0. Desta forma, caso precisamos separar o texto “Hoje é um ótimo dia”, basta usarmos a função de quebra de String, representada pelo simbolo [:] usando os índices indicados. Ao utilizamos essa operação é preciso ficar atento ao tamanho total da String e onde queremos corta-la, pois podem ocorrer erros caso se tente remover um índice que não corresponde ao texto indicado.</p>

                <P><img src="images/Imagem7Licao2.png"></P></P>

                <p>Algumas das funções que também podemos usar são upper(), isalpha(), isdigit(), len(). Essas funções servem para converter um texto para letras maiúsculas, verificar se o texto possui apenas letras, verificar se o texto possui apenas digitos e retornar o tamanho de caracteres texto, respectivamente.</p>

                <P><img src="images/Imagem8Licao2.png"></P></P>

                <p>Podemos observar que a função len foi chamada de forma diferente das outras. Isso ocorre porque esta é uma função nativa de Python que pode ser aplicada a outros tipos de dados, como listas. Já as outras funções são restritas a Strings e por isso são invocadas utilizando um ponto logo após o texto.</p>

                <p>Para fixar todo o conteúdo visto nessa aula é recomendável que sejam realizados os exercícios de fixação e que sejam seguidas as instruções oferecidas no portal para tirar suas dúvidas.</p>
            </div>
            <div class="col-md-3">
            		<div class="row">
                		<h3><span class="glyphicon glyphicon-facetime-video" style="color: #337ab7"></span> Vídeos</h3>
                		<p>Material em vídeo</p>
                		<a class="btn btn-primary" onclick="loadVideos(4)">Vídeos <span class="glyphicon glyphicon-chevron-right"></span></a>
                	</div>
                	<div class="row">
                		<h3><span class="glyphicon glyphicon-book" style="color: #337ab7"></span> Material extra</h3>
                		<p>Material de blogs e textos</p>
                		<a class="btn btn-primary" href="linkLicao2.jsp">Material extra <span class="glyphicon glyphicon-chevron-right"></span></a>
                	</div>
                	<div class="row">
                		<h3><span class="glyphicon glyphicon-pencil" style="color: #337ab7"></span> Exercícios</h3>
                		<p>Exercite o conhecimento adquirido</p>
                		<a class="btn btn-primary" onclick="loadQuestions(4)">Exercícios <span class="glyphicon glyphicon-chevron-right"></span></a>
                	</div>
            </div>
        </div>
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