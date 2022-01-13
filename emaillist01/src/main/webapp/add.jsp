<%@page import="com.poscoict.emaillist.dao.EmaillistDao"%>
<%@page import="com.poscoict.emaillist.vo.EmaillistVo"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("utf-8");

String firstName = request.getParameter("fn");
String lastName = request.getParameter("ln");
String email = request.getParameter("email");

EmaillistVo vo = new EmaillistVo();
vo.setFirstName(firstName);
vo.setLastName(lastName);
vo.setEmail(email);

new EmaillistDao().insert(vo);

response.sendRedirect(request.getContextPath());
%>