<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>管理员登录页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<!-- <link href="css/style.css" rel="stylesheet" type="text/css" />
	<script language="JavaScript" src="js/jquery.js"></script>
	<script src="js/cloud.js" type="text/javascript"></script>
	
	<script language="javascript">
		$(function(){
	    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
		$(window).resize(function(){  
	    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	    })  
	});  
	</script>  -->
	
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	<script type="text/javascript">
		function checkForm() {
			if(!$("#adminname").val()) {
				alert("管理员名称不能为空！");
				return false;
			}
			if(!$("#adminpwd").val()) {
				alert("管理员密码不能为空！");
				return false;
			}
			return true;
		}
	</script>
  </head>
  
  <body>
  <div style="padding-left:20%;padding-top:5%;">
<h1>管理员登录页面</h1>

  <p style="font-weight: 900; color: red">${msg }</p>
<form action="<c:url value='/AdminServlet'/>" method="post" onsubmit="return checkForm()" target="_top">
	<input type="hidden" name="method" value="login"/>
	管理员账户：<input type="text" name="adminname" value="" id="adminname"/><br/>
	密　　　码：<input type="password" name="adminpwd" id="adminpwd"/><br/>
	<input type="submit" value="进入后台"/>
</form>
</div>
 </body>
  
 <%-- <body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录后台管理界面</span>    
    <ul>
    <li><a href="../index.jsp">回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span>  
    <form class="loginbox" action="<c:url value='/AdminServlet'/>" method="post" onsubmit="return checkForm()" target="_top">
    
	    <ul>
	    <li><input name="adminname"id="adminname" type="text" class="loginuser" value="admin" onclick="JavaScript:this.value=''"/></li>
	    <li><input name="adminpwd" id="adminpwd" type="password" class="loginpwd" value="123456789" onclick="JavaScript:this.value=''"/></li>
	    <li><input type="submit" class="loginbtn" value="进入后台"/>
	    </ul>
    
    </form>
    
    </div>
 
</body> --%>
  
</html>
