<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ошибки при вычислениях</title>
</head>
<body>
	<a href="input.jsp">Назад</a><br/>
	<h3 style="color: red">Ошибочка</h3>
	<pre>
	<%=exception %>
	</pre>
</body>
</html>