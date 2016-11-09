<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style1.css" />
</head>
<body>
	<h2 align="center" >乘客信息</h2>
	<a href="toAddBstation" style="margin-left: 60%;margin-bottom: 10px;"></a><br>
	
	<table class="table">
	       <tr>
	        <th>姓名</th>
	        <th>证件类型</th>
	        <th>身份证号</th>
	        <th>性别</th>
	        <th>生日</th>
	        <th>电话</th>
	        <th>邮件</th>
	        <th>操作</th>
	       </tr>
	       <c:forEach var="u" items="${ulist}">
		       <tr>
		        <td>${u.name}</td>
		        <td>${u.cardtype}</td>
		        <td>${u.idnumber}</td>
		        <td>${u.sex}</td>
		        <td>${u.birthday}</td>
		        <td>${u.tel}</td>
		        <td>${u.email}</td>
		        <td>
		         <a href="toUpdateBstation?id=${u.id}" class="inner_btn">改签</a>
		         <a href="DeleteBstation?id=${u.id}" class="inner_btn">退票</a>
		        </td>
		       </tr>
	       </c:forEach>
	</table>
<br><br><br>
</body>
</html>