<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script>
	var userId="${userId}";
	if(userId==null){
		alert("아이디를 다시 확인하세요");
		location.href="${pageContext.request.contextPath}/users/signupform.do";
	}else{
		alert(userId+"님 회원가입을 축하 합니다.");
		location.href="${pageContext.request.contextPath}/users/loginform.do";
	};
</script>
