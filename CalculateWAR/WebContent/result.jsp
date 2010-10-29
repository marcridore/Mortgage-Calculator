<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Страница результатов вычисления</title>
</head>
<body>
	<a href="input.jsp">Назад</a><br/>
	<jsp:useBean id="data" scope="session" class="calc.DataModel"></jsp:useBean>
	Результат: <jsp:getProperty property="result" name="data"/>
</body>
</html>