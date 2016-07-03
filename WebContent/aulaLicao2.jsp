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
                <h1>2 - Opera��es aritm�ticas, l�gicas e com Strings em Python</h1>
            </div>
        </div>
        <!-- /.row -->
        </hr>


        <div class="row">
            <div class="col-md-9 aula" >
                <b>2.1 - Introdu��o</b>
                <p>Nessa li��o iremos estudar sobre opera��es em Python. Como foi visto anteriormente, em Python podemos guardar valores de v�rios tipos em vari�veis. Al�m disso, tamb�m podemos usar essas vari�veis para realizar opera��es. Opera��es s�o procedimentos que podemos realizar em busca de uma transforma��o. Essas opera��es podem ser aritm�ticas, como opera��es matem�ticas quaisquer (divis�o, adi��o, subtra��o, resto da divis�o) ou opera��es l�gicas, como as opera��es de igualdade, nega��o, "OU" e "E". Al�m disso, tamb�m podemos realizar opera��es com Strings, que foram vistas na li��o anterior e representam caracteres ou texto. Esse texto pode ser transformado de diversas formas, como transforma��o em mai�sculo e m�nusculo, separa��o de letras e n�mero de caracteres numa palavra, por exemplo.</p>

                <b>2.2 - Opera��es matem�ticas:</b>
                <p>Existem diversas opera��es matem�ticas poss�veis de se realizar em Python, por�m neste curso iremos mostrar apenas as principais. As opera��es de soma, subtra��o, multiplica��o e divis�o podem ser vistas no trecho de c�digo abaixo, sua sintaxe se assemelha a utilizada na linguagem humana.</p>

                <P><img src="images/Imagem1Licao2.png"></P></P>

                <p>A ordem de preced�ncia na realiza��o das opera��es segue a mesma l�gica da matem�tica, por�m � poss�vel alterar a ordem de execu��o das mesmas pelo uso de parent�ses:</p>

                <P><img src="images/Imagem2Licao2.png"></P></P>

                <p>Outras opera��es como exponencia��o, raiz quadrada e resto da divis�o tamb�m existem em Python e para maior entendimento de sua sintaxe e funcionamento, confira os materiais complementares da aula.</p>

                <b>2.3 - Opera��es l�gicas:</b>

                <p>As opera��es l�gicas s�o opera��es conhecidas por todos n�s indiretamente, usadas no nosso dia a dia por�m n�o s�o reconhecidas por esse nome, seu objetivo � retornar um valor boleano, que como visto na li��o anterior, representa verdadeiro ou falso. As principais opera��es l�gicas s�o a de igualdade,  �E� e �OU�.  A opera��o de igualdade verifica se os valores de ambos os lados do operador == s�o equivalentes.</p>

                <P><img src="images/Imagem3Licao2.png"></P></P>

                <p>A opera��o �E�, ou AND em ingl�s � representada pela palavra reservada and em Python pelo simbolo retornar� verdade apenas quando todas as express�es envolvidas foram verdadeiras.</p>

                <P><img src="images/Imagem4Licao2.png"></P></P>

                <p>A opera��o �OU� � representada pela palavra or em Python. Essa opera��o retornar� verdadeiro sempre que houver uma express�o verdadeira envolvida. Caso n�o exista nenhuma express�o avaliada como verdadeira, a mesma retornar� falso.</p>

                <P><img src="images/Imagem5Licao2.png"></P></P>

                <b>2.4 - Opera��es com Strings:</b>

                <p>Como j� foi visto anteriormente, String s�o tipos de dados usados para representar elementos textuais. Essas palavras ou frases podem ser manipuladas de diversas formas, a depender do que se pretende fazer. A manipula��o de Strings se d� por meio de fun��es, que ser�o descritas na li��o 6. Neste momento n�o precisamos entender detalhadamente o que s�o fun��es, desta forma vamos considerar que fun��es s�o ferramentas que ir�o facilitar a programa��o.</p>

                <p>Existem muitas fun��es j� criadas e incluidas no linguagem, desta forma vamos nos ater a utiliza��o das principais fun��es de manipula��o de Strings, e n�o a sua cria��o.</p>

                <p>As opera��es matem�ticas de adi��o e multiplica��o podem ser usadas em Strings, sendo a adi��o respons�vel por adicionar o texto indicado ou multiplicar ele.</p>

                <P><img src="images/Imagem6Licao2.png"></P></P>

                <p>Al�m dessas opera��es, tamb�m � poss�vel separar apenas a parte desejada do texto. Cada letra da palavra representa um �ndice, que se inicia em 0. Desta forma, caso precisamos separar o texto �Hoje � um �timo dia�, basta usarmos a fun��o de quebra de String, representada pelo simbolo [:] usando os �ndices indicados. Ao utilizamos essa opera��o � preciso ficar atento ao tamanho total da String e onde queremos corta-la, pois podem ocorrer erros caso se tente remover um �ndice que n�o corresponde ao texto indicado.</p>

                <P><img src="images/Imagem7Licao2.png"></P></P>

                <p>Algumas das fun��es que tamb�m podemos usar s�o upper(), isalpha(), isdigit(), len(). Essas fun��es servem para converter um texto para letras mai�sculas, verificar se o texto possui apenas letras, verificar se o texto possui apenas digitos e retornar o tamanho de caracteres texto, respectivamente.</p>

                <P><img src="images/Imagem8Licao2.png"></P></P>

                <p>Podemos observar que a fun��o len foi chamada de forma diferente das outras. Isso ocorre porque esta � uma fun��o nativa de Python que pode ser aplicada a outros tipos de dados, como listas. J� as outras fun��es s�o restritas a Strings e por isso s�o invocadas utilizando um ponto logo ap�s o texto.</p>

                <p>Para fixar todo o conte�do visto nessa aula � recomend�vel que sejam realizados os exerc�cios de fixa��o e que sejam seguidas as instru��es oferecidas no portal para tirar suas d�vidas.</p>
            </div>
            <div class="col-md-3">
            		<div class="row">
                		<h3><span class="glyphicon glyphicon-facetime-video" style="color: #337ab7"></span> V�deos</h3>
                		<p>Material em v�deo</p>
                		<a class="btn btn-primary" onclick="loadVideos(4)">V�deos <span class="glyphicon glyphicon-chevron-right"></span></a>
                	</div>
                	<div class="row">
                		<h3><span class="glyphicon glyphicon-book" style="color: #337ab7"></span> Material extra</h3>
                		<p>Material de blogs e textos</p>
                		<a class="btn btn-primary" href="linkLicao2.jsp">Material extra <span class="glyphicon glyphicon-chevron-right"></span></a>
                	</div>
                	<div class="row">
                		<h3><span class="glyphicon glyphicon-pencil" style="color: #337ab7"></span> Exerc�cios</h3>
                		<p>Exercite o conhecimento adquirido</p>
                		<a class="btn btn-primary" onclick="loadQuestions(4)">Exerc�cios <span class="glyphicon glyphicon-chevron-right"></span></a>
                	</div>
            </div>
        </div>
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