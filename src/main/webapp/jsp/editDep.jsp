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
    <script type="text/javascript" src="<c:url value='/user/js/editdep.js'/>"> </script>
  </head>
  
  <body>
   <div id="divMain">
     <div id="divTitle">
     <span id="spanTitle">编辑部门</span>
     </div>
     <div id="divBody">
     <form action="<c:url value='/DepartServlet'/>" method="post" id="registForm">
      <input type="hidden" name="method" value="editDep"/>
      <input type="hidden" name="depID" id="depID" value="${form.depID }" />
      <input type="hidden" name="pc" value="${pc }">
       <table id="tableForm" >       
         <tr>
           <td class="tdText">部门名称:</td>
           <td class="tdInput">
           <input class="inputClass" type="text" name="depName" id="DepName" value="${form.depName }" />
           </td>
           <td class="tdError">
            <label class="errorClass" id="DepNameError" >${errors.DepName}</label>
           </td>
         </tr>
           <tr>
           <td class="tdText">负责人编号:</td>
           <td class="tdInput">
           <input class="inputClass" type="text" name="userID" id="UserID" value="${form.userID }"/>
           </td>
           <td class="tdError">
            <label class="errorClass" id="UserIDError"></label>
           </td>
         </tr>
           <tr>
           <td class="tdText">负责人姓名:</td>
           <td class="tdInput">
           <input class="inputClass" type="text" name="userName" id="UserName" value="${form.userName }"/>
           </td>
           <td class="tdError">
            <label class="errorClass" id="UserNameError"></label>
           </td>
         </tr>
             <tr>
           <td class="tdText">联系电话:</td>
           <td class="tdInput">
           <input class="inputClass" type="text" name="contract" id="ConTract" value="${form.contract }" />
           </td>
           <td class="tdError">
            <label class="errorClass" id="ConTractError"></label>
           </td>
         </tr>
         <tr>
           <td class="tdText">电子邮箱:</td>
           <td class="tdInput">
           <input class="inputClass" type="text" name="email" id="Email" value="${form.email }" />
           </td>
           <td class="tdError">
            <label class="errorClass" id="EmailError">${errors.Email}</label>
           </td>
         </tr>
        
         
         <tr>
           <td class="tdText"></td>
           <td class="tdInput">
           <input type="reset" value="一键还原">
           <input type="submit" value="编辑完成">
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