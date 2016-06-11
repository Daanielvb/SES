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
    	<link href="css/style.css" rel="stylesheet">
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
    	<hr>
        <!-- Title -->
        <div class="row">
            <div class="col-lg-12">
            <h3>Material Extra</h3>
                <ol class="breadcrumb">
                	<li><a href="aula.jsp">Tipos Primitivos e Variáveis</a></li>
                	<li class="active">Material extra</li>
                </ol>
            </div>
        </div>
        </hr>
        <hr>
        <div class="row">
        	<div class="col-lg-12">
        		<h1>Tópico 1.2</h1>
        	</div>
        		<div class="text-right">
        		
        		<button type="button" onclick="createVideoTracking(1)" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal1">
 				 Video 1
				</button>
				 <c:forEach items="${vtracking}" var="vts" varStatus="myIndex">
							<c:if test="${vts.video.id == 1}">
								<p class="seen"> Já assistida </p>
							</c:if>
				</c:forEach>
                <button type="button" onclick="createVideoTracking(2)" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal2">
                 Video 2
                </button>
                 <c:forEach items="${vtracking}" var="vts" varStatus="myIndex">
							<c:if test="${vts.video.id == 2}">
								<p class="seen"> Já assistida </p>
							</c:if>
				</c:forEach>
                <button type="button" onclick="createVideoTracking(3)" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal3">
                 Video 3
                </button>
                 <c:forEach items="${vtracking}" var="vts" varStatus="myIndex">
							<c:if test="${vts.video.id == 3}">
								<p class="seen"> Já assistida </p>
							</c:if>
				</c:forEach>
        		</div>
        	</div>
        </hr>
        <hr>
        <div class="row">
            <div class="col-lg-12">
                <h1>Tópico 1.3</h1>
            </div>
                <div class="text-right">
                <button type="button" onclick="createVideoTracking(4)" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal4">
                 Video 1
                </button>
                 <c:forEach items="${vtracking}" var="vts" varStatus="myIndex">
							<c:if test="${vts.video.id == 4}">
								<p class="seen"> Já assistida </p>
							</c:if>
				</c:forEach>
                <button type="button" onclick="createVideoTracking(5)" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal5">
                 Video 2
                </button>
                 <c:forEach items="${vtracking}" var="vts" varStatus="myIndex">
							<c:if test="${vts.video.id == 5}">
								<p class="seen"> Já assistida </p>
							</c:if>
				</c:forEach>
                </div>
            </div>
        </hr>       
        </div>
    </div>
    <!-- /.container -->
    
    <!-- Modal -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal1Label">Videos</h4>
      </div>
      <div class="modal-body">
      	<div class="embed-responsive embed-responsive-16by9">
 		 	<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/SYioCdLPmfw"></iframe>
		</div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal2Label">Videos</h4>
      </div>
      <div class="modal-body">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/jcAYuBI32mg "></iframe>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal3Label">Videos</h4>
      </div>
      <div class="modal-body">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/ezumS6fmV9A "></iframe>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal4Label">Videos</h4>
      </div>
      <div class="modal-body">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/jT0MOEKnauM"></iframe>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModal5Label">Videos</h4>
      </div>
      <div class="modal-body">
        <div class="embed-responsive embed-responsive-16by9">
            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/B1_xcXDNafc"></iframe>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
    
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script>
	
	function createVideoTracking(videoId){
	         $.ajax({
	            url:'VideoController',
	            data:{videoId:videoId,action:"video"},
	            type:'get',
	            cache:false,
	            success:function(data){
	               console.log("saved");
	            },
	            error:function(){
	              
	            }
	         }
	    );
	}
	
	</script>
		
</body>