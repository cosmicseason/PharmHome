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

<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<!-- 상단메뉴 -->
<jsp:include page="../include/banner.jsp"/>
<div class="container">
	<h3>회원 가입 폼 입니다.</h3>
	<!-- novalidate 는 웹브라우저의 기본 validate 를 막는다 -->
	<form action="${pageContext.request.contextPath}/users/signup.do" method="post" id="signupForm" novalidate>
		<label for="userId">아이디</label>
		<input type="text" name="userId" id="userId"/>
		<button id="idCheckBtn">중복확인</button>
		<span id="idCheckResult"></span>
		<br/>
		<label for="userPwd">비밀번호</label>
		<input type="password" name="userPwd" id="userPwd"/><br/>
		<label for="userAddr">주소</label>
		<input type="email" name="userAddr" id="userAddr" /><br/>
		<label for="userEmail">이메일</label>
		<input type="email" name="userEmail" id="userEmail" /><br/>
		<button type="submit">가입</button>
	</form>
</div>
<!-- 하단메뉴 -->
<jsp:include page="../include/footer.jsp"/>
</body>
</html>