<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<!-- Logo -->
<a href="#" class="logo"><b>${sessionScope.get('user').userId}</b>个人中心</a>
<!-- Header Navbar: style can be found in header.less -->
<nav class="navbar navbar-static-top" role="navigation">
    <!-- Sidebar toggle button-->
    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
    </a>
    <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
            <!-- Messages: style can be found in dropdown.less-->
            <li class="dropdown messages-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-envelope-o"></i>
                    <span class="label label-success">0</span>
                    <ul class="dropdown-menu">
                        <li class="header">当前没有任何消息</li>
                    </ul>
                </a>
            </li>
            <!-- Notifications: style can be found in dropdown.less -->
            <li class="dropdown notifications-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-bell-o"></i>
                    <span class="label label-warning">0</span>
                </a>
                <ul class="dropdown-menu">
                    <li class="header">当前没有任何通知</li>
                </ul>
            </li>
            <!-- Tasks: style can be found in dropdown.less -->
            <li class="dropdown tasks-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <i class="fa fa-flag-o"></i>
                    <span class="label label-danger">0</span>
                </a>
                <ul class="dropdown-menu">
                    <li class="header">当前有0个任务</li>
                </ul>
            </li>
            <!-- User Account: style can be found in dropdown.less -->
            <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <img src="${pageContext.request.contextPath}/single/dist/img/user2-160x160.jpg" class="user-image" alt="User Image"/>
                    <span class="hidden-xs">${sessionScope.get('user').userId}</span>
                </a>
                <ul class="dropdown-menu">
                    <!-- User image -->
                    <li class="user-header">
                        <img src="${pageContext.request.contextPath}/single/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
                        <p>
                            ${sessionScope.get("user").userId}
                            <small>${sessionScope.get("user").birthday}</small>
                        </p>
                    </li>
                    <!-- Menu Body -->
                    <li class="user-body">
                        <div class="col-xs-4 text-center">
                            <a href="${pageContext.request.contextPath}/product/forwardProductList.action">选购课程</a>
                        </div>
                        <div class="col-xs-4 text-center">
                            <a href="${pageContext.request.contextPath}/myProduct/forwardMyProductList.action">我的课程</a>
                        </div>
                        <div class="col-xs-4 text-center">
                            <a href="${pageContext.request.contextPath}/myCenter/forwardMyAllOrderList.action">我的订单</a>
                        </div>
                    </li>
                    <!-- Menu Footer-->
                    <li class="user-footer">
                        <div class="pull-left">
                            <a href="#" class="btn btn-default btn-flat">个人信息</a>
                        </div>
                        <div class="pull-right">
                            <a href="${pageContext.request.contextPath}/system/logout.action" class="btn btn-default btn-flat">退出</a>
                        </div>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</nav>
</body>
</html>