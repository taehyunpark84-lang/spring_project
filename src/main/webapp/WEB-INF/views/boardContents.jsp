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
	    <div class="card-header bg-warning">게시글 상세보기</div>
	    <div class="card-body">
	    		<%-- 아래 제목,내용,작성자 부분에 상세게시글 내용을 나오게 하시오 --%>
	    		<% 
	    			Board vo = (Board)request.getAttribute("vo");
	    		%> 
	    		<table class="table">
					<tr>
						<td>제목</td>
						<td><%= vo.getTitle() %></td>
					</tr>
					<tr>
						<td>내용</td>
						<td><%= vo.getContents().replace("\n", "<br>") %></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><%= vo.getWriter() %></td>
					</tr>	    
					<tr>
						<td colspan="2" align="center">
							<a href="boardList.do">
								<button type="button" class="btn btn-outline-warning">돌아가기</button>
							</a>
							
							<a href="boardDelete.do?idx=<%= vo.getIdx() %>">
								<button type="button" class="btn btn-outline-danger">삭제</button>
							</a>
								
							<a href="boardUpdateForm.do?idx=<%= vo.getIdx() %>">
								<button type="button" class="btn btn-outline-success">수정</button>
							</a>
						</td>
					</tr>		
	    		</table>
	    </div> 
	    <div class="card-footer">헬스케어과정 - 박병관</div>
	  </div>
	</div>	
	
</body>
</html>








