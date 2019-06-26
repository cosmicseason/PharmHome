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

<title>Q&A Board</title>

<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">

<style>
	.container{
		margin-top: 25px;
		margin-bottom: 25px;
	}
</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<!-- 상단메뉴 -->
<jsp:include page="../include/banner.jsp"/>

<div class="container">
	<div class="row">
		<div class="col-md-6 col-sm-6 col-xs-12">
         	<div class="section-title">
           	<h2 class="head-title lg-line">Q&A</h2>
           	<hr class="botm-line">
           	<div class="row">
				<div class="col-xs-12">
					<table class="table table-hover">
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
									<td><a href="${pageContext.request.contextPath}/qa/detail.do?num=${tmp.qaNum }&url=${pageContext.request.contextPath}/qa/detail.do">${tmp.qaTitle }</a></td>
									<td>${tmp.qaRegdate }</td>
									<td>${tmp.qaViewCount }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<!-- 페이지 처리 -->
					<div class="page-display">
						<ul class="pageination">
							<c:choose>
								<c:when test="${startPageNum ne 1 }">
									<li>
										<a href="${pageContext.request.contextPath}/"></a>
									</li>
								</c:when>
							</c:choose>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>					
</div>
	<a href="${pageContext.request.contextPath}/qa/insertform.do" class="btn btn-info">새글</a>
</div>

<!-- 하단메뉴 -->
<jsp:include page="../include/footer.jsp"/>
</body>
</html>