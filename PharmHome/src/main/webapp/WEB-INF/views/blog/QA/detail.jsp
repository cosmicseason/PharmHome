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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body>
<!-- 상단메뉴 -->
<jsp:include page="../../include/banner.jsp"/>

<div class="container">
	<div class="col-xs-12">
		
		<table class="table table-hover">
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
			<a href="${pageContext.request.contextPath}/blog/qaUpdateform.do?qanum=${qadto.qaNum}" class="btn btn-info">수정</a>
			<a href="javascript:deleteConfirm(${qadto.qaNum})">
				<i class="glyphicon glyphicon-trash"></i>
				<span class="sr-only">삭제</span>
			</a>
		</c:if>
	</div>
</div>		
	
	
<!-- 하단메뉴 -->
<jsp:include page="../../include/footer.jsp"/>

<script>
	function deleteConfirm(num){
		var isDelete=confirm(num+" 번 글을 삭제 하시겠습니까?");
		if(isDelete){
			location.href="${pageContext.request.contextPath}/blog/qaDelete.do?num="+num;
		}
	}
</script>
</body>

</html>