<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script>
	var isSuccess = ${isSuccess};
	var userId = "${userId}";
	var nextUrl = "${url}";
		
	if(isSuccess){
		alert(userId +"님 로그인 되셨습니다.");
		location.href = nextUrl;
	}else{
		alert("아이디 또는 비밀번호를 다시 확인하십시오.");
		location.href="${pageContext.request.contextPath}/users/loginform.do?url="+nextUrl;
	}
	
</script>