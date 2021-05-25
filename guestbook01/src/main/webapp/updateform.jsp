<%@page import="com.douzone.guestbook01.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook01.vo.GuestbookVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
		request.setCharacterEncoding("utf-8");
    	String no = request.getParameter("no");
    	
    	GuestbookVo vo = new GuestbookVo();
    	
    	vo.setNo(Long.parseLong(no));
    	
    	List<GuestbookVo> list = new GuestbookDao().findAny(vo);
    %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록-수정하기</title>
</head>
<body>
	<!-- <form method="post" action="<%=request.getContextPath() %>/delete.jsp">
	<input type='hidden' name="no" value="<%=request.getParameter("no") %>">
	<table>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="password"></td>
			<td><input type="submit" value="수정"></td>
			<td><a href="<%=request.getContextPath() %>/index.jsp">메인으로 돌아가기</a></td>
		</tr>
	</table>
	</form>
	
	 -->
	<form action="<%=request.getContextPath()%>/update.jsp" method="post">
	<input type='hidden' name="no" value="<%=request.getParameter("no") %>">
		<table width=600 border=1>
			<tr>
				<td>이름</td>
				<td width=50><input type="text" name="name" value="<%=list.get(0).getName()%>"></td>
				<td><%=list.get(0).getRegDate()%></td>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=5><textarea name="message" cols=60 rows=5><%=list.get(0).getMessage()%></textarea></td>
			</tr>
			<tr>
				<td colspan=5 align=right><input type="submit" VALUE=" 수정하기 "></td>
			</tr>
		</table>
	</form>
	<a href="<%=request.getContextPath()%>">메인으로 돌아가기</a>
	<br>

</body>
</html>