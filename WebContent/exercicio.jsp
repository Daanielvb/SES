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

    <title>PyLearning</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/heroic-features.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

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
       	<div class="panel panel-primary">
       		<div class="panel-heading">
       			<h3 class="panel-title">${quiz.lesson.theme} </h3>
       		</div>
       		<div class="panel-body">
       			<c:forEach items="${questions}" var="qts" varStatus="myQuest">
       				<div class="panel panel-default" >
		       			<div class="panel-heading">	
		       					Questão ${myQuest.index + 1} - ${qts.question}
		       			</div>
						
					<c:forEach items="${qts.answers}" var="qtsA" varStatus="myQuestA">
					<div class="input-group">
       						<input type="radio" id="${qtsA.id}" name="${qtsA.id}" value="${qtsA.isCorrect}" />
       						${qtsA.title}
       					</div>	
       					<hr />										
					</c:forEach>	
					</div>			
				</c:forEach>
       			</div>    			
       			<div class="text-right">
       					<a href="#" class="btn btn-default text-center">Pular</a>
       					<a href="#" onclick="submitQuiz(1)" class="btn btn-primary text-center">Responder</a>
       				</div>
       			
       		</div>	
       	</div>
       	</hr>
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
	<script>
	
	function submitQuiz(quizId){
		score = 0;
		var answers = $('input[type=radio]:checked');
		for (i = 0; i < answers.length; i++){
			if(answers[i].value == "true")
				score++;
		}
		console.log(score);
	}
	
	
	</script>
</body>


</html>