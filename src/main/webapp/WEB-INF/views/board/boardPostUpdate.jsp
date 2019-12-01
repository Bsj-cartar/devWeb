<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/res/css/main.css" />
</head>
<body class="is-preload">
	<%
		String str = (String) session.getAttribute("login");
		if(str== null) {
			out.print("<script>alert('로그인을 해주세요.');");
			out.print("window.location.href = '/login';</script>");
		}
		
	%>
	
	<!-- Header 파일 include -->
	<%@ include  file ="../commons/header.jspf" %>
	
	
	<!-- Heading -->
	<div id="heading">
		<h1>Post Upload</h1>
	</div>
	
	<!-- Main -->
	<section id="main" class="wrapper">

		<div class="inner">
			<div class="content">
				<div class="row">
					<h2>게시물 수정</h2>
					
					<form action="update" method="post">
					<div class="row gtr-uniform">
						
						<!-- 글 제목 -->
						<div class="col-2">
							<h3>글 제목</h3>
						</div>
						<div class="col-10">
							<input type="text" name="title" value="${boardContent.posttitle }"/>
						</div>
						
						<!-- 작성자 아이디 화면 보이기 -->
						<div class="col-4">
							<h3>작성자 아이디</h3>
						</div>
						<div class="col-8">
							<code><%= session.getAttribute("login") %></code>
						</div>
						
						<!-- 동영상  -->
						<div class="col-2">
							<h3>게시판 선택</h3>
						</div>
						<div class="col-10">
						<select name="instsection" id="category">
							
							<option value="">- Select -</option>
						    <option value="vocal"	<c:if test="${boardContent.instsection == 0}">selected</c:if>>보컬</option>
						    <option value="guitar" 	<c:if test="${boardContent.instsection == 1}">selected</c:if>>기타</option>
						    <option value="drum" 	<c:if test="${boardContent.instsection == 2}">selected</c:if>>드럼</option>
						    <option value="bass" 	<c:if test="${boardContent.instsection == 3}">selected</c:if>>베이스 기타</option>
						    <option value="etc" 	<c:if test="${boardContent.instsection == 4}">selected</c:if>>etc</option>
						    
						</select>
						</div>						
						<!-- 유투브 url 기재 -->
						
						<header><h3>youtube url</h3></header><br>
						
						<div class="col-12" style="display: flex; align-items: baseline;">
						
						<h3>https://youtu.be/</h3>
						<input type="text" name="videourl" value="${boardContent.postvideourl}"/>
						</div>
						
						<input type="hidden" value="${boardContent.postid }" />
 						
						<!-- submit 버튼 -->
						<div class="col-12">
							<ul class="actions special ">
								<li>
								<input type="submit" id="submit"class="button primary fit" value="게시물 등록">
								</li>
							</ul>
						</div>
						
					</div>					
					</form>
				
				</div>
			</div>
		</div>
	</section>
				
	
	 
	
	
</body>

<!-- Scripts -->
<script src="/res/js/jquery.min.js"></script>
<script src="/res/js/browser.min.js"></script>
<script src="/res/js/breakpoints.min.js"></script>
<script src="/res/js/util.js"></script>
<script src="/res/js/main.js"></script>
</html>