<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="icon" type="image/png" href="favicon.ico" />
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
		<STYLE type="text/css">
			@import "bourbon";

body {
	background: #eee !important;	
}

.wrapper {	
	margin-top: 80px;
  margin-bottom: 80px;
}

.form-signin {
  max-width: 380px;
  padding: 15px 35px 45px;
  margin: 0 auto;
  background-color: #fff;
  border: 1px solid rgba(0,0,0,0.1);  

  .form-signin-heading,
	.checkbox {
	  margin-bottom: 30px;
	}

	.checkbox {
	  font-weight: normal;
	}

	.form-control {
	  position: relative;
	  font-size: 16px;
	  height: auto;
	  padding: 10px;
		@include box-sizing(border-box);

		&:focus {
		  z-index: 2;
		}
	}

	input[type="text"] {
	  margin-bottom: -1px;
	  border-bottom-left-radius: 0;
	  border-bottom-right-radius: 0;
	}

	input[type="password"] {
	  margin-bottom: 20px;
	  border-top-left-radius: 0;
	  border-top-right-radius: 0;
	}
}

	.imgHome{
	    margin-left: 25%;
	    margin-bottom: 15%;
	    margin-top: 5%;
			}
		</STYLE>
	</head>
	<body>
		<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        	<div class="container">
            	<!-- Brand and toggle get grouped for better mobile display -->
            		<div class="navbar-header">
                		<a class="navbar-brand" href="index.jsp"><span class="glyphicon glyphicon-home"></span> PyLearning</a>
            		</div>
        	</div>
        <!-- /.container -->
    	</nav>
    	

	<div class="wrapper" id="cadastro">
		<h1> PyLearning, um ambiente de aprendizado inteligente</h1>
    	<div class="form-signin"> 
    		<img class="imgHome"  src="images/python.png">      
      		<input type="text" class="form-control" name="nome" id="email" placeholder="Email" required autofocus="" />
      		<BR />
      		<input type="password" class="form-control" name="senha" placeholder="Senha" required/>      
      		<br/>
      		<button class="btn btn-lg btn-primary btn-block" onclick="login()">Login</button>
      		<a onclick="cadastro()" class="btn btn-lg btn-default btn-block">Cadastrar</a>   
    	</div>
  </div>
  <div class='wrapper' id="cadastroHidden" style="display:none">
    		<div class="form-signin">
    		<h2 class="form-signin-heading">Cadastro</h2>
      		<input type=text id="nameRegister" class=form-control name="nome" placeholder="Nome" required autofocus />
      		<BR />
      		<input type="text" id="cpf" class="form-control" name="cpf" placeholder="CPF" required autofocus />
      		<BR />
      		<input type="text" id="emailRegister" class="form-control" name="email" placeholder="email" required autofocus />
      		<BR />
      		<input type="password" class="form-control" name="senha" placeholder="Senha" required/> 
      		<br/>
      		<button class="btn btn-lg btn-primary btn-block" onclick="register()">Submeter</button>
      		<a href="login.jsp" class="btn btn-lg btn-default btn-block">cancelar</a>   
    	</div>
      		</div>;
  
   <script src="js/cadastro.js"></script>
   <script src="js/jquery.js"></script>
   <script>

function login(){
	
	email = $("#email").val();
	console.log(email);
	if(email != "" && email != undefined){		
		$.ajax({
	        url:'LoginController',
	        data:{email:email,action: "login"},
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

function register(){
	
	name = $("#nameRegister").val();
	email = $("#emailRegister").val();
	cpf= $("#cpf").val();
	console.log(email);
	if(email != "" && email != undefined){		
		$.ajax({
	        url:'LoginController',
	        data:{email:email,name:name,cpf:cpf,action: "register"},
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


function cadastro(){
	$("#cadastro").hide();
	$("#cadastroHidden").show();
}

</script>


</body>
</html>