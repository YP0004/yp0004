<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Garbini</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/shop/css/bootstrap.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/shop/css/owl.carousel.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/shop/css/owl.theme.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/shop/css/owl.transitions.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/shop/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/shop/css/config.css" rel="stylesheet">
</head>
<body>



    <div id="top-bar">
        <div class="container">

            <nav id="language-selector">
                <ul class="nav nav-pills">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">中文站</a>
                    </li>
                </ul>
            </nav>

            <nav id="shopping-cart">
                <a href="#">
                    <i class="fa fa-shopping-cart fa-lg"></i> 购物车
          <span class="fa-stack">
            <i class="fa fa-circle fa-stack-2x"></i>
            <i class="fa fa-stack-1x fa-inverse">

                <c:choose>

                    <c:when test="${sessionScope.get('shopCar') == null}">
                        0
                    </c:when>
                    <c:when test="${sessionScope.get('shopCar') != null}">
                        ${sessionScope.get('shopCar').shopCarItems.size()}
                    </c:when>
                </c:choose>
            </i>
          </span>
                </a>
            </nav>

            <nav id="top-nav" role="navigation" class="navbar">
                <div class="navbar-header">
                    <button data-target=".top-nav" data-toggle="collapse" class="navbar-toggle" type="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse top-nav">
                    <ul class="nav navbar-nav">
                        <li><a href="${pageContext.request.contextPath}/product/forwardProductList.action">课程</a></li>
                        <li><a href="${pageContext.request.contextPath}/system/forwardLogin.action">登录 / 注册</a></li>
                    </ul>
                </div><!-- /.navbar-collapse -->
            </nav>

        </div>
    </div>
</body>
</html>