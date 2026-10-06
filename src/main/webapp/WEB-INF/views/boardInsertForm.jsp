<%@page import="com.smhrd.entity.Board"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	
	<div class="container">
	  <h2>Spring으로 만든 게시판입니다.</h2>
	  <div class="card">
	    <div class="card-header bg-warning">게시글 입력</div>
	    <div class="card-body">
	    	<form action="boardInsert.do" method="post">
	    		<table class="table">
					<tr>
						<td>제목</td>
						<td><input name="title" required="required" placeholder="제목을 입력하세요." type="text" class="form-control"></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><textarea name="contents" required="required" placeholder="내용을 입력하세요." class="form-control" rows="7" cols=""></textarea></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><input name="writer" required="required" placeholder="작성자를 입력하세요." type="text" class="form-control"></td>
					</tr>	    
					<tr>
						<td colspan="2" align="center">
							<a href="boardList.do">
							<button type="button" class="btn btn-outline-warning">돌아가기</button>
							</a>
							<button type="reset" class="btn btn-outline-danger">초기화</button>
							<button type="submit" class="btn btn-outline-success">작성</button>
						</td>
					</tr>		
	    		</table>
	    	</form>
	    </div> 
	    <div class="card-footer">헬스케어과정 - 박병관</div>
	  </div>
	</div>	
	
</body>
</html>








