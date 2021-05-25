<%@page import="com.douzone.guestbook01.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook01.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
		request.setCharacterEncoding("utf-8");
    	String no = request.getParameter("no");
    	String password = request.getParameter("password");
    	String name = request.getParameter("name");
    	String message = request.getParameter("message");
    	
    	GuestbookVo vo = new GuestbookVo();
    	
    	vo.setNo(Long.parseLong(no));
    	vo.setPassword(password);
    	vo.setName(name);
    	vo.setMessage(message);
    	
    	new GuestbookDao().update(vo);
    	
    	response.sendRedirect(request.getContextPath());	
    %>