<%@page import="com.douzone.guestbook01.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook01.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<% 
	request.setCharacterEncoding("utf-8");

	String name= request.getParameter("name");
	String password= request.getParameter("password");
	String meaasge= request.getParameter("message");
	
	GuestbookVo vo = new GuestbookVo();
	
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(meaasge);
	
	new GuestbookDao().insert(vo);
	
	response.sendRedirect(request.getContextPath());
	
	%>