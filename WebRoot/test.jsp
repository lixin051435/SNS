<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>

  </head>
  
  <body>
	
<script type="text/javascript">
function login(form){
			  var boo=1;
			  with(form){
			  jQuery.ajax({
		          type: "POST",
		          url: 'user!validate',
		          cache: false,
		          async: false,
		          data:{
		           	 username:username.value,
		           	 password:password.value
		          },
		          success: function(data){
		        	  boo=data;
		        	   if(boo == 1) jQuery("#validate_login").text("*用户名密码不匹配，重新输入吧");
		          }
		       });
		       }
			  return boo == 0 ? true : false;
		}

</script>
	
	
	
	 <form action="profile.jsp" onsubmit="return login(this)" method="post">
              <fieldset>用户名：<input name="username" type="text" value="" /></fieldset>  
              <fieldset>密&nbsp;&nbsp;&nbsp;码：<input name="password" type="text" value="" /></fieldset>  
              <br>
              <fieldset><input type="submit" value="登录" />&nbsp;&nbsp;&nbsp;<input type="button" value="注册" /></fieldset>
              </form>
  </body>
</html>
