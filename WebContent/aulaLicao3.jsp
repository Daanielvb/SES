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
                <h1>3 - Estruturas de Controle</h1>
            </div>
        </div>
        <!-- /.row -->
        </hr>


        <div class="row">
            <div class="col-md-9 aula" >
                <b>3.1 - Introdução</b>
                <p>Dentro de um programa pode ser necessário que algumas linhas de código não sejam executadas ou que uma parte do código seja executada várias vezes. Esses acontecimentos são relacionados a uma determinada condição especificada no programa, desta forma os comandos de estrutura de controle de uma linguagem de programação especificam a ordem em que o processamento é feito.</p>

                <p>Até este ponto foi utilizada uma metodologia sequencial, onde todos os programas criados executam as suas instruções na ordem em que elas foram escritas, no entanto um programa pode ser desenvolvido com estruturas de seleção e de repetição que modificam a ordem de execução das operações e são estas estruturas que iremos aprender nesta lição.</p>

                <b>3.2 - Estrutura de Seleção</b>
                <p>As estruturas de seleção, assim como o nome diz, permitem alterar o fluxo de execução de forma a selecionar qual parte deve ser executada, essa seleção é feita a partir de uma condição que resulta em verdadeiro ou falso, ou seja, através de expressões relacionais e operações lógicas, que foram apresentadas na aula anterior. As estruturas de seleção podem ser classificadas em simples e compostas. Em Python é utilizada as palavras reservadas “IF”, “ELSE” e ”ELIF” em suas estruturas de seleção, onde o uso apenas do “IF” classificamos como uma estrutura simples e as combinações “IF”-“ELSE” e “IF”-“ELIF”-“ELSE” como compostas.</p>

                <b>3.2.1 - IF</b>
                <p>A estrutura “IF”, analisando a sua tradução da palavra reservada temos o “se”, desta forma podemos ver essa estrutura como: “se a condição for verdadeira, faça alguma ação”. Veja o exemplo abaixo:</p>

                <P><img src="images/Imagem1Licao3.png"></P></P>

                <p>Desta forma, a sequência de execução do programa é alterada de acordo com a veracidade da condição passada, por exemplo se ao invés da condição 5>3 tivéssemos que 3>5 a linha “print(“a experessão é verdadeira”)” não seria executada.</p>

                <b>3.2.2 - ELSE</b>

                <p>Nem sempre apenas o uso do “IF” será suficiente para realizar o que você deseja, as vezes é necessário que o programa execute algo caso a condição seja falsa e para isto utilizamos a clausula “ELSE”, com isso podemos mostrar o funcionamento do “ELSE” como: “Se a expressão for verdadeira, faça determinada ação, senão, faça outra ação. Assim como pode ser visto no exemplo abaixo:</p>

                <P><img src="images/Imagem2Licao3.png"></P></P>

                <p>A vantagem de usar “ELSE” é deixar os programas mais claros, visto que nós podemos informar o que deve ser feito caso a condição especificada seja falsa.</p>

                <b>3.2.2 - ELIF</b>

                <p>A vida real nem sempre apresenta problemas que sejam binários, ou seja dada uma condição execute uma coisa ou outra, existem problemas em que exigem mais opções a serem verificadas e para esses problemas Python apresenta a cláusula “ELIF”. O “ELIF” funciona como um “se não for isso, mas for isso, então faça algo”. Diferente do “ELSE”, pode ser usado mais de um “ELIF” por cláusula “IF” criada. Veja o exemplo abaixo:</p>

                <P><img src="images/Imagem3Licao3.png"></P></P>

                <p>Desta forma é possível controlar problemas em que tenham mais de uma condição relacionada podendo ser compreendida de forma mais clara.</p>

                <b>3.3 - Estruturas de Repetição</b>

                <p>Dentro de um programa, as vezes se faz necessário repetir determinada parte do código por um determinado período de vezes, desta forma temos as estruturas de repetição para estes casos. As estruturas de repetição são uma forma de executar blocos de comando somente sob determinadas condições, mas com a opção de repetir o mesmo bloco quantas vezes forem necessárias.</p>

                <p>As estruturas de repetição podem ser dividas em repetição pré-testada, onde uma condição é primeiramente verificada, e se for verdadeira o bloco é executado. No final da execução do bloco a condição é verificada novamente, em Python esta estrutura é o “WHILE”. A outra estrutura de repetição é a repetição com variável de controle, onde é designada uma variável de controle para cada iteração do bloco, em Python esta estrutura é chamada de “FOR”</p>

                <b>3.3.1 - WHILE</b>

                <p>O “WHILE” é uma estrutura de repetição que repete um bloco enquanto uma condição for verdadeira, onde a condição é uma expressão lógica e o bloco representa as linhas de programa a repetir enquanto o resultado da condição for verdadeiro, e a execução do programa continuará com a sentença ou comando que vem logo após o bloco do “WHILE”. Na imagem abaixo é apresentado o uso do “WHILE”:</p>

                <P><img src="images/Imagem4Licao3.png"></P></P>

                <p>No exemplo podemos notar que as linhas “print(a)” e “a=a+1” são repetidas até o caso em que o valor de “a” é igual a 5 e a condição se torna falsa. Neste código é importante notar a linha “a=a+1” pois é ela que garante que a condição imposta se torne falsa em algum momento de sua execução, ou seja, ao utilizarmos o “WHILE” temos que garantir que sua condição se torne falsa em algum momento da execução de seu bloco.</p>

                <p>O uso de estruturas de repetições é bastante interessante, o exemplo apresentado a cima é um exemplo de contador que imprime o valor de uma variável até outro determinado valor, outro exemplo de uso das estruturas de repetição é na criação de acumuladores, sendo a principal diferença entre um contador e um acumulador que existe um valor variável nos acumuladores. Veja o exemplo abaixo:</p>

                <P><img src="images/Imagem5Licao3.png"></P></P>

                <p>Neste exemplo a variável “b” realiza a soma dos valores da variável “a” a cada interação realizada.</p>

                <b>3.3.2 - FOR</b>

                <p>Você pode ter percebido que na implementação do “WHILE” devemos inicializar uma variável de forma a controlar o número de repetições que ele executa, o comando “FOR” vem de forma a compactar o processo abaixo:
                <ul>
                <li>Inicialização: Atribui o valor inicial a variável contadora.</li>
                <li>Teste: Verifica uma condição antes de decidir se executará o bloco de sentenças. Caso a condição seja falsa, interrompe as repetições.</li>
                <li>Execução: Executa o bloco de sentenças.</li>
                <li>Atualização: Atualiza a variável contadora para o próximo valor.</li></ul></p>

                <p>Veja abaixo um uso do “FOR”:</p>

                <P><img src="images/Imagem6Licao3.png"></P></P>

                <p>A partir deste exemplo você pode comparar com o primeiro exemplo apresentado no “WHILE”. Embora a instrução “FOR” facilite o trabalho, ela não substitui completamente o “WHILE”. Dependendo do problema deve-se optar por utilizar o “FOR” ou “WHILE”. Normalmente o “FOR” é utilizado no processamento de listas, quando se deseja processar um a um, já o “WHILE” é indicado para repetições nas quais não sabemos ainda quantas vezes vamos repetir ou com uma manipulação não sequencial.</p>

                <b>3.3.3 - Modificação na execução do bloco</b>

                <p>As estruturas de repetição possuem a característica de verificar a condição de parada apenas no início de cada repetição e executar o bloco por completo.</p>

                <p>Dependendo do problema pode ser interessante a habilidade de parar a execução dentro do bloco. Para esses casos Python possui a instrução “BREAK” que é utilizada para interromper a execução das estruturas de repetição independentemente do valor atual de sua condição.</p>

                <p>Outro caso é se a partir de uma determinada condição não seja mais necessário a execução completa do bloco. Para isso Python possui a instrução “CONTINUE”. veja os exemplos de uso dessas instruções abaixo:</p>

                <b>BREAK</b>
                <P><img src="images/Imagem7Licao3.png"></P></P>

                <p>Note que, apesar do “FOR” indicar o valor de parada como 10, ao chegar no número 2 que torna a condição do “IF” verdadeira, o código é interrompido e não é mais executado.</p>

                <b>CONTINUE</b>
                <P><img src="images/Imagem8Licao3.png"></P></P>
                <b>(a) Sem o uso do continue</b>

                <P><img src="images/Imagem9Licao3.png"></P></P>
                <b>(b) Com o uso do continue</b>

                <p>Comparando as imagens (a) e (b) podemos notar que na imagem (a) existe a repetição dos valores que são múltiplos de dois, isto ocorre porque é executado o “print” relacionado ao “IF” e o que não está relacionado a ele, na imagem (b) isto não ocorre, pois o uso do continue ignora o resto do bloco indo para a próxima iteração do programa.</p>

                <p>Para fixar todo o conteúdo visto nessa aula é recomendável que sejam realizados os exercícios de fixação e que sejam seguidas as instruções oferecidas no portal para tirar suas dúvidas.</p>
            </div>
            <div class="col-md-3">
            		<div class="row">
                		<h3><span class="glyphicon glyphicon-facetime-video" style="color: #337ab7"></span> Vídeos</h3>
                		<p>Material em vídeo</p>
                		<a class="btn btn-primary" onclick="loadVideos(5)">Vídeos <span class="glyphicon glyphicon-chevron-right"></span></a>
                	</div>
                	<div class="row">
                		<h3><span class="glyphicon glyphicon-book" style="color: #337ab7"></span> Material extra</h3>
                		<p>Material de blogs e textos</p>
                		<a class="btn btn-primary" href="linkLicao3.jsp">Material extra <span class="glyphicon glyphicon-chevron-right"></span></a>
                	</div>
                	<div class="row">
                		<h3><span class="glyphicon glyphicon-pencil" style="color: #337ab7"></span> Exercícios</h3>
                		<p>Exercite o conhecimento adquirido</p>
                		<a class="btn btn-primary" onclick="loadQuestions(5)">Exercícios <span class="glyphicon glyphicon-chevron-right"></span></a>
                	</div>
            </div>
        </div>
        <!-- /.row -->

        <hr>
        <hr>

        <!-- Pagination -->
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
	<style>
	
	.col-md-9.aula p{
		font-size:1.2em;
		}
	b{
		font-size:1.3em;
		}
	li{
	font-size:1.1em;
	}
	</style>
	</body>
</html>