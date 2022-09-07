<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
<title></title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<nav class="navbar navbar-expand navbar-dark bg-Mcolor">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./테스트용.jsp">Home</a>
			</div>
			<div>
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" 
					href="<c:url value="/BoardListAction.do?pageNum=1"/>">게시판</a></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>