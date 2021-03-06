<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=emulateIE7"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/style.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/WdatePicker.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/skin_/table.css'/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value='/css/jquery.grid.css'/>"/>

    <title>表格</title>
    <script>
        /*
         * 批量删除实现
         */

        function batchDelete() {
            //获取所有打勾的复选框
            //获取其cartItemid构成一个以,分割的字符串
            //设置location:/CartServlet method=batchDelete cartItemIds = xxx
            var userIDArray = new Array();
            var i = 1;
            $(":checkbox[checked=checked]").each(function () {
                    i = 1;
                    <c:forEach items="${pb.beanList }" var="User">
                    if ($(this).val() == i) {
                        userIDArray.push("${User.userID}");
                    }
                    i++;
                    </c:forEach>
                }
            );
            var hello = window.confirm("你确实要删除吗?");
            if (hello == true)
                location = "/DataAudit/UserServlet?method=batchDelete&userIDs=" + userIDArray;

        }

    </script>
</head>

<body>
<div id="container">
    <div id="hd"></div>
    <div id="bd">
        <div id="main">
            <div class="search-box ue-clear">
                <div class="search-area">
                    <div class="kv-item ue-clear">
                        <label>选择时间：</label>
                        <div class="kv-item-content ue-clear">
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time"/>
                                    <span class="radio"></span>
                                </span>
                                <span class="text">全部</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time"/>
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近3天</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time"/>
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近一周</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time"/>
                                    <span class="radio"></span>
                                </span>
                                <span class="text">近一月</span>
                            </span>
                            <span class="choose">
                                <span class="checkboxouter">
                                    <input type="radio" name="time" data-define="define"/>
                                    <span class="radio"></span>
                                </span>
                                <span class="text">自定义</span>
                            </span>
                            <span class="define-input">
                            	<input type="text" placeholder="开始时间"/>
                                <span class="division"></span>
                                <input type="text" placeholder="结束时间"/>
                            </span>
                        </div>
                    </div>
                    <div class="kv-item ue-clear">
                        <label>选择类型:</label>
                        <div class="kv-item-content">
                            <select>
                                <option>全部</option>
                                <option>全部</option>
                                <option>全部</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="search-button">
                    <input class="button" type="button" value="搜索一下"/>
                </div>
            </div>

            <div class="table">
                <div class="opt ue-clear">
                	<span class="sortarea">
                    	<span class="sort">
                        	<label>排序：</label>
                            <span class="name">
                            	<i class="icon"></i>
                                <span class="text">名称</span>
                            </span>
                        </span>
                        
                        <i class="list"></i>
                        <i class="card"></i>
                    </span>
                    <span class="optarea">
                        <a href="addUser.jsp" class="add">
                            <i class="icon"></i>
                            <span class="text">添加</span>
                        </a>
                        <a href="javascript:batchDelete();" class="delete">
                            <i class="icon"></i>
                            <span class="text">删除</span>
                        </a>
                        
               
                    </span>
                </div>

                <div class="grid"></div>

                <div class="pagination"></div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript" src="<c:url value='/js/jquery.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/global.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.select.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/core.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.pagination.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/jquery.grid.js'/>"></script>
<script type="text/javascript" src="<c:url value='/js/WdatePicker.js'/>"></script>
<script type="text/javascript">
    $('select').select();
    var head = [{
        label: '用户编号',
        width: 130,
        sortable: 'default',
        name: 'id'
    }, {
        label: '用户名',
        width: 150,
        sortable: 'default',
        name: 'name'
    }, {
        label: '部门编号',
        width: 150
    },
        {
            label: '部门名称',
            width: 150
        }, {
            label: '联系方式',
            width: 150
        }, {
            label: '邮箱',
            minWidth: 150
        }, {
            label: '登陆时间',
            width: 200
        }, {
            label: '注册时间',
            width: 180
        }];

    var tbody = [
        <c:forEach items="${pb.beanList }" var="User">
        ["${User.userID}", "${User.userName}", "${User.depID}", "${User.depName}", "${User.conTract}", "${User.email}", "${User.loginTime}", "${User.registTime}", [{
            label: '删除', onclick: function () {
                var h = window.confirm("你确实要删除吗?");
                if (h == true)
                    window.location = "<c:url value='/UserServlet?method=delete'/>" + "&userID=${User.userID}&pc=${pb.pc}";
            }
        }, {
            label: '编辑', onclick: function () {
                window.location = "<c:url value='/UserServlet'/>?method=editUserPre" + "&userID=${User.userID}&userName=${User.userName}&userPass=${User.userPass}"
                    + "&depID=${User.depID}&depName=${User.depName}&conTract=${User.conTract}&email=${User.email}&pc=${pb.pc}";
            }
        }]],
        </c:forEach>
    ];


    $('.grid').Grid({
        thead: head,
        tbody: null,
        height: 400,
        checkbox: {
            single: true
        },
        operator: {
            type: "normal",
            width: 100
        },
        sortCallBack: function (name, index, type) {
            alert(name + "," + index + ',' + type);
        }

    });

    $('.grid').Grid('addLoading');

    $(function () {
        $('.grid').Grid('setData', tbody, head);
    });


    $('.pagination').pagination(${pb.tr}, {
        current_page: ${pb.pc}-1,
        callback: function (page) {
            page = page + 1;
            window.location = "${pb.url}" + "&pc=" + page;
        },
        display_msg: false
    });

    $('.search-box input[type=radio]').click(function (e) {
        if ($(this).prop('checked')) {
            if ($(this).attr('data-define') === 'define') {
                $('.define-input').show();
            } else {
                $('.define-input').hide();
            }
        }
    });


</script>
</html>
 