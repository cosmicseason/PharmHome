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

<title>blog</title>

<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<!-- 상단메뉴 -->
<jsp:include page="../include/banner.jsp"/>

<!--blog-->
<section id="blog" class="section-padding">
    <div class="container">
    	<div class="row">
    		<div class="col-md-6 col-sm-6 col-xs-12">
    			<div class="section-title">
    				<a class="head-title lg-line" href="${pageContext.request.contextPath}/blog/blogQaList.do">Q&A</a>
            		<hr class="botm-line">
	           		<!-- Q&A 게시판 게시글 제목 / 글쓴이 정도만 테이블로 보여주기 -->
	           		<div class="row">
				  		<div class="col-xs-12">
							<table class="table table-hover">
								<thead>
									<tr>
										<th>번호</th>
										<th>작성자</th>
										<th>제목</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>2</td>
										<td>3</td>
									</tr>
								</tbody>
							</table>
						</div><!-- Q&A 칼럼-->
	      		</div><!-- Q&A 로우-->
	      	 </div>	
	      </div>	 
          <div class="col-md-6 col-sm-6 col-xs-12">
          	<div class="section-title">
            	<h2 class="head-title lg-line"><a href="${pageContext.request.contextPath}/blog/blogStory.do">Story</a></h2>
            	<hr class="botm-line">
            	<!-- 손님들 평가 게시판 게시글 글쓴이/내용을 간략하게 테이블로 보여주기 -->
            	<div class="row">
			  		<div class="col-xs-12">
						<table class="table table-hover">
							<thead>
								<tr>
									<th>번호</th>
									<th>작성자</th>
									<th>제목</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>2</td>
									<td>3</td>
								</tr>
							</tbody>
						</table>
					</div>
	      		</div>
          </div>
        </div>       
     </div>
   </div> 
 </section>
  <!--/ about-->
  <!-- 하단메뉴 -->
<jsp:include page="../include/footer.jsp"/>
</body>
</html>