<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<% 		
		request.setCharacterEncoding("utf-8");
    	String email = request.getParameter("email");
    	String password = request.getParameter("pwd");
    	String birthYear = request.getParameter("birthYear");
    	String gender = request.getParameter("gender");
    	String[] hobby = request.getParameterValues("hobby");
      	String profile = request.getParameter("profile");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%=email %>
	<br>
	<%=password %><br>
	<%=birthYear %><br>
	<%=gender %>
	<% for(String hob : hobby) { %>
			<h6>취미:	<%=hob %></h6>
	<% } %>
	<p>
		<%=profile %>
	</p>
</body>
</html>