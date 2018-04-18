<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhangjun
  Date: 2018/4/18
  Time: 14:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Student Management System</title>
    <meta name="description" content="这是一个 index 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="renderer" content="webkit">
    <%--<meta http-equiv="Cache-Control" content="no-siteapp" />--%>
    <link rel="icon" type="image/png" href="assets/picture/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/picture/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="assets/css/admin.css">
    <style type="text/css">
        .page {
            clear: left;
            width: 100%;
            height: 100%;
        }

        .displayPage {
            float: left;
            width: 80%;
        }

        .jumpPage {
            float: left;
        }
        .notFind {
            font-size: 20px;
            text-align: center;
            color: #FF0000;
        }
    </style>
</head>
<body>
    <header class="am-topbar admin-header">
        <div class="am-topbar-brand">
            <strong>学生管理系统</strong> <small>主页</small>
        </div>
    </header>
    <div class="am-cf admin-main">
        <!-- sidebar start -->
        <div class="admin-sidebar">
            <ul class="am-list admin-sidebar-list">
                <li><a href="addStudent_1.jsp">添加</a> </li>
            </ul>
        </div>
        <!-- sidebar end -->

        <!-- content start -->
        <div class="admin-content">
            <div class="am-cf am-padding">
                <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">学生管理</strong></div>
            </div>
            <hr>
            <div class="am-g">
                <div class="am-u-sm-12">
                    <form class="am-form">
                            <table class="am-table am-table-striped am-table-hover table-main">
                                <c:if test="${not empty requestScope.students}">
                                <thead>
                                <tr>
                                    <th class="table-id">Id</th>
                                    <th class="table-title">姓名</th>
                                    <th class="table-date">出生日期</th>
                                    <th class="table-author">备注</th>
                                    <th class="table-type">平均分</th>
                                    <th class="table-set">选项</th>
                                </tr>
                                </thead>
                                    <c:forEach items="${requestScope.students}" var="student">
                                        <tbody>
                                        <tr>
                                            <td>${student.id }</td>
                                            <td>${student.name }</td>
                                            <td>${student.birthday }</td>
                                            <td>${student.description }</td>
                                            <td>${student.avgscore }</td>
                                            <td><a href="${pageContext.request.contextPath}
                                            /Service?function=guideUpdateStudent&id=${student.id }">修改</a>
                                                |<a href="${pageContext.request.contextPath}
                                                /Service?function=deleteStudent&id=${student.id }">删除</a> </td>
                                        </tr>
                                        </tbody>
                                    </c:forEach>
                                </c:if>
                            </table>
                            <div class="page">
                                <div class="displayPage">当前页 :${requestScope.page},
                                    总页数 :${requestScope.pageCount}</div>
                                <div class="jumpPage">
                                    跳转到:
                                    <c:forEach var="i" begin="1" end="${requestScope.pageCount}">
                                        <a href="InitServlet?page=${i}">${i}</a>
                                    </c:forEach>
                                </div>
                            </div>
                        <%--</c:if>--%>
                        <c:if test="${empty requestScope.students}">
                            <div class="notFind">
                                没有找到数据，<a href="addStudent_1.jsp">点击</a>添加
                            </div>
                        </c:if>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
