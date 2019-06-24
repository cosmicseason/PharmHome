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
<jsp:include page="../../include/banner.jsp"/>

<div class="container">
	<div class="col-xs-10">
		<table class="table table-bordered table-condensed">
			<thead>
				<tr>
					<th>글번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>조회수</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>${qadto.qaNum }</td>
					<td>${qadto.qaTitle }</td>
					<td>${qadto.qaWriter }</td>
					<td>${qadto.qaViewCount }</td>
					<td>${qadto.qaRegdate }</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>

<div class="container">
	<div class="col-xs-10">
		<div class="qaContents">${qadto.qaContents }</div>
	</div>
</div>

<%-- 로그인된 아이디와 글 작성자가 같은 경우 수정,삭제 --%>
<div class="container">
	<div class="col-xs-10">
		<c:if test="${userId eq qadto.qaWriter }">
			<a href="${pageContext.request.contextPath}/blog/qaUpdateform.do?qanum=${qadto.qaNum}">수정</a>
			<a href="javascript:">삭제</a>
		</c:if>
	</div>
</div>		
	
	
<!-- 하단메뉴 -->
<jsp:include page="../../include/footer.jsp"/>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.3.1.js"></script>
<script>
	//폼에 submit 이벤트가 일어 났을때 실행할 함수 등록 
	$(".comments form").on("submit", function(){
		//로그인 여부
		var isLogin=${not empty userId};
		if(isLogin==false){
			alert("로그인 페이지로 이동 합니다.");
			location.href="${pageContext.request.contextPath}/users/loginform.do?url=${pageContext.request.contextPath}/blog/qaDetail.do";
			return false;//폼 전송 막기 
		}
	});

</script>
</body>

</html>