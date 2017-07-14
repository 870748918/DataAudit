<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=emulateIE7" />
<link rel="stylesheet" type="text/css" href="<c:url value='/css/style.css'/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value='/css/skin_/login.css'/>"/>
<script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
<title>桂电药品监管系统_用户登录</title>


</head>

<body>
<div id="container">
    <div id="bd">
    	<div id="main">
        	<div class="login-box">
                <div id="logo"></div>
                <h1></h1>
                <div class="input username" id="username">
                    <label for="userName">用户ID</label>
                    <span></span>
                    <input type="text" id="userName" name="userID" value="${admin.userID }"/>
                </div>
                <div class="input psw" id="psw">
                    <label for="password">密&nbsp;&nbsp;&nbsp;&nbsp;码</label>
                    <span></span>
                    <input type="password" id="password" name="userPass" value="${admin.userPass }"/>
                </div>
                <div class="input validate" id="validate">                                     
                </div>
                <div class="msg">                   
                    <font size="3.5px" color="red">${msg }</font>
                </div>
                <div class="regist">
                   <a href="<c:url value='/jsp/regist.jsp'/>">立即注册</a>
                </div>
                <div id="btn" class="loginButton">
                    <input type="button" class="button" value="登录"  />
                </div>
            </div>
        </div>
    </div>
   </div>
</div>

</body>
<script type="text/javascript">
	var height = $(window).height() > 445 ? $(window).height() : 445;
	$("#container").height(height);
	var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
	$('#bd').css('padding-top', bdheight);
	$(window).resize(function(e) {
        var height = $(window).height() > 445 ? $(window).height() : 445;
		$("#container").height(height);
		var bdheight = ($(window).height() - $('#bd').height()) / 2 - 20;
		$('#bd').css('padding-top', bdheight);
    });
	$('select').select();
	
	$('.loginButton').click(function(e) {
		var userID = $("#userName").val();
		var userPass = $("#password").val();
        document.location.href = "<c:url value='/admin/login'/>?method=login&userID="+userID+"&userPass="+userPass;
    });
</script>
</html>
