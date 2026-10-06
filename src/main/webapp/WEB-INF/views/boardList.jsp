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
	    <div class="card-header bg-warning">게시글 목록</div>
	    <div class="card-body">
	    	<!-- 게시글 목록 -->
	    	<table class="table table-hover">
	    		<thead> <!-- 본문과 머리글을 구분하기 위한 태그 -->
					<tr class="table-warning">
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody> <!-- 본문을 구분하기 위한 태그 -->
					
					<%
						// model(request)안에 게시글정보 가져오기
						ArrayList<Board> list = (ArrayList<Board>)request.getAttribute("list");
					%>
					
					<%-- 문제. list안에 있는 게시글 정보를 아래에 출력하세요 --%>
					<% for(int i = 0; i < list.size(); i++){ %>
						<tr>
							<td><%= list.get(i).getIdx() %></td>
							<%-- 상세보기 페이지 링크 걸기 --%>
							<td>
								<a href = "boardContents.do?idx=<%= list.get(i).getIdx() %>">
									<%= list.get(i).getTitle() %>
								</a>
							</td>
							<td><%= list.get(i).getWriter() %></td>
							<td><%= list.get(i).getIndate() %></td>
							<td><%= list.get(i).getCount() %></td>
						</tr>
					<% } %>
					
				</tbody>
	    	</table>
	    	
	    	<a href="boardInsertForm.do" class="btn btn-outline-primary">글쓰기</a>

	    </div> 
	    <div class="card-footer">헬스케어과정 - 박병관</div>
	  </div>
	</div>	
	
</body>
</html>









