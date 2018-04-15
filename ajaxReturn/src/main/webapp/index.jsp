<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'welcome.jsp' starting page</title>
    <script type="text/javascript" src="js/jquery-1.8.2.js"></script>
    <script type="text/javascript">
    	$(function(){
    		$("button").click(function(){
    			$.ajax({
    				type:'POST',
    				url:"test/myAjax.do",
    				data:{
    					name:"马云",
    					age:23
    				},
    				success:function(data){
    					//var json = eval("("+data+")");//利用eval將json字符串，转成json对象
    					console.log(data);
    				}
    			});
    		});
    	});
    </script>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <button>提交ajax请求</button>
  </body>
</html>
