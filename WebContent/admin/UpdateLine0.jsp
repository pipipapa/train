<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改路线</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<script type="text/javascript" src="js/jquery.js"></script>
</head>
<body>
	<h2>修改路线</h2>
	<form action="UpdateLine" method="post">
	<input name="id" type="hidden" value="${l.id}">
	路线名称：
	    <input name="name" type="text" class="textbox textbox_295" placeholder="路线名称" value="${l.name}"><br>
	 始 发 站 ：
		<select name="station1" id="station1" class="select">
	    	<option>请选择起始站点</option>
	    	<c:forEach var="s" items="${slist}">
	    			<option value="${s.name}">${s.name}</option>
	    	</c:forEach>
	    </select><br>
	    
	    下 一 站 ：
		<select name="station2" id="station2" class="select">
	    	<option value="">请先选择起始站点在选择本站点</option>
	    	
	    </select><br>
	    
	     下 一 站 ：
		<select name="station3" id="station3" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	      
	     下 一 站 ：
		<select name="station4" id="station4" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	      
	     下 一 站 ：
		<select name="station5" id="station5" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	      
	     下 一 站 ：
		<select name="station6" id="station6" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station7" id="station7" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station8" id="station8" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station9" id="station9" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station10" id="station10" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station11" id="station11" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station12" id="station12" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station13" id="station13" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station14" id="station14" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station15" id="station15" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station16" id="station16" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station17" id="station17" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station18" id="station18" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station19" id="station19" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station20" id="station20" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station21" id="station21" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station22" id="station22" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station23" id="station23" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station24" id="station24" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station25" id="station25" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	           
	     下 一 站 ：
		<select name="station26" id="station26" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station27" id="station27" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station28" id="station28" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station29" id="station29" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station30" id="station30" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station31" id="station31" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>  
	        
	     下 一 站 ：
		<select name="station32" id="station32" class="select">
	    	<option value="">请先选择上方站点在选择本站点</option>
	    </select><br>   
	        
	    
	    <input type="submit" value="提交" class="group_btn"/><br>
	</form>


<script type="text/javascript">

	$("select.select").change(function(){

		var seid=this.id;//获得选择的select的id
		var selfnum=seid.replace(/[^0-9]/ig,"");//获得其中的数字
		nextnum=parseInt(selfnum);//不用加1
		
		jQuery('option:selected', this).each(function(){
			
			var sname=this.value;
			$.post("QueryNextBySelfName",{sname:sname},function(data){


				$("select:eq("+nextnum+")").html("");//将下一个选项框清空
				$("select:eq("+nextnum+")").append('<option value="">请选择站点</option>');
				
				for(var i=(nextnum+1);i<33;i++)
				{
					$("select:eq("+i+")").html("");//将后面的选项框清空
					$("select:eq("+i+")").append('<option value="">请先选择上方站点在选择本站点</option>');
				}
				for(var i=0;i<data.length;i++)
				{
					$("select:eq("+nextnum+")").append('<option value="'+data[i]+'">'+data[i]+'</option>');
					
				}
			},"json");
		}); 
		
	});

	
	
</script>


</body>
</html>