<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>EL 연습</h1>
	<%=request.getAttribute("ival")%><br /> ${ival}

	<h4>값 출력</h4>
	${ival}<br />
	${lval}<br />
	${fval}<br />
	${bval}<br />
	${sval}<br />

	<h4>객체 출력</h4>
	${obj }<br />
	${user.no }<br />

	<h4>Map의 값 출력</h4>
	${map.ival }<br />
	${map.lval }<br />
	${map.fval }<br />
	${map.bval }<br />
	${map.sval }<br />

	<h4>산술 연산</h4>
	${3*4+6/2 }<br />
	${ival + 10 }

	<h4>관계 연산</h4>
	${ival == 10 }
	<br />${ival < 5 }
	<br />${obj == null }<br />
	<br />${empty obj }<br />
	<br />${obj != null }<br />
	<br />${not empty obj }<br />

	<h4>논리 연산</h4>
	${ival == 10 &&  ival < 100}
	<br /> ${ival == 10 || ival < 100}

	<h4>요청 파라미터</h4>
	-- ${param.a + 10} --
	<br /> -- ${param.email} --
	<br />

</body>
</html>