<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<section class="sidebar">
    <!-- Sidebar user panel -->
    <div class="user-panel">
        <div class="pull-left image">
            <img src="${pageContext.request.contextPath}/single/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
        </div>
        <div class="pull-left info">
            <p>${sessionScope.get('user').userId}</p>

            <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
        </div>
    </div>
    <ul class="sidebar-menu">
        <!--   <li class="header">MAIN NAVIGATION</li> -->
        <li class="treeview">
            <a href="#">
                <i class="fa fa-dashboard"></i> <span>我的订单</span> <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
                <li id="allOrder"><a href="${pageContext.request.contextPath}/myCenter/forwardMyAllOrderList.action"><i class="fa fa-circle-o"></i> 所有订单</a></li>
                <li id="unPayOrder"><a href="${pageContext.request.contextPath}/myCenter/forwardMyUnPayOrderList.action"><i class="fa fa-circle-o"></i> 待付款订单</a></li>
            </ul>
        </li>
        <li class="treeview">
            <a href="#">
                <i class="fa fa-files-o"></i>
                <span>我的课程</span>
                <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
                <li id="allProduct"><a href="${pageContext.request.contextPath}/myProduct/forwardMyProductList.action"><i class="fa fa-circle-o"></i>所有课程</a></li>
                <li id="unAuthProduct"><a href="${pageContext.request.contextPath}/myProduct/forwardMyUnAuthProductList.action"><i class="fa fa-circle-o"></i>待授权课程</a></li>
            </ul>
        </li>
<%--        <li>
            <a href="${pageContext.request.contextPath}/myCenter/forwardMyCenterIndex.action">
                <i class="fa fa-th"></i> <span>访问记录</span> <small class="label pull-right bg-green">new</small>
            </a>
        </li>--%>

        <li class="treeview">
            <a href="#">
                <i class="fa fa-laptop"></i>
                <span>我的消息</span>
                <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
                <%--<li><a href="#"><i class="fa fa-circle-o"></i>未读消息</a></li>--%>
                <li id="myMessage"><a href="${pageContext.request.contextPath}/myCenter/forwardMyMessage.action"><i class="fa fa-circle-o"></i> 所有消息</a></li>

            </ul>
        </li>
        <li class="treeview">
            <a href="#">
                <i class="fa fa-edit"></i> <span>个人信息设置</span>
                <i class="fa fa-angle-left pull-right"></i>
            </a>
            <ul class="treeview-menu">
                <li id="myInfo"><a href="${pageContext.request.contextPath}/myCenter/forwardMyInfo.action"><i class="fa fa-circle-o"></i> 基本信息</a></li>
<%--                <li><a href="#"><i class="fa fa-circle-o"></i> 密码修改</a></li>
                <li><a href="#"><i class="fa fa-circle-o"></i> 头像上传</a></li>--%>
            </ul>
        </li>
    </ul>
</section>
</body>
</html>