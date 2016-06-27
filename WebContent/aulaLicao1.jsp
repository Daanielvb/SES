<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                <h1>1 - Tipos Primitivos e Variáveis</h1>
            </div>
        </div>
        <!-- /.row -->
        </hr>


        <div class="row">
            <div class="col-md-9 aula" >
                <b>1.1 - Introdução</b>
                <p>Iniciaremos nossos estudos sobre programação com Python a partir dos conceito básicos de tipos primitivos e variáveis. No mundo da programação estamos sempre tratando com valores, que podem ser de vários tipos : valores decimais, lógicos, textuais, listas de elementos, entre outros. Esses valores podem e precisam ser armazenados para que as operações sejam feitas ao longo dos nossos programas, o lugar onde armazenamos esses valores são as variáveis.</p>

                <b>1.2 - Tipos primitivos:</b>
                <p>Em programação, dizemos que o tipo do dado serve para determinar o que ele pode fazer. Com isso, temos maior controle sobre como vamos construír nosso código e como o programa irá interpretar o que desejamos representar. Em várias linguagens de programação o tipo do dado também determina se faz sentido usar um determinado tipo de dado numa operação (static typing). No caso de Python, isso não ocorre. Ao invés disso, ele guarda o tipo do objeto juntamente com o objeto (chamado de duck typing).</p>

                <p>Os tipos primitivos (ou built-in) podem ser agrupados em algumas classes. De acordo com a hierarquia oficial de Python, essas classes são:
                <ul>
                <li>Tipos numéricos;</li>
                <li>Sequências;</li>
                <li>Conjuntos (sets); e,</li>
                <li>Mapeamentos (mappings).</li>
                Há alguns mais, porém, não serão discutidos aqui.</ul></p>

                <b>1.2.1 - Tipos numéricos:</b>
                <p>São tipos que representam as classes de números matemáticos. Eles são:
                <ul>
                <li><b>Int:</b> números inteiros. Seu limite vai de -2,147,483,647 até 2,147,483,647;</li>
                <li><b>Long:</b> são inteiros com capacidade de bits maiores (), consequentemente podendo atingir intervalos maiores que 2,147,483,647 e menores que -2,147,483,647;</li>
                <li><b>Float:</b> números de ponto flutuante, conhecidos como decimais;</li>
                <li><b>Complex:</b> números complexos. Devem possuir uma parte imaginária.</li></ul></p> 

                Para conferir os tipos você pode utilizar o comando type() na shell:
                <P><img src="images/Imagem1Licao1.png"></P></P>

                <b>1.2.3 - Tipo sequência:</b>
                <P><ul>
                <li>String (Str): é uma sequência de caracteres envolvidos por aspas simples ( ) ou dupla ( );</li>
                <li>Byte: sequência de inteiros no intervalo de 0 à 255;</li>
                <li>Byte array: como os bytes, mas são mutáveis;</li>
                <li>List: lista de elementos. Podem ter vários tipos ou ser de apenas um tipo;</li>
                <li>Tuple: também é uma lista de elementos, porém, imutável.</li></ul></P>

                Para conferir os tipos você pode utilizar o comando type() na shell:
                <P><img src="images/Imagem2Licao1.png"></P></P>

                Para exemplificar uma lista e uma tupla segue a imagem abaixo:
                <P><img src="images/Imagem3Licao1.png"></P></P>

                <p>Note que as tuplas 1 e 2 são diferentes, apesar de possuírem o mesmo elemento. Isso se dá por que elas são tuplas e sua ordem importa.</p>

                <b>1.2.4 - Tipos especiais (conjuntos, mapas, e booleanos):</b>
                <p><ul>
                <li>Set: uma coleção não-ordenada de objetos únicos, é um conjunto;</li>
                <li>Frozen set: semelhante a um set, mas é imutável. Também é um conjunto;</li>
                <li>Dict: em Python há o conceitos de dicionários. Eles são como uma função que mapeia um domínio em outro correspondente, ou como arrays associativos. Cada elemento da lista está associado com uma definição. Pertence ao tipo mapa (mapping);</li>
                <li>Tipo boolean: um tipo um tanto especial é o tipo boolean. Ele é um conjunto de duas expressões que possuem um valor-verdade. Elas são: True e False. São muito importantes para a programação, pois são eles que gatilham as avaliações de expressões condicionais e de controle de fluxo. Elas possuem operações de comparação como: maior e menor que (com sua variação de igualdade), igualdade entre duas expressões, desigualdade entre duas expressões, e identidade. Também há operadores booleanos, eles são: OU (or), E (and), e NÃO (not). Na próxima lição você aprenderá mais sobre as operações com o tipo booleano.</li></ul></p>

                <P><img src="images/Imagem4Licao1.png"></P></P>

                <b>1.3 - Variáveis:</b>

                <p>Em programação, uma variável é algo que segura um valor que pode mudar a qualquer momento. Em termos mais simples, uma variável é uma caixa na qual você pode colocar o que quiser. Você pode usar variáveis para guardar todos os tipos de objetos, mas aqui vamos ver como guardar números e strings nas variáveis.</p>

                <P><img src="images/Imagem5Licao1.png"></P></P>

                <p>Esse código declara uma variável chamada sorte, e nela coloca o valor inteiro 7. Quando pedimos para a shell dizer qual o valor que está na variável, recebemos 7 como resposta.
                Podemos, também, mudar o valor de uma mesma variável. Por exemplo:</p>

                <P><img src="images/Imagem6Licao1.png"></P></P>

                <p>Declaramos uma variável chamada mudar, colocamos o valor inteiro 3 nela e verificamos se o valor está lá dentro. Depois, colocamos o valor 9 em mudar, e, novamente, perguntamos o que está guardado em em mudar. O que aconteceu aqui? Python jogou fora o valor 3 e substituiu por 9. Isso é uma atualização de valor da variável.</p>
                
                <p>Agora observe que criamos uma nova variável chamada de diferente e colocamos 12 nela. Agora temos duas variáveis independentes, mudar e diferente, que possuem informações distintas, isto é, que colocar um novo valor em uma delas não afeta a outra.</p>

                <p>Também é possível atribuir a uma variável uma outra variável. Por exemplo:</p>

                <P><img src="images/Imagem7Licao1.png"></P></P>

                <p>Para entender esse código lembre-se de que o nome da variável está sempre do lado esquerdo da igualdade (o operador de atribuição), e o valor que a variável recebe está do lado direito. Primeiro o nome, depois o valor.</p>

                <p>Iniciamos declarando que vermelho possui valor 5, e azul possui valor 10. Como você pode ver, podemos passar vários argumentos para a função print() e pedir para ela devolver os valores dentro de múltiplas variáveis.
                Depois, declaramos uma terceira variável amarelo. Dizemos ao interpretador que queremos que amarelo possua o mesmo valor de vermelho. Ele sabe que vermelho é 5, então coloca esse valor em amarelo. Então, fazemos o mesmo com vermelho, mas agora copiando de azul. Então Python se desfaz do antigo valor de vermelho e coloca o mesmo de azul. Quando pedimos para ver o valor das três variáveis novamente, percebemos que amarelo não possui o mesmo valor de vermelho. Isso se dá por que amarelo possui o valor de vermelho no momento que vermelho também possuia aquele valor, e não no momento atual. Então o valor de amarelo não mudará o que quer que aconteça com vermelho.</p>

                <p>Note que em nenhum momento usamos acentos, caracteres especiais ou iniciamos o nome de uma variável com um número. Isso não é permitido em Python e em muitas linguagens de programação.</p>

                <p>Nesta lição aprendemos o básico sobre os tipos primitivos e sobre variáveis. Não esqueça de verificar o material extra para se aprofundar nos tópicos e para reforçar algum conceito que não tenha ficado muito claro. Na próxima lição, vamos aprender mais sobre as possíveis operações com esses tipos de dados primitivos e variáveis.</p>
            </div>
            <div class="col-md-3">
            		<div class="row">
                		<h3><span class="glyphicon glyphicon-facetime-video" style="color: #337ab7"></span> Vídeos</h3>
                		<p>Material em vídeo</p>
                		<!--<a class="btn btn-primary" onclick="loadVideos(1)">Vídeos <span class="glyphicon glyphicon-chevron-right"></span></a>-->
                		 <a class="btn btn-primary" onclick="loadVideos(3)">Vídeos <span class="glyphicon glyphicon-chevron-right"></span></a> 
                	</div>
                	<div class="row">
                		<h3><span class="glyphicon glyphicon-book" style="color: #337ab7"></span> Material extra</h3>
                		<p>Material de blogs e textos</p>
                		<a class="btn btn-primary" href="linkLicao1.html">Material extra <span class="glyphicon glyphicon-chevron-right"></span></a>
                	</div>
                	<div class="row">
                		<h3><span class="glyphicon glyphicon-pencil" style="color: #337ab7"></span> Exercícios</h3>
                		<p>Exercite o conhecimento adquirido</p>
                		<!--<a class="btn btn-primary" onclick="loadQuestions(1)" >Exercícios <span class="glyphicon glyphicon-chevron-right"></span></a>-->
                		<a class="btn btn-primary" onclick="loadQuestions(3)" >Exercícios <span class="glyphicon glyphicon-chevron-right"></span></a>
                	</div>
            </div>
        </div>

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