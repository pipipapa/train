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
	<h2>相邻站点列表</h2>
	<a href="toAddBstation" style="margin-left: 60%;margin-bottom: 10px;"><input type="button" value="添加相邻站点" class="group_btn"/></a><br>
	
	<table class="table">
	       <tr>
	        <th>通过时间（分钟）</th>
	        <th>本站</th>
	        <th>相邻站</th>
	        <th>商务座价格</th>
	        <th>一等座价格</th>
	        <th>二等座价格</th>
	        <th>站票价格</th>
	        <th>操作</th>
	       </tr>
	       <c:forEach var="b" items="${blist}">
		       <tr height="40px">
		        <td>${b.time}</td>
		        <td>${b.selfname}</td>
		        <td>${b.nextname}</td>
		        <td>${b.money0}</td>
		        <td>${b.money1}</td>
		        <td>${b.money2}</td>
		        <td>${b.money3}</td>
		        <td>
		         <a href="toUpdateBstation?id=${b.id}" class="inner_btn">修改</a>
		         <a href="DeleteBstation?id=${b.id}" class="inner_btn">删除</a>
		        </td>
		       </tr>
	       </c:forEach>
	</table>
<br><br><br>
</body>
</html>