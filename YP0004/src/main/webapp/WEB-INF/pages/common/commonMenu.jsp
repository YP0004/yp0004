<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
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



<nav id="main-nav">
    <div class="navbar">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".main-nav">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/system/forwardIndex.action"><img src="${pageContext.request.contextPath}/shop/img/logo.jpg" widget="131px" height="110px" style="max-width: 131px;max-height: 110px;" alt="365IT学院" class="img-responsive"></a>
            </div>
            <div class="navbar-collapse collapse main-nav">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="${pageContext.request.contextPath}/system/forwardIndex.action">主页</a>
                    </li>
                    <li class="dropdown">
                        <a href="${pageContext.request.contextPath}/product/forwardProductList.action">查看课程</a>
                    </li>
                    <li class="dropdown">
                        <a href="${pageContext.request.contextPath}/product/forwardProductList.action">最新课程</a>
                    </li>
                    <li class="dropdown">
                        <a href="category.html" class="dropdown-toggle" data-toggle="dropdown">课程分类 <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/product/forwardProductList.action">云计算系列</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/forwardProductList.action">架构师系列</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/forwardProductList.action">Web前端</a></li>
                            <li><a href="${pageContext.request.contextPath}/product/forwardProductList.action">企业级开发系列</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="${pageContext.request.contextPath}/product/forwardProductList.action" class="dropdown-toggle" data-toggle="dropdown">最热课程</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>
</body>
</html>