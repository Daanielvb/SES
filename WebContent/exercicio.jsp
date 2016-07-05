<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

</head>

<body>

   <%@ include file="header.jsp" %>

    <!-- Page Content -->
    <div class="container">
        <hr>

        <!-- Title -->
        <div class="row">
            <div class="col-lg-12">
                <h3>Exercícios</h3>
            </div>
        </div>
        </hr>
       	<hr>
       	<c:choose>
    <c:when test="${(not empty qtracking) and (qtracking.quizLevel != 'easy')}">
        <h1> Exercício já respondido</h1>
    </c:when>
    <c:otherwise>	
       	<div class="panel panel-primary">
       		<div class="panel-heading">
       			<h3 class="panel-title">${quiz.lesson.theme} </h3>
       			<input type="hidden" class="quizId" value="${quiz.id}"/>
       		</div>
       		<div class="panel-body">
       			<c:forEach items="${questions}" var="qts" varStatus="myQuest">
       				<div class="panel panel-default" >
		       			<div class="panel-heading" style="font-size:1.1em;">	
		       					${myQuest.index + 1})  ${qts.question} 
		       			</div>
		       			<input type="hidden" class="qtsId" value="${qts.id}"/>
						<input type="hidden" class="sbjName" value="${qts.subject.name}"/>
						<input type="hidden" class="sbjId" value="${qts.subject.id}"/>
						<input type="hidden" class="points" value="${qts.difficulty}"/>
						<input type="hidden" class="questions" value="${qts.question}"/>
					<c:forEach items="${qts.answers}" var="qtsA" varStatus="myQuestA">
					<div class="input-group">
       						<input type="radio" id="${qtsA.id}" name="${qts.id}" value="${qtsA.isCorrect}" />
       						${qtsA.title}
       					</div>	
       					<hr />										
					</c:forEach>	
					</div>			
				</c:forEach>
       			</div>    			
       			<div class="text-right">
       					<a href="#" onclick="submitQuiz(1)" class="btn btn-primary text-center">Responder</a>
       				</div>
       			
       		</div>	
		</c:otherwise>
	</c:choose>

       	</div>
       	</hr>
    </div>
    <div>
    
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
	<script>
	

	
	function submitQuiz(){
		var quizId = $(".quizId").val();
		var answers = $('input[type=radio]:checked');
		var questions = $(".qtsId");
		var subjectId = $(".sbjId");
		var subjectName = $(".sbjName");
		var points = $(".points");
		var questionsName = $(".questions");
		
		var simulado = {
				quizId : quizId,
				correctQuestions : [],
				wrongQuestions : [],
				wrongSubjectsId : [],
				wrongSubjectsName: [],
				score: 0,
				points: 0,
				size: 0
				
		};
		
		for (var i = 0; i < answers.length; i++){		
			if(answers[i].value == "true"){
				simulado.score += 1;
				simulado.correctQuestions.push(questions[i].value);
				simulado.points += parseInt(points[i].value);
			}
			else{
				simulado.wrongQuestions.push(questions[i].value);
				simulado.wrongSubjectsId.push(subjectId[i].value);
				simulado.wrongSubjectsName.push(subjectName[i].value);
				simulado.wrongQuestions.push(questionsName[i].value);
			}
		}
		//todo limpar valores repetidoss
		uniqueList = [];
		for (var i = 0; i < simulado.wrongSubjectsId.length; i++){
			console.log(simulado.wrongSubjectsId[i]);
			console.log(uniqueList.indexOf(simulado.wrongSubjectsId[i]));
			if(uniqueList.indexOf(simulado.wrongSubjectsId[i]) == "-1")
				uniqueList.push(simulado.wrongSubjectsId[i]);
			}
		
	
	simulado.wrongSubjectsId = uniqueList;
	simulado.size = questions.length;
	$.ajax({
        url:'QuizController',
        dataType:'json',
        data: {
           action:"submit",
           simulado:JSON.stringify(simulado)
           },
        type:'get',
        cache:false,
        success:function(data){
         console.log("sucess");
          window.location = ("/ProjetoSI/resultTest.jsp");
        },
        error:function(){
          console.log("deu ruim");
          window.location = ("/ProjetoSI/resultTest.jsp");
        }
     }
);
	
	console.log(simulado);
	
	
	}
	
	</script>
</body>


</html>