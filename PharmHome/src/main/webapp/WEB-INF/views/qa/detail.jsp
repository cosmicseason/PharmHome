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
				<div class="col-sm-9">
					<p class="form-control-static">${qadto.qaNum }</p>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">TITLE</label>
				<div class="col-sm-9">
					<p class="form-control-static">${qadto.qaTitle }</p>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">WRITER</label>
				<div class="col-sm-9">
					<p class="form-control-static">${qadto.qaWriter }</p>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">COUNT</label>
				<div class="col-sm-9">
					<p class="form-control-static">${qadto.qaViewCount }</p>
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label">DATE</label>
				<div class="col-sm-9">
					<p class="form-control-static">${qadto.qaRegdate }</p>
				</div>
			</div>
			<div class="form-group">
				<label for="qacontents" class="col-sm-2 control-label">Q:</label>
				<div class="col-sm-9">
					<textarea class="form-control" id="qacontents" rows="10" disabled>${qadto.qaContents}</textarea>
				</div>
			</div>
		</form>
	</div>
	<%-- 로그인된 아이디와 글 작성자가 같은 경우 수정,삭제 --%>
	<div class="col-xs-offset-9">
		<c:if test="${userId eq qadto.qaWriter }">
			<a href="${pageContext.request.contextPath}/qa/updateform.do?num=${qadto.qaNum}" class="btn btn-info">수정</a> 
			<a href="javascript:deleteConfirm(${qadto.qaNum})" class="btn btn-info">삭제</a>
			<a href="${pageContext.request.contextPath}/qa/list.do" class="btn btn-primary">목록</a>
		</c:if>
	</div>
</div>

<!-- 댓글 보기 폼 -->
<div class="container">
	<div class="col-xs-11">
		<form class="form-horizontal">
			<div class="form-group ">
				<label for="qacomment" class="col-sm-offset-4 control-label">A:</label>
				<div class="col-xs-offset-4">
					<textarea class="form-control" id="qacomment" rows="3" disabled>답글</textarea>
				</div>
			</div>
		</form>
	</div>
</div>

<!-- 댓글 등록 폼 -->
<div class="container" style="margin-bottom:30px;">
	<div class="col-xs-11">
		<form class="form-horizontal" action="${pageContext.request.contextPath}/qa/comment_insert.do" >
			<div class="form-group ">
				<!-- 댓글의 그룹번호는 원글의 글번호 -->
				<label for="ref_group" class="col-xs-offset-4 control-label"></label>
				<div class="col-sm-offset-4">
					<input type="hidden" name="ref_group" id="ref_group" value="${dto.num }"/>
				</div>
			</div>
			<div class="form-group ">
				<!-- 댓글의 대상자는 원글의 작성자 -->
				<label for="target_id" class="col-xs-offset-4 control-label">Comment</label>
				<div class="col-xs-offset-4">
					<input type="hidden" name="target_id" id="target_id" value="${dto.writer }"/>
					<textarea class="form-control" name="commendANW">
						<c:if test="${empty id }">로그인이 필요합니다.</c:if>
					</textarea>
				</div>
			</div>
			<div class="col-xs-offset-11">
				<button type="submit" class="btn btn-primary">등록</button>
			</div>
		</form>
	</div>
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