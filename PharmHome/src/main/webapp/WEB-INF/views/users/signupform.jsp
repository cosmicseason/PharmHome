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

<title>SignUp</title>

<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">

</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<!-- 상단메뉴 -->
<jsp:include page="../include/banner.jsp"/>

<div class="container">
	<h3>SignUp</h3>
	<!-- novalidate 는 웹브라우저의 기본 validate 를 막는다 -->
	<form action="${pageContext.request.contextPath}/users/signup.do" method="post" class="form-horizontal" id="signupForm" novalidate>
		<div class="form-group has-success has-feedback">
			<label for="userId" class="control-label col-sm-3">ID</label>
			<div class="col-sm-5">
				<input type="text" class="form-control" name="userId" id="userId" aria-describedby="inputSuccess3Status"/>
				<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
      			<span id="inputSuccess3Status" class="sr-only">(success)</span>
    		</div>
		</div>
		<div class="form-group has-success has-feedback">
			<label for="userPwd" class="control-label col-sm-3">password</label>
			<div class="col-sm-5">
				<input type="password" class="form-control" name="userPwd" id="userPwd" aria-describedby="inputSuccess2Status"/>
				<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
      			<span id="inputSuccess2Status" class="sr-only">(success)</span>
    		</div>
		</div>
		<div class="form-group">
		    <label for="userAddr" class="control-label col-sm-3">Address</label>
		    <div class="col-sm-5">
		      <input type="text" class="form-control" name="userAddr" id="userAddr" placeholder="Input Address..">
		    </div>
    	</div>
    	<div class="form-group">
		    <label for="userEmail" class="control-label col-sm-3">Email address</label>
		    <div class="col-sm-5">
		    	<input type="email" class="form-control" name="userEmail" id="userEmail" placeholder="Email">
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-8">
				<button type="submit" class="btn btn-info">가입</button>
			</div>
		</div>		
	</form>
</div>
<!-- 하단메뉴 -->
<jsp:include page="../include/footer.jsp"/>
</body>
</html>