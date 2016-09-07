<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
	<h2>全国站点列表</h2>
	<a href="AddStation0.html" style="margin-left: 60%;margin-bottom: 10px;"><input type="button" value="添加新站点" class="group_btn"/></a><br>
	
	<table class="table">
	       <tr>
	        <th>站点名称</th>
	        <th>停留时间（分钟）</th>
	        <th>操作</th>
	       </tr>
	       <c:forEach var="s" items="${slist}">
		       <tr>
		        <td>${s.name}</td>
		        <td>${s.time}</td>
		        <td>
		         <a href="toUpdateStation?id=${s.id}" class="inner_btn">修改</a>
		         <a href="DeleteStation?id=${s.id}" class="inner_btn">删除</a>
		        </td>
		       </tr>
	       </c:forEach>
	</table>
<br><br><br>
</body>
</html>