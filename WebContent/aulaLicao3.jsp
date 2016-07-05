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
                <b>3.1 - Introdu��o</b>
                <p>Dentro de um programa pode ser necess�rio que algumas linhas de c�digo n�o sejam executadas ou que uma parte do c�digo seja executada v�rias vezes. Esses acontecimentos s�o relacionados a uma determinada condi��o especificada no programa, desta forma os comandos de estrutura de controle de uma linguagem de programa��o especificam a ordem em que o processamento � feito.</p>

                <p>At� este ponto foi utilizada uma metodologia sequencial, onde todos os programas criados executam as suas instru��es na ordem em que elas foram escritas, no entanto um programa pode ser desenvolvido com estruturas de sele��o e de repeti��o que modificam a ordem de execu��o das opera��es e s�o estas estruturas que iremos aprender nesta li��o.</p>

                <b>3.2 - Estrutura de Sele��o</b>
                <p>As estruturas de sele��o, assim como o nome diz, permitem alterar o fluxo de execu��o de forma a selecionar qual parte deve ser executada, essa sele��o � feita a partir de uma condi��o que resulta em verdadeiro ou falso, ou seja, atrav�s de express�es relacionais e opera��es l�gicas, que foram apresentadas na aula anterior. As estruturas de sele��o podem ser classificadas em simples e compostas. Em Python � utilizada as palavras reservadas �IF�, �ELSE� e �ELIF� em suas estruturas de sele��o, onde o uso apenas do �IF� classificamos como uma estrutura simples e as combina��es �IF�-�ELSE� e �IF�-�ELIF�-�ELSE� como compostas.</p>

                <b>3.2.1 - IF</b>
                <p>A estrutura �IF�, analisando a sua tradu��o da palavra reservada temos o �se�, desta forma podemos ver essa estrutura como: �se a condi��o for verdadeira, fa�a alguma a��o�. Veja o exemplo abaixo:</p>

                <P><img src="images/Imagem1Licao3.png"></P></P>

                <p>Desta forma, a sequ�ncia de execu��o do programa � alterada de acordo com a veracidade da condi��o passada, por exemplo se ao inv�s da condi��o 5>3 tiv�ssemos que 3>5 a linha �print(�a experess�o � verdadeira�)� n�o seria executada.</p>

                <b>3.2.2 - ELSE</b>

                <p>Nem sempre apenas o uso do �IF� ser� suficiente para realizar o que voc� deseja, as vezes � necess�rio que o programa execute algo caso a condi��o seja falsa e para isto utilizamos a clausula �ELSE�, com isso podemos mostrar o funcionamento do �ELSE� como: �Se a express�o for verdadeira, fa�a determinada a��o, sen�o, fa�a outra a��o. Assim como pode ser visto no exemplo abaixo:</p>

                <P><img src="images/Imagem2Licao3.png"></P></P>

                <p>A vantagem de usar �ELSE� � deixar os programas mais claros, visto que n�s podemos informar o que deve ser feito caso a condi��o especificada seja falsa.</p>

                <b>3.2.2 - ELIF</b>

                <p>A vida real nem sempre apresenta problemas que sejam bin�rios, ou seja dada uma condi��o execute uma coisa ou outra, existem problemas em que exigem mais op��es a serem verificadas e para esses problemas Python apresenta a cl�usula �ELIF�. O �ELIF� funciona como um �se n�o for isso, mas for isso, ent�o fa�a algo�. Diferente do �ELSE�, pode ser usado mais de um �ELIF� por cl�usula �IF� criada. Veja o exemplo abaixo:</p>

                <P><img src="images/Imagem3Licao3.png"></P></P>

                <p>Desta forma � poss�vel controlar problemas em que tenham mais de uma condi��o relacionada podendo ser compreendida de forma mais clara.</p>

                <b>3.3 - Estruturas de Repeti��o</b>

                <p>Dentro de um programa, as vezes se faz necess�rio repetir determinada parte do c�digo por um determinado per�odo de vezes, desta forma temos as estruturas de repeti��o para estes casos. As estruturas de repeti��o s�o uma forma de executar blocos de comando somente sob determinadas condi��es, mas com a op��o de repetir o mesmo bloco quantas vezes forem necess�rias.</p>

                <p>As estruturas de repeti��o podem ser dividas em repeti��o pr�-testada, onde uma condi��o � primeiramente verificada, e se for verdadeira o bloco � executado. No final da execu��o do bloco a condi��o � verificada novamente, em Python esta estrutura � o �WHILE�. A outra estrutura de repeti��o � a repeti��o com vari�vel de controle, onde � designada uma vari�vel de controle para cada itera��o do bloco, em Python esta estrutura � chamada de �FOR�</p>

                <b>3.3.1 - WHILE</b>

                <p>O �WHILE� � uma estrutura de repeti��o que repete um bloco enquanto uma condi��o for verdadeira, onde a condi��o � uma express�o l�gica e o bloco representa as linhas de programa a repetir enquanto o resultado da condi��o for verdadeiro, e a execu��o do programa continuar� com a senten�a ou comando que vem logo ap�s o bloco do �WHILE�. Na imagem abaixo � apresentado o uso do �WHILE�:</p>

                <P><img src="images/Imagem4Licao3.png"></P></P>

                <p>No exemplo podemos notar que as linhas �print(a)� e �a=a+1� s�o repetidas at� o caso em que o valor de �a� � igual a 5 e a condi��o se torna falsa. Neste c�digo � importante notar a linha �a=a+1� pois � ela que garante que a condi��o imposta se torne falsa em algum momento de sua execu��o, ou seja, ao utilizarmos o �WHILE� temos que garantir que sua condi��o se torne falsa em algum momento da execu��o de seu bloco.</p>

                <p>O uso de estruturas de repeti��es � bastante interessante, o exemplo apresentado a cima � um exemplo de contador que imprime o valor de uma vari�vel at� outro determinado valor, outro exemplo de uso das estruturas de repeti��o � na cria��o de acumuladores, sendo a principal diferen�a entre um contador e um acumulador que existe um valor vari�vel nos acumuladores. Veja o exemplo abaixo:</p>

                <P><img src="images/Imagem5Licao3.png"></P></P>

                <p>Neste exemplo a vari�vel �b� realiza a soma dos valores da vari�vel �a� a cada intera��o realizada.</p>

                <b>3.3.2 - FOR</b>

                <p>Voc� pode ter percebido que na implementa��o do �WHILE� devemos inicializar uma vari�vel de forma a controlar o n�mero de repeti��es que ele executa, o comando �FOR� vem de forma a compactar o processo abaixo:
                <ul>
                <li>Inicializa��o: Atribui o valor inicial a vari�vel contadora.</li>
                <li>Teste: Verifica uma condi��o antes de decidir se executar� o bloco de senten�as. Caso a condi��o seja falsa, interrompe as repeti��es.</li>
                <li>Execu��o: Executa o bloco de senten�as.</li>
                <li>Atualiza��o: Atualiza a vari�vel contadora para o pr�ximo valor.</li></ul></p>

                <p>Veja abaixo um uso do �FOR�:</p>

                <P><img src="images/Imagem6Licao3.png"></P></P>

                <p>A partir deste exemplo voc� pode comparar com o primeiro exemplo apresentado no �WHILE�. Embora a instru��o �FOR� facilite o trabalho, ela n�o substitui completamente o �WHILE�. Dependendo do problema deve-se optar por utilizar o �FOR� ou �WHILE�. Normalmente o �FOR� � utilizado no processamento de listas, quando se deseja processar um a um, j� o �WHILE� � indicado para repeti��es nas quais n�o sabemos ainda quantas vezes vamos repetir ou com uma manipula��o n�o sequencial.</p>

                <b>3.3.3 - Modifica��o na execu��o do bloco</b>

                <p>As estruturas de repeti��o possuem a caracter�stica de verificar a condi��o de parada apenas no in�cio de cada repeti��o e executar o bloco por completo.</p>

                <p>Dependendo do problema pode ser interessante a habilidade de parar a execu��o dentro do bloco. Para esses casos Python possui a instru��o �BREAK� que � utilizada para interromper a execu��o das estruturas de repeti��o independentemente do valor atual de sua condi��o.</p>

                <p>Outro caso � se a partir de uma determinada condi��o n�o seja mais necess�rio a execu��o completa do bloco. Para isso Python possui a instru��o �CONTINUE�. veja os exemplos de uso dessas instru��es abaixo:</p>

                <b>BREAK</b>
                <P><img src="images/Imagem7Licao3.png"></P></P>

                <p>Note que, apesar do �FOR� indicar o valor de parada como 10, ao chegar no n�mero 2 que torna a condi��o do �IF� verdadeira, o c�digo � interrompido e n�o � mais executado.</p>

                <b>CONTINUE</b>
                <P><img src="images/Imagem8Licao3.png"></P></P>
                <b>(a) Sem o uso do continue</b>

                <P><img src="images/Imagem9Licao3.png"></P></P>
                <b>(b) Com o uso do continue</b>

                <p>Comparando as imagens (a) e (b) podemos notar que na imagem (a) existe a repeti��o dos valores que s�o m�ltiplos de dois, isto ocorre porque � executado o �print� relacionado ao �IF� e o que n�o est� relacionado a ele, na imagem (b) isto n�o ocorre, pois o uso do continue ignora o resto do bloco indo para a pr�xima itera��o do programa.</p>

                <p>Para fixar todo o conte�do visto nessa aula � recomend�vel que sejam realizados os exerc�cios de fixa��o e que sejam seguidas as instru��es oferecidas no portal para tirar suas d�vidas.</p>
            </div>
            <div class="col-md-3">
            		<div class="row">
                		<h3><span class="glyphicon glyphicon-facetime-video" style="color: #337ab7"></span> V�deos</h3>
                		<p>Material em v�deo</p>
                		<a class="btn btn-primary" onclick="loadVideos(5)">V�deos <span class="glyphicon glyphicon-chevron-right"></span></a>
                	</div>
                	<div class="row">
                		<h3><span class="glyphicon glyphicon-book" style="color: #337ab7"></span> Material extra</h3>
                		<p>Material de blogs e textos</p>
                		<a class="btn btn-primary" href="linkLicao3.jsp">Material extra <span class="glyphicon glyphicon-chevron-right"></span></a>
                	</div>
                	<div class="row">
                		<h3><span class="glyphicon glyphicon-pencil" style="color: #337ab7"></span> Exerc�cios</h3>
                		<p>Exercite o conhecimento adquirido</p>
                		<a class="btn btn-primary" onclick="loadQuestions(5)">Exerc�cios <span class="glyphicon glyphicon-chevron-right"></span></a>
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