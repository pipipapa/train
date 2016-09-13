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
	<h2>新增相邻站点</h2>
	<form action="AddBstation" method="post">
	    <input name="time" type="text" class="textbox textbox_295" placeholder="驶过两站时间（分钟）"/><br>
	    
	    本 站 名 称：<select name="selfname" id="selfname" class="select">
	    	<option>——请选择站点——</option>
	    	<c:forEach var="s" items="${slist}">
	    	<option>${s.name}</option>
	    	</c:forEach>
	    </select><br>
	    本 站 I D：<input name="selfstation" id="selfstation" disabled="true" type="text" class="textbox textbox_225" placeholder="请选择站点名称！"/><br>
	    
	     下一站名称：<select name="nextname" id="nextname" class="select">
	    	<option>——请选择站点——</option>
	    	<c:forEach var="s" items="${slist}">
	    	<option value="${s.name}">${s.name}</option>
	    	</c:forEach>
	    </select><br>
	   下一站ID：<input name="nextstation" id="nextstation" disabled="true" type="text" class="textbox textbox_225" placeholder="请选择站点名称！"/><br>
	    
	    
	    <input name="money0" type="text" class="textbox textbox_295" placeholder="商务座票价"/><br>
	    <input name="money1" type="text" class="textbox textbox_295" placeholder="一等座票价"/><br>
	    <input name="money2" type="text" class="textbox textbox_295" placeholder="二等座票价"/><br>
	    <input name="money3" type="text" class="textbox textbox_295" placeholder="站票票价"/><br>
	    <input type="submit" value="提交" class="group_btn"/><br>
	</form>
	
	
	
<script type="text/javascript">




$("#selfname").change(function(){ //事件發生 
	jQuery('option:selected', this).each(function(){ //印出選到多個值 
	
		var sname=this.value;
		$.post("QueryByName",{sname:sname},function(data){
			
			$("#selfstation").val(data.sid);
		},"json");
	}); 
});

$("#nextname").change(function(){ //事件发生
	jQuery('option:selected', this).each(function(){
	
		var sname=this.value;
		$.post("QueryByName",{sname:sname},function(data){
			
			$("#nextstation").val(data.sid);
		},"json");
	}); 
});

</script>
	
	
</body>
</html>