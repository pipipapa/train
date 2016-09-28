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
	<a href="toAddLine" style="margin-left: 60%;margin-bottom: 10px;"><input type="button" value="添加路线" class="group_btn"/></a><br>
	
	<table class="table" style="width:100%;margin: 0px;">
	       <tr>
	        <th width="40px">路线名称</th>
	        <th width="10px">始发站</th>
	        
	        <c:forEach begin="0" end="33">
	        	<th width="10px">下一站</th>
	        </c:forEach>
	        
	        
	        
	        <th width="200px">操作</th>
	       </tr>
	       <c:forEach var="l" items="${llist}">
		       <tr>
		        <td>${l.name}</td>
		        <td>${l.station1}</td>
		        <td>${l.station2}</td>
		        <td>${l.station3}</td>
		        <td>${l.station4}</td>
		        <td>${l.station5}</td>
		        <td>${l.station6}</td>
		        <td>${l.station7}</td>
		        <td>${l.station8}</td>
		        <td>${l.station9}</td>
		        <td>${l.station10}</td>
		        <td>${l.station11}</td>
		        <td>${l.station12}</td>
		        <td>${l.station13}</td>
		        <td>${l.station14}</td>
		        <td>${l.station15}</td>
		        <td>${l.station16}</td>
		        <td>${l.station17}</td>
		        <td>${l.station18}</td>
		        <td>${l.station19}</td>
		        <td>${l.station20}</td>
		        <td>${l.station21}</td>
		        <td>${l.station22}</td>
		        <td>${l.station23}</td>
		        <td>${l.station24}</td>
		        <td>${l.station25}</td>
		        <td>${l.station26}</td>
		        <td>${l.station27}</td>
		        <td>${l.station28}</td>
		        <td>${l.station29}</td>
		        <td>${l.station30}</td>
		        <td>${l.station31}</td>
		        <td>${l.station32}</td>
		        <td>${l.station33}</td>
		        <td>${l.station34}</td>
		        <td>${l.station35}</td>
		        <td>
		         <a href="toUpdateLine?id=${l.id}" class="inner_btn">修改</a>
		         <a href="DeleteLine?id=${l.id}" class="inner_btn">删除</a>
		        </td>
		       </tr>
	       </c:forEach>
	</table>
<br><br><br>
</body>
</html>