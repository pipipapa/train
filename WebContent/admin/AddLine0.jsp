<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery.js"></script>
</head>
<body>
	<h2>新增路线</h2>
	<form action="AddLine" method="post">
	路线名称：
	    <input name="name" type="text" class="textbox textbox_295" placeholder="路线名称"><br>
	 始 发 站 ：
		<select name="station1" id="station1" class="select">
	    	<option>——请选择站点——</option>
	    	<c:forEach var="s" items="${slist}">
	    	<option value="${s.name}">${s.name}</option>
	    	</c:forEach>
	    </select><br>
	    
	     
	    
	    <input type="submit" value="提交" class="group_btn"/><br>
	</form>
	
	
	
</body>
</html>