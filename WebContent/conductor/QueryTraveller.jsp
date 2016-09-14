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
	<h2 align="center" >乘客信息</h2>
	<a href="toAddBstation" style="margin-left: 60%;margin-bottom: 10px;"></a><br>
	
	<table class="table">
	       <tr>
	        <th>车次</th>
	        <th>车票编号</th>
	        <th>姓名</th>
	        <th>身份证号</th>
	        <th>起始站</th>
	        <th>终点站</th>
	        <th>始发时间</th>
	        <th>座位类型</th>
	        <th>座位号</th>
	        <th>车票价格</th>
	        <th>操作</th>
	       </tr>
	       <c:forEach var="b" items="${blist}">
		       <tr>
		        <td>${b.time}</td>
		        <td>${b.selfname}</td>
		        <td>${b.nextname}</td>
		        <td>${b.money0}</td>
		        <td>${b.money1}</td>
		        <td>${b.money2}</td>
		        <td>${b.money3}</td>
		        <td>
		         <a href="toUpdateBstation?id=${b.id}" class="inner_btn">改签</a>
		         <a href="DeleteBstation?id=${b.id}" class="inner_btn">退票</a>
		        </td>
		       </tr>
	       </c:forEach>
	</table>
<br><br><br>
</body>
</html>