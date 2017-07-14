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

    <title>My JSP 'Auth.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <link rel="stylesheet" type="text/css" href="<c:url value='/user/css/authorize.css'/>">
    <script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value='/user/css/auth.css'/>" />
</head>
<script type="text/javascript">
    $(function(){
        var id = null;
        $(".trClass").each(function(){
            id = $(this).attr("id");
            if("${Auth.userID}" == id){
                $(this).attr("class","testOne");
            }
            $(this).click(function(){
                $(".testOne").attr("class","trClass");
                id = $(this).attr("id");
                window.location = "${pb.url}&pc=${pb.pc}&userID="+id;
            });
        });

        <c:if test="${Auth.userManage eq 1}">
        $("#userManage").attr('checked','checked');
        </c:if>
        <c:if test="${Auth.depManage eq 1}">
        $("#depManage").attr('checked','checked');
        </c:if>
        <c:if test="${Auth.nodeManage eq 1}">
        $("#nodeManage").attr('checked','checked');
        </c:if>
    });


</script>
<body>
<div id="divLeft">
    <div id="divTitle">
        <span class="spanTitle">用户信息</span>
    </div>
    <div id="divBodyleft">
        <table id="tableOne">
            <tr class="trTitle">
                <th class="thText">用户ID</th>
                <th class="thText">用户名</th>
            </tr>
            <c:forEach items="${pb.beanList }" var="User">
                <tr class="trClass" id="${User.userID }">
                    <td class="tdText"><b>${User.userID }</b></td>
                    <td class="tdText"><b>${User.userName }</b></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

<div id="divRight" >
    <div id="divTitle1">
        <span class="spanTitle">用户权限</span>
    </div>
    <div id="divBodyright">
        <form id="tableForm" action="<c:url value='/AuthServlet'/>" method="post">
            <input type="hidden" name="userID" value="${Auth.userID }"/>
            <input type="hidden" name="method" value="editAuth"/>
            <table id="tableTwo">
                <tr class="trClass1">
                    <td class="tdText1" id="td1"> <input type="checkbox" id="userManage" name="userManage"/>用户管理 </td>
                    <td class="tdText1"></td>
                </tr>
                <tr class="trClass1">
                    <td class="tdText1"> <input type="checkbox" id="depManage" name="depManage"/>部门管理</td>
                    <td class="tdText1"></td>
                </tr>
                <tr class="trClass1">
                    <td class="tdText1"> <input type="checkbox" id="nodeManage" name="nodeManage"/>节点管理</td>
                    <td class="tdText1"></td>
                </tr>
                <tr class="trClass1">
                    <td class="tdText1"></td>
                    <td class="tdText1"></td>
                </tr>
                <tr class="trClass1">
                    <td class="tdText1"></td>
                    <td class="tdText1"></td>
                </tr>
                <tr class="trClass1">
                    <td class="tdText1"></td>
                    <td class="tdText1"></td>
                </tr>
                <tr class="trClass1">
                    <td class="tdText1"></td>
                    <td class="tdText1"></td>
                </tr>
                <tr class="trClass1">
                    <td class="tdText1"></td>
                    <td class="tdText1"></td>
                </tr>
                <tr class="trClass1">
                    <td class="tdText1"></td>
                    <td class="tdText1"></td>
                </tr>
                <tr class="trClass1">
                    <td class="tdText1"></td>
                    <td class="tdText1"></td>
                </tr>

                <tr class="trClass1">
                    <td class="tdText1" colspan="2" style="text-align: right;"><input type="submit" value="修改权限"></td>
                </tr>
            </table>
        </form>
    </div>
    <div class="pagination"></div>

</div>
</body>
<script type="text/javascript" src="js/jquery.pagination.js"></script>
<script type="text/javascript">

    $('.pagination').pagination(${pb.tr},{
        current_page :${pb.pc}-1,
        callback: function(page){
            page = page +1;
            window.location="${pb.url}"+"&pc="+page;
        },
        display_msg: false
    });

</script>
</html>
