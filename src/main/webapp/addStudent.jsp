<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: zhangjun
  Date: 2018/4/18
  Time: 18:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Student Management System</title>
    <meta name="description" content="这是一个 add 页面">
    <meta name="keywords" content="index">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="renderer" content="webkit">
    <%--<meta http-equiv="Cache-Control" content="no-siteapp" />--%>
    <link rel="icon" type="image/png" href="assets/picture/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/picture/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="Amaze UI" />
    <link rel="stylesheet" href="assets/css/amazeui.min.css"/>
    <link rel="stylesheet" href="assets/css/admin.css">
</head>
<body>
    <header class="am-topbar admin-header">
        <div class="am-topbar-brand">
            <strong>学生管理系统</strong> <small>添加</small>
        </div>
    </header>
    <div class="am-cf admin-main">
        <!-- sidebar start -->
        <div class="admin-sidebar">
            <ul class="am-list admin-sidebar-list">
                <li><a href="/redisStudentMgt-1.0.0/">主页</a> </li>
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
                    <form class="am-form am-form-horizontal" action="${pageContext.request.contextPath}/Service" method="post">
                        <div class="am-form-group">
                            <label class="am-u-sm-3 am-form-label">学生ID / Student ID</label>
                            <div class="am-u-sm-9">
                                <input type="text"
                                       name="id" value="${requestScope.student.id}" placeholder="你的ID" autofocus required/>
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label class="am-u-sm-3 am-form-label">姓名 / Name</label>
                            <div class="am-u-sm-9">
                                <input type="text" name="name" value="${requestScope.student.name}"
                                       placeholder="你的姓名"/>
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label class="am-u-sm-3 am-form-label">生日 / Birthday</label>
                            <div class="am-u-sm-9">
                                <input type="date" name="birthday" value="${requestScope.student.birthday}"
                                       placeholder="你的生日" />
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label class="am-u-sm-3 am-form-label">描述 / Description</label>
                            <div class="am-u-sm-9">
                                <input type="text"
                                       name="description" value="${requestScope.student.description}"
                                       placeholder="描述"/>
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label class="am-u-sm-3 am-form-label">平均分 / Avgscore</label>
                            <div class="am-u-sm-9">
                                <input type="text"
                                       name="avgscore" value="${requestScope.student.avgscore}" placeholder="你的平均分"/>
                            </div>
                        </div>
                        <c:if test="${null==requestScope.student|| empty requestScope.student}">
                            <div class="am-form-group">
                                <div class="am-u-sm-9 am-u-sm-push-3">
                                    <input type="reset" value="重设" class="am-btn am-btn-primary"/>
                                    <input type="submit" value="添加" class="am-btn am-btn-primary"/>
                                    <input type="hidden" name="function" value="addNewStudent" />
                                </div>
                            </div>
                        </c:if>
                        <c:if test="${not empty requestScope.student}">
                            <div class="am-form-group">
                                <div class="am-u-sm-9 am-u-sm-push-3">
                                    <input type="submit" value="确认修改" class="am-btn am-btn-primary"/>
                                    <input type="hidden" name="function" value="updateStudent" />
                                </div>
                            </div>
                        </c:if>
                        <c:if test="${not empty requestScope.feedback}">
                            <div class="feedback" style="text-align: center" >
                                输入错误
                            </div>
                        </c:if>
                    </form>
                </div>

            </div>
        </div>
    </div>
</body>
</html>
