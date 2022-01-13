<%@page import="com.poscoict.guestbook.dao.GuestbookDao"%>
<%@page import="com.poscoict.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("utf-8");

Long no = Long.parseLong(request.getParameter("no"));
String password = request.getParameter("password");

new GuestbookDao().delete(no, password);

response.sendRedirect("/guestbook01");
%>