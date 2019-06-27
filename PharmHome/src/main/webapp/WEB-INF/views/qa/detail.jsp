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
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
<!-- 상단메뉴 -->
<jsp:include page="../include/banner.jsp"/>

<div class="container" style="margin-top:40px; margin-bottom:30px;">
	<div class="col-xs-12">
		<form class="form-horizontal">
			<div class="form-group">
				<label class="col-sm-2 control-label">NUM</label>
				<div class="col-sm-10">
					<p class="form-control-static">${qadto.qaNum }</p>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">TITLE</label>
				<div class="col-sm-10">
					<p class="form-control-static">${qadto.qaTitle }</p>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">WRITER</label>
				<div class="col-sm-10">
					<p class="form-control-static">${qadto.qaWriter }</p>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">COUNT</label>
				<div class="col-sm-10">
					<p class="form-control-static">${qadto.qaViewCount }</p>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">DATE</label>
				<div class="col-sm-10">
					<p class="form-control-static">${qadto.qaRegdate }</p>
				</div>
			</div>
			<div class="form-group">
				<label for="qacontents" class="col-sm-2 control-label">Q:</label>
				<div class="col-sm-10">
					<textarea class="form-control" id="qacontents" rows="10" disabled>${qadto.qaContents}</textarea>
				</div>
			</div>
		</form>
	</div>
	<%-- 로그인된 아이디와 글 작성자가 같은 경우 수정,삭제 --%>
	<div class="col-xs-offset-10">
		<c:if test="${userId eq qadto.qaWriter }">
			<a href="${pageContext.request.contextPath}/qa/updateform.do?num=${qadto.qaNum}" class="btn btn-info">수정</a> 
			<a href="javascript:deleteConfirm(${qadto.qaNum})" class="btn btn-info">삭제</a>
			<a href="${pageContext.request.contextPath}/qa/list.do" class="btn btn-primary">목록</a>
		</c:if>
	</div>
</div>

<div class="container" style="margin-bottom: 40px;">
	
</div>		
	
	
<!-- 하단메뉴 -->
<jsp:include page="../include/footer.jsp"/>

<script>
	function deleteConfirm(num){
		var isDelete=confirm(num+" 번 글을 삭제 하시겠습니까?");
		if(isDelete){
			location.href="${pageContext.request.contextPath}/qa/delete.do?num="+num;
		}
	}
</script>
</body>

</html>