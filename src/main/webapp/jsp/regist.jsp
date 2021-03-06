<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'regist.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" type="text/css" href="<c:url value='/user/css/regist.css'/>">
    <script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/user/js/regist.js'/>"> </script>
  </head>
  
  <body>
   <div id="divMain">
     <div id="divTitle">
     <span id="spanTitle">新用户注册</span>
     </div>
     <div id="divBody">
     <form action="<c:url value='/UserServlet'/>" method="post" id="registForm">
      <input type="hidden" name="method" value="regist"/>
       <table id="tableForm" >
         <tr>
           <td class="tdText">用户ID:</td>
           <td class="tdInput">
           <input class="inputClass" type="text" name="userID" id="UserID" value="${form.userID }" />
           </td>
           <td class="tdError">
            <label class="errorClass" id="UserIDError"></label>
           </td>
         </tr>
         <tr>
           <td class="tdText">用户名:</td>
           <td class="tdInput">
           <input class="inputClass" type="text" name="userName" id="UserName" value="${form.userName }"/>
           </td>
           <td class="tdError">
            <label class="errorClass" id="UserNameError">${errors.UserName}</label>
           </td>
         </tr>
         <tr>
           <td class="tdText">用户密码:</td>
           <td class="tdInput">
           <input class="inputClass" type="password" name="userPass" id="UserPass" value="${form.userPass }" />
           </td>
           <td class="tdError">
            <label class="errorClass" id="UserPassError" >${errors.UserPass}</label>
           </td>
         </tr>
         <tr>
           <td class="tdText">确认密码:</td>
           <td class="tdInput">
           <input class="inputClass" type="password" name="reUserPass" id="reUserPass" value="${form.reUserPass }"/>
           </td>
           <td class="tdError">
            <label class="errorClass" id="reUserPassError">${errors.reUserPass}</label>
           </td>
         </tr>
           <tr>
           <td class="tdText">部门编号:</td>
           <td class="tdInput">
           <input class="inputClass" type="text" name="depID" id="DepID" value="${form.depID }"/>
           </td>
           <td class="tdError">
            <label class="errorClass" id="DepIDError"></label>
           </td>
         </tr>
           <tr>
           <td class="tdText">部门名称:</td>
           <td class="tdInput">
           <input class="inputClass" type="text" name="depName" id="DepName" value="${form.depName }"/>
           </td>
           <td class="tdError">
            <label class="errorClass" id="DepNameError"></label>
           </td>
         </tr>
             <tr>
           <td class="tdText">联系方式:</td>
           <td class="tdInput">
           <input class="inputClass" type="text" name="conTract" id="ConTract" value="${form.conTract }" />
           </td>
           <td class="tdError">
            <label class="errorClass" id="ConTractError"></label>
           </td>
         </tr>
         <tr>
           <td class="tdText">Email:</td>
           <td class="tdInput">
           <input class="inputClass" type="text" name="email" id="Email" value="${form.email }" />
           </td>
           <td class="tdError">
            <label class="errorClass" id="EmailError">${errors.Email}</label>
           </td>
         </tr>
         <tr>
           <td class="tdText">验证码:</td>
           <td class="tdInput">
           <input class="inputClass" type="text" name="verifyCode" id="verifyCode" value="${form.verifyCode }"/>
           </td>
           <td class="tdError">
            <label class="errorClass" id="verifyCodeError">${errors.verifyCode}</label>
           </td>
         </tr>
         <tr>
           <td class="tdText"></td>
           <td class="tdInput">
           <div id="divVerifyCode"><img id="imgVerifyCode" src="<c:url value='/VerifyCodeServlet'/>"/></div>
           </td>
           <td class="tdError">
            <label><a href="javascript:_hyz()">换一张</a></label>
           </td>
         </tr>
         <tr>
           <td class="tdText"></td>
           <td class="tdInput">
           <input id="submitbtn" type="image" src="<c:url value='/img/regist1.png'/>"/>
           </td>
           <td class="tdError">
            <label></label>
           </td>
         </tr>
       
       </table>
       </form>

     </div>
   </div>
  </body>
</html>