<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
<meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">

<title>loginform</title>

<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<!-- 상단메뉴 -->
<jsp:include page="../include/banner.jsp"/>
<!-- loginform -->
<div class="container">
	<div class="row">
		<div class="col-xs-12 col-xs-offset-4 ">
			<form action="${pageContext.request.contextPath}/users/login.do" method="post">
				<div class="row">
				  <div class="form-group col-xs-4">
				  	<input type="hidden" name="url" value="${url}" />
				  </div>
				</div>
				<div class="row">
				  <div class="form-group col-xs-4">
				    <label for="userId">ID</label>
				    <input type="text" class="form-control" name="userId" id="userId"placeholder="Enter ID">
				    <small id="emailHelp" class="form-text text-muted">correct ID!</small>
				  </div>
				</div>
				<div class="row">
				  <div class="form-group col-xs-4">
				    <label for="userPwd">Password</label>
				    <input type="password" class="form-control" name="userPwd" id="userPwd" placeholder="Password">
				  </div>
				 </div>
				 <div class="row"> 
				  <div class="form-check col-xs-4">
				    <input type="checkbox" class="form-check-input" id="exampleCheck1">
				    <label class="form-check-label" for="exampleCheck1">Check me out</label>
				  </div>
				 </div><br/>
				 <div class="row">
				  <div class="col-xs-4">
				  	<a href="${pageContext.request.contextPath}/users/signupform.do" class="btn btn-info">SignUp</a>
				  	<button type="submit" class="btn btn-primary">LogIn</button>
				  </div>
				 </div>
				</form><br/><br/>			
		</div>
	</div>
</div>
<!-- 하단메뉴 -->
<jsp:include page="../include/footer.jsp"/>
</body>
</html>