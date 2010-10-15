<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Калькулятор</title>
</head>
<body>
	<jsp:useBean id="data" scope="session" class="calc.DataModel"></jsp:useBean>
	<form method="get" action="result.do">
		Первый аргумент: <input type="text" value="${data.first}" name="first"/><br/>
		Второй аргумент: <input type="text" value="${data.second}" name="second"/><br/>
		<input type="submit" value="умножить" onclick="document.getElementById('op').value = '0'; return true;"/> 
		<input type="submit" value="разделить" onclick="document.getElementById('op').value = '1'; return true;"/> 
		<input type="submit" value="сложить" onclick="document.getElementById('op').value = '2'; return true;"/> 
		<input type="submit" value="вычесть" onclick="document.getElementById('op').value = '3'; return true;"/> 
		<input type="hidden" value="" name="type" id="op"/>
	</form>
</body>
</html>