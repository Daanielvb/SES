<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
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
    <link href="css/style.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	
    <!-- Navigation -->
    <%@ include file="header.jsp" %>
	<jsp:include page="/estatisticas.jsp" />

	<c:set var="lesson1Videos" value="0" scope="page"/>
	<c:set var="lesson2Videos" value="0" scope="page"/>
	<c:set var="lesson3Videos" value="0" scope="page"/>
	<c:set var="lesson4Videos" value="0" scope="page"/>
	
	<c:set var="lesson1Viewed" value="false" scope="page"/>
	<c:set var="lesson2Viewed" value="false" scope="page"/>
	<c:set var="lesson3Viewed" value="false" scope="page"/>
	<c:set var="lesson4Viewed" value="false" scope="page"/>
	
	<c:set var="lesson1Score" value="0" scope="page"/>
	<c:set var="lesson2Score" value="0" scope="page" />
	<c:set var="lesson3Score" value="0" scope="page"/>
	<c:set var="lesson4Score" value="0" scope="page"/>
	
	<c:set var="lesson1TotalScore" value="${avgLessonScores[0][1]}" scope="page"/>
	<c:set var="lesson2TotalScore" value="${avgLessonScores[1][1]}" scope="page" />
	<c:set var="lesson3TotalScore" value="${avgLessonScores[2][1]}" scope="page"/>
	<c:set var="lesson4TotalScore" value="${avgLessonScores[3][1]}" scope="page"/>
	
	<c:set var="lesson1TotalPoints" value="${avgLessonScores[0][2]}" scope="page"/>
	<c:set var="lesson2TotalPoints" value="${avgLessonScores[1][2]}" scope="page" />
	<c:set var="lesson3TotalPoints" value="${avgLessonScores[2][2]}" scope="page"/>
	<c:set var="lesson4TotalPoints" value="${avgLessonScores[3][2]}" scope="page"/>
	
	<c:set var="totalPoints" value="0" scope="page"/>

	<c:forEach var="vt" items="${videoTrackings}">
    	<c:choose>
	    	<c:when test="${vt.video.lesson.id == 3}">
	      		<c:set var="lesson1Videos" value="${lesson1Videos + 1}" />
	    	</c:when>
	    	<c:when test="${vt.video.lesson.id == 4}">
	       	 	<c:set var="lesson2Videos" value="${lesson2Videos + 1}" />
	    	</c:when>
	    	<c:when test="${vt.video.lesson.id == 5}">
	       	 	<c:set var="lesson3Videos" value="${lesson3Videos + 1}" />
	    	</c:when>
	    	<c:when test="${vt.video.lesson.id == 6}">
	       	 	<c:set var="lesson4Videos" value="${lesson4Videos + 1}" />
	    	</c:when>
		</c:choose>	 	     
	</c:forEach>
	
    <c:forEach var="qt" items="${quizTrackings}">
    	<c:set var="totalPoints" value="${totalPoints + qt.points}" scope="page"/>
    	<c:choose>
	    	<c:when test="${qt.quiz.lesson.id == 3}">
	      		<c:set var="lesson1Score" value="${qt.score}" />
	    	</c:when>
	    	<c:when test="${qt.quiz.lesson.id == 4}">
	       	 	<c:set var="lesson2Score" value="${qt.score}" />
	    	</c:when>
	    	<c:when test="${qt.quiz.lesson.id == 5}">
	       	 	<c:set var="lesson3Score" value="${qt.score}" />
	    	</c:when>
	    	<c:when test="${qt.quiz.lesson.id == 6}">
	       	 	<c:set var="lesson4Score" value="${qt.score}" />
	    	</c:when>
		</c:choose>	 	     
	</c:forEach>

	
    <div class="container">
        <header class="jumbotron">
        <h2>
            <span>Acompanhamento de progresso - ${user.name}</span>
        </h2>
        <div class="row">
            <div class="col-md-6 text-center">
                <h2>Média geral : ${fn:substring((avgUserScores[0][0] * 10/ 15),0,4)}</h2>     
                <h4></h4>
            </div>
            <div class="col-md-6 text-center">
                <h2>Pontuação :${avgUserScores[0][1]} (*) </h2>
            </div>
        </div>
        <div class="row text-center">
            <h2>Badges</h2>
            <div>
                <img alt="Mestre do Python" src="images/videosBadge.png"
                    height="50px" width="60px" title="Mestre dos Videos" /> <img
                    alt="Mestre do Python" src="images/python.png" height="50px"
                    width="60px" title="Mestre do Python" />
            </div>
        </div>
        <p class="text-center" style="padding-top:40px; font-size: 12px;">*A pontuação se
			baseia num valor dado a cada questão de acordo com seu nível de
			dificuldade.</p>
        </header>

        <div class="col-md-3">
            <div class="row">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            Lições
                            <h3></h3>
                    </div>
                    <div class="panel-body">
                        <div class="list-group">
                            <a onclick="graficoLicao1(this)" class="list-group-item">Lição 1</a>
                            <a onclick="graficoLicao2(this)" class="list-group-item">Lição 2</a>
                            <a onclick="graficoLicao3(this)" class="list-group-item">Lição 3</a>
                            <a onclick="graficoLicao4(this)" class="list-group-item">Lição 4</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-9" style="padding: 10px;">
            <div class="text-right">
                <a onclick="graficoGeral()" class="btn btn-primary text-center">Visão
                    Geral</a>
            </div>
            <div id="grafico"></div>
        </div>


        <!-- fim container -->


        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/Chart.min.js"></script>

        <!-- Scripts dos canvas -->
        <script>
            window.onload = graficoGeral();
            //funções pra alterar o div dos graficos  

            var generalData = [ "<c:out value='${fn:substring((lesson1Score * 10/ 15),0,4)}'/>", "<c:out value='${fn:substring((lesson2Score * 10/ 15),0,4)}'/>"  
                                ,  "<c:out value='${fn:substring((lesson3Score * 10/ 15),0,4)}'/>" , "<c:out value='${fn:substring((lesson4Score * 10/ 15),0,4)}'/>"  ];
            
            
            var groupData =     [ "<c:out value='${fn:substring((lesson1TotalScore * 10/ 15),0,4)}'/>", "<c:out value='${fn:substring((lesson2TotalScore * 10/ 15),0,4)}'/>"  
                                  ,  "<c:out value='${fn:substring((lesson3TotalScore * 10/ 15),0,4)}'/>" , "<c:out value='${fn:substring((lesson4TotalScore * 10/ 15),0,4)}'/>"  ];
            
            	
            	
            	
            var lesson1Data =  [ "<c:out value='${lesson1Videos}'/>", 
                                 "<c:out value='${fn:substring((lesson1Score * 10/ 15),0,4)}'/>"    , "<c:out value='${fn:substring((lesson1TotalScore * 10/15),0,4)}'/>"  ];
           	
            var lesson2Data =  [ "<c:out value='${lesson2Videos}'/>", 
                                 "<c:out value='${fn:substring((lesson2Score * 10/ 15),0,4)}'/>"   , "<c:out value='${fn:substring((lesson2TotalScore * 10/15),0,4)}'/>"  ];
            
            var lesson3Data =  [ "<c:out value='${lesson3Videos}'/>", 
                                 "<c:out value='${fn:substring((lesson3Score * 10/ 15),0,4)}'/>"    , "<c:out value='${fn:substring((lesson3TotalScore * 10/15),0,4)}'/>"  ];
            
            var lesson4Data =  [ "<c:out value='${lesson4Videos}'/>", 
                                 "<c:out value='${fn:substring((lesson4Score * 10/ 15),0,4)}'/>"    , "<c:out value='${fn:substring((lesson4TotalScore * 10/15),0,4)}'/>"  ];
            
            function graficoGeral() {
                document.getElementById("grafico").innerHTML = "<canvas id=\"canvas\" width=\"500\" height=\"280\"></canvas>  <div id=\"legendDiv\"></div>";
                geral();
            };

            function graficoLicao1(obj) {
            	
            	$(".list-group-item.active").removeClass("active");
            	obj.className = "list-group-item active";
            	
                document.getElementById("grafico").innerHTML = "<canvas id=\"canvas\" width=\"500\" height=\"280\"></canvas>";
                Licao1();
            };

            function graficoLicao2(obj) {
            	$(".list-group-item.active").removeClass("active");
            	obj.className = "list-group-item active";
                document.getElementById("grafico").innerHTML = "<canvas id=\"canvas\" width=\"500\" height=\"280\"></canvas>";
                Licao2();
            };
            function graficoLicao3(obj) {
            	$(".list-group-item.active").removeClass("active");
            	obj.className = "list-group-item active";
                document.getElementById("grafico").innerHTML = "<canvas id=\"canvas\" width=\"500\" height=\"280\"></canvas>";
                Licao3();
            };
            function graficoLicao4(obj) {
            	$(".list-group-item.active").removeClass("active");
            	obj.className = "list-group-item active";
                document.getElementById("grafico").innerHTML = "<canvas id=\"canvas\" width=\"500\" height=\"280\"></canvas>";
                Licao4();
            };

            //Funções que alteram o canvas para apresentar os gráficos
            //Média geral do aluno nas lições - média ponderada
            function geral() {
                var chrt = document.getElementById("canvas").getContext("2d");
                var datageral = {
                    labels : [ "Média lição 1", "Média lição 2", "Média lição 3", "Média lição 4" ],
                    datasets : [ {
                    	label: "Aluno",
                        fillColor : "rgb(255,255,255)",
                        strokeColor : "rgb(51,122,183)",
                        pointColor : "rgba(220,220,220,1)",
                        data : generalData // dados a serem apresentados
                   	 } ,
                    {
                        label: "Turma",
                        fillColor: 'rgba(0,0,0,0)',
                        strokeColor: 'rgba(220,180,0,1)',
                        pointColor: 'rgba(220,180,0,1)',
                        data: groupData
                    }
                    ]
                };
                new Chart(chrt).Line(datageral);
                document.getElementById("legendDiv").innerHTML = chrt.generateLegend();
            };

            //Sobre a lição - quantidade de videos assistidos, links acessados e nota do exercício
            function Licao1() {
                var chrt = document.getElementById("canvas").getContext("2d");
                var data = {
                    labels : [ "Videos assistidos", "Média do aluno", "Média da turma" ],
                    datasets : [ {
                        fillColor : "rgb(65,105,225)",
                        strokeColor : "rgba(220,220,220,1)",
                        pointColor : "rgba(220,220,220,1)",
                        data : lesson1Data // dados a serem apresentados
                    } ]
                };
                value1 = new Chart(chrt).Bar(data);
            };

            function Licao2() {
                var chrt = document.getElementById("canvas").getContext("2d");
                var data = {
                    labels : [ "Videos assistidos",  "Média do aluno", "Média da turma" ],
                    datasets : [ {

                        fillColor : "rgb(51,122,183)",
                        strokeColor : "rgba(220,220,220,1)",
                        pointColor : "rgba(220,220,220,1)",
                        data : lesson2Data
                    // y-axis
                    } ]
                };
                value1 = new Chart(chrt).Bar(data);
            };
            function Licao3() {
                var chrt = document.getElementById("canvas").getContext("2d");
                var data = {
                    labels : [ "Videos assistidos",  "Média do aluno", "Média da turma" ],
                    datasets : [ {
                        fillColor : "rgb(0,191,255)",
                        strokeColor : "rgba(220,220,220,1)",
                        pointColor : "rgba(220,220,220,1)",
                        data : lesson3Data
                    // y-axis
                    } ]
                };
                value1 = new Chart(chrt).Bar(data);
            };
            function Licao4() {
                var chrt = document.getElementById("canvas").getContext("2d");
                var data = {
                    labels : [ "Videos assistidos", "Média do aluno", "Média da turma" ],
                    datasets : [ {
                        fillColor : "rgb(30,144,255)",
                        strokeColor : "rgba(220,220,220,1)",
                        pointColor : "rgba(220,220,220,1)",
                        data : lesson4Data
                    // y-axis
                    } ]
                };
                value1 = new Chart(chrt).Bar(data);
            };
            
            geral();
        </script>
</body>
</html>
