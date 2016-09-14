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
	<h2>修改相邻站点</h2>
	<form action="UpdateBstaiton" method="post">
		<input name="id" value="${b.id}" type="hidden">
	
	    驶过两站时间：<input name="time" type="text" value="${b.time}" class="textbox textbox_295" placeholder="驶过两站时间（分钟）"/><br>
	    
	    本 站 名 称：<select name="selfname" id="selfname" class="select">
	    	<option>——请选择站点——</option>
	    	<c:forEach var="s" items="${slist}">
	    		<option value="${s.name}" 
	    		
	    			<c:if test="${b.selfname==s.name}">selected="selected"</c:if>
	    		
	    		 >${s.name}</option>
	    	</c:forEach>
	    </select><br>
	    本 站 I D：<input name="selfstation" id="selfstation" value="${b.selfstation}" disabled="true" type="text" class="textbox textbox_225" placeholder="请选择站点名称！"/><br>
	    
	     下一站名称：<select name="nextname" id="nextname" class="select">
	    	<option>——请选择站点——</option>
	    	<c:forEach var="s" items="${slist}">
	    		<option value="${s.name}" 
	    		
	    			<c:if test="${b.nextname==s.name}">selected="selected"</c:if>
	    		
	    		  >${s.name}</option>
	    	</c:forEach>
	    </select><br>
	   下一站ID：<input name="nextstation" id="nextstation" value="${b.nextstation}" disabled="true" type="text" class="textbox textbox_225" placeholder="请选择站点名称！"/><br>
	    
	    
	    商务座票价：<input name="money0" type="text" value="${b.money0}" class="textbox textbox_295" placeholder="商务座票价"/><br>
	    一等座票价：<input name="money1" type="text" value="${b.money1}" class="textbox textbox_295" placeholder="一等座票价"/><br>
	    二等座票价：<input name="money2" type="text" value="${b.money2}" class="textbox textbox_295" placeholder="二等座票价"/><br>
	    站 票 票 价 ：<input name="money3" type="text" value="${b.money3}" class="textbox textbox_295" placeholder="站票票价"/><br>
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