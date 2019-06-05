<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8"/>
<title>blog</title>
</head>
<body>
<!--blog-->
<section id="blog" class="section-padding">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-4 col-xs-12">
          <div class="section-title">
            <h2 class="head-title lg-line"><a href="${pageContext.request.contextPath}/blog/blogQA.do">Q&A</a></h2>
            <hr class="botm-line">
           	<!-- Q&A 게시판 게시글 제목 / 글쓴이 정도만 테이블로 보여주기 -->
          </div>
          <div class="col-md-3 col-sm-4 col-xs-12">
          <div class="section-title">
            <h2 class="head-title lg-line"><a href="${pageContext.request.contextPath}/blog/blogStory.do">다녀간 이야기</a></h2>
            <hr class="botm-line">
            <!-- 손님들 평가 게시판 게시글 글쓴이/내용을 간략하게 테이블로 보여주기 -->
          </div>
        </div>       
      </div>
    </div>
  </section>
  <!--/ about-->
</body>
</html>