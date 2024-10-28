<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript"> 
	function disptime(){
	 var today = new Date(); //获得当前时间
	 var hh = today.getHours();  //获得小时、分钟、秒
	 var mm = today.getMinutes();
	 var ss = today.getSeconds();
	 /*设置div的内容为当前时间*/
	 document.getElementById("myclock").innerHTML="<h2>现在时间是:"+hh+":"+mm+":"+ss+"<h2>";
	/*
	  使用setTimeout在函数disptime()体内再次调用setTimeout
	  设置定时器每隔1秒（1000毫秒），调用函数disptime()执行，刷新时钟显示
	*/
	  var myTime=setTimeout("disptime()",1000);
	}
	 
	</script>
	
<style type="text/css">
	body {
		background: #15B69A;
		margin: 0px;
		color: #ffffff;
	}
	a {
		text-decoration:none;
		color: #ffffff;
		font-weight: 900;
	} 
	a:hover {
		text-decoration: underline;
		color: #ffffff;
		font-weight: 900;
	}
</style>
  </head>
  
  <body onload="disptime()">
<h1 style="text-align: center;">铛铛书城</h1>
<div style="font-size: 11pt; line-height: 5px;">

<%-- 根据用户是否登录，显示不同的链接 --%>
<c:choose>
	<c:when test="${empty sessionScope.sessionUser }">
		  <a href="<c:url value='/jsps/user/login.jsp'/>" target="_parent">会员登录</a> |&nbsp; 
		  <a href="<c:url value='/jsps/user/regist.jsp'/>" target="_parent">注册会员账号</a>	
	</c:when>
	<c:otherwise>
		      尊敬的会员：${sessionScope.sessionUser.loginname }&nbsp;&nbsp;|&nbsp;
		  <a href="<c:url value='/CartItemServlet?method=myCart'/>" target="body">我的购物车</a>&nbsp;&nbsp;|&nbsp;
		  <a href="<c:url value='/OrderServlet?method=myOrders'/>" target="body">我的订单</a>&nbsp;&nbsp;|&nbsp;
		  <a href="<c:url value='/jsps/user/pwd.jsp'/>" target="body">修改密码</a>&nbsp;&nbsp;|&nbsp;&nbsp;
		  <a href="<c:url value='/UserServlet?method=quit'/>" target="_parent">退出</a>&nbsp;&nbsp;|&nbsp;
		  <a href="<c:url value='/adminjsps/login.jsp'/>" target="_blank">后台管理</a>&nbsp;&nbsp;|&nbsp;&nbsp;
	</c:otherwise>
</c:choose>


	<div id="myclock" style="padding-left:70%;padding-bottom:5px"></div>
</div>
  </body>
</html>
