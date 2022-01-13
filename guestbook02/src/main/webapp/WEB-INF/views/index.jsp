<%@page import="com.poscoict.guestbook.vo.GuestbookVo"%>
<%@page import="com.poscoict.guestbook.dao.GuestbookDao"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
GuestbookDao dao = new GuestbookDao();
List<GuestbookVo> list = dao.findAll();
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/gb" method="post">
		<table border=1 width=500>
			<tr>
				<input type="hidden" name="a" value="add">
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="message" cols=60 rows=5></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" value="등록"></td>
			</tr>
		</table>
	</form>
	<br>
	<%
	for (int i = list.size() - 1; i >= 0; i--) {
	%>
	<table width=510 border=1>
		<tr>
			<td><%=i + 1%></td>
			<td><%=list.get(i).getName()%></td>
			<td><%=list.get(i).getReg_date()%></td>
			<td><a
				href="<%=request.getContextPath()%>/gb?a=deleteform&no=<%=list.get(i).getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><%=list.get(i).getMessage().replace("\n", "<br>")%></td>
		</tr>
	</table>
	<%
	}
	%>
</body>
</html>