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
	<a href="${pageContext.request.contextPath}/blog/qaInsertform.do">새글</a>
	<div class="row">
		<div class="col-xs-10">
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th>제목</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="tmp" items="${qalist }">
						<tr>
							<td>${tmp.qaNum }</td>
							<td>${tmp.qaWriter }</td>
							<td>${tmp.qaTitle }</td>
							<td>${tmp.qaRegdate }</td>
							<td>${tmp.qaViewCount }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>	
	</div>
</div>

<!-- 하단메뉴 -->
<jsp:include page="../../include/footer.jsp"/>
</body>
</html>