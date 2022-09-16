<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>

<style>
	.bg-Mcolor{background-color: #92a8d1;}
</style>
<nav class="navbar navbar-expand navbar-dark bg-Mcolor">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./home.jsp">Home</a>
			</div>
			<div>
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" 
					href="./editMovie.jsp">영화 관리</a></li>
					<li class="nav-item"><a class="nav-link" 
					href="<c:url value="/BoardListAction.do?pageNum=1"/>">게시판</a></li>
				</ul>
			</div>
		</div>
	</nav>