<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
	<h2>编辑站点</h2>
	<form action="UpdateStation" method="post">
		<input value="${s.id}" type="hidden" name="id">
	    <input value="${s.name}" name="name" type="text" class="textbox textbox_295" placeholder="站点名称"/><br>
	    <input value="${s.time}" name="time" type="text" class="textbox textbox_295" placeholder="停留时间（分钟）"/><br>
	    <input type="submit" value="提交" class="group_btn"/><br>
	</form>
</body>
</html>