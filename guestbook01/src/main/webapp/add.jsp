<%@page import="com.poscoict.guestbook.dao.GuestbookDao"%>
<%@page import="com.poscoict.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
String password = request.getParameter("password");
String message = request.getParameter("message");

GuestbookVo vo = new GuestbookVo();

vo.setName(name);
vo.setPassword(password);
vo.setMessage(message);

new GuestbookDao().insert(vo);

response.sendRedirect("/guestbook01");
%>