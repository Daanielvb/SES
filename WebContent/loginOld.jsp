<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bem vindo</title>
</head>
<body>

	<!--  <form action="<c:url value="/LoginController"/>" method="post">
		<label> Digite seu email </label> 
		<input type="email" name="email" id="email">
		</input>
		<c:if test="${failed == true}">
	   	<p>Usuário não encontrado<p>
		</c:if>
		<input type="hidden" name="action" value="login"/>
		<button type="submit">OK</button>
	</form>-->
	
		<label> Digite seu email </label> 
		<input type="email" name="email" id="email">
		</input>
		<c:if test="${failed == true}">
	   	<p>Usuário não encontrado<p>
		</c:if>
		<button onclick="login()">OK</button>
</body>

<script src="js/jquery.js"></script>
<script>

function login(){
	
	email = $("#email").val();
	console.log(email);
	if(email != "" && email != undefined){
		
		
		$.ajax({
	        url:'LoginController',
	        data:{email:email},
	        type:'get',
	        cache:false,
	        success:function(data){
	        	window.location = ("/ProjetoSI/home.jsp");
	        },
	        error:function(){
	         	console.log("deu ruim");
	        }
	     }
		);
	}
	else{
		alert("Preencha o email");
	}
}

</script>
</html>