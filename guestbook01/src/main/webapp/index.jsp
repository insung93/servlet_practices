<%@page import="com.douzone.guestbook01.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook01.vo.GuestbookVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
	request.setCharacterEncoding("utf-8");
	List<GuestbookVo> list = new GuestbookDao().findAll(); 
	%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="<%=request.getContextPath() %>/add.jsp" method="post">
	<table border=1 width=500>
		<tr>
			<td>이름</td><td><input type="text" name="name"></td>
			<td>비밀번호</td><td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
		</tr>
		<tr>
			<td colspan=4 align=right><input type="submit" VALUE=" 등록 "></td>
		</tr>
	</table>
	</form>
	<br>
	<% int count = list.size(); %>
	<% 
		for(int i = 0 ; i< list.size(); i++)  {
			String msg = list.get(i).getMessage().replaceAll("\n", "<br>");
	%>
	
		<table width=510 border=1>
	
			<tr>
				<td align="center">[<%=count-i %>]</td>
				<td><%=list.get(i).getName() %></td>
				<td><%=list.get(i).getRegDate() %></td>
				<td width=50 align="center"><a href="<%=request.getContextPath() %>/updateform.jsp?no=<%=list.get(i).getNo()%>">수정</a></td>
				<td width=50 align="center"><a href="<%=request.getContextPath() %>/deleteform.jsp?no=<%=list.get(i).getNo()%>">삭제</a></td>
			</tr>
			<tr>
				<td colspan=5><p><%=msg %></p></td>
			</tr>
		</table>
		<br>
	<% } %>
</body>
</html>