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
<form action="${pageContext.request.contextPath}/users/login.do" method="post">
	<input type="hidden" name="logformurl" value="${url}" />
	<label for="userid">ID</label>
	<input type="text" name="userid" id="userid" />
	<label for="userpwd">PASSWORD</label>
	<input type="text" name="userpwd" id="userpwd" />
	<button type="submit">로그인</button>
	<span></span>
</form>
<a href="${pageContext.request.contextPath}/users/signupform.do"/>회원가입</a><br/>
<a href="">아이디 찾기</a>
<a href="">비밀번호 찾기</a>
<!-- 하단메뉴 -->
<jsp:include page="../include/footer.jsp"/>
</body>
</html>