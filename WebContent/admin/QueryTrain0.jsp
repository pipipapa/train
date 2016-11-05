<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
</head>
<body>
	<h2>全国车次列表</h2>
	<a href="toAddTrain" style="margin-left: 60%;margin-bottom: 10px;">
			<input type="button" value="添加新车次" class="group_btn"/></a><br>
	
	<table class="table">
	       <tr>
	        <th>车次名称</th>
	        <th>路线名称</th>
	        <th>发车时间</th>
	        <th>到达时间</th>
	        <th>票数</th>
	        <th>操作</th>
	       </tr>
	       <c:forEach var="t" items="${tlist}">
		       <tr>
		        <td>${t.name}</td>
		        
		        <c:forEach var="l" items="${llist}">
		        	<c:if test="${t.lid==l.id}">
		        		<td>${l.name}</td>
		        	</c:if>
		        </c:forEach>
		        
		        <td><fmt:formatDate value="${t.stime}" pattern="yyyy年MM月dd日HH点mm分" /></td>
		        <td><fmt:formatDate value="${t.etime}" pattern="yyyy年MM月dd日HH点mm分" /></td>
		        <td>${t.number}</td>
		        <td>
		         <a href="toUpdateTrain?id=${t.id}" class="inner_btn">修改</a>
		         <a href="DeleteTrain?id=${t.id}" class="inner_btn">删除</a>
		        </td>
		       </tr>
	       </c:forEach>
	</table>
<br><br><br>
</body>
</html>