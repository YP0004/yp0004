<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>365IT学院</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/shop/css/bootstrap.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/shop/css/owl.carousel.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/shop/css/owl.theme.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/shop/css/owl.transitions.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/shop/css/style.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/shop/css/config.css" rel="stylesheet">
</head>
<body>


    <header id="header">

        <!-- ========== TOP BAR START ========== -->
        <%@include file="../common/commonHeader.jsp"%>
        <!-- / #top-bar -->

        <!-- ========== TOP BAR START ========== -->

        <!-- ========== MENU START ========== -->

        <%@include file="../common/commonMenu.jsp"%>

    </header>

<!-- ========== MENU END ========== -->

<!-- ========== CONTENT START ========== -->

<section id="content">
    <div class="container">

        <ol class="breadcrumb">
            <li><a href="#">主页</a></li>
            <li>账号注册</li>
        </ol>

        <h1 class="page-title">我的账号注册</h1>
        <div class="gap-10"></div>

        <div class="row">
            <div class="col-sm-6">

                <h3>登陆</h3>
                <div class="gap-20"></div>
                <form role="form" action="${pageContext.request.contextPath}/system/regist.action">
                    <div class="form-group">
                        <input type="text" class="form-control input-lg" id="exampleInputEmail" name="userId" placeholder="请输入您的账号"/>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control input-lg" id="exampleInputPassword" name="password" placeholder="请输入您的密码"/>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control input-lg" id="exampleInputPassword" name="rePassword" placeholder="请重复您的密码"/>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control input-lg" id="exampleInputPassword" name="email" placeholder="请输入您的邮箱"/>
                    </div>
                    <div class="pull-right">
                        <button type="submit" class="btn btn-primary btn-lg">注册</button>
                    </div>
                </form>
                <div class="gap-30"></div>

            </div>
            <div class="col-sm-6">

                <h3>Create A Wish List</h3>
                <div class="gap-15"></div>
                <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris morbi accumsan ipsum velit.</p>

                <p>
                    <span class="text-primary">Step 1:</span> Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit.<br>
                    <span class="text-primary">Step 2:</span> Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor a ornare odio ed non  mauris vitae erat.<br>
                    <span class="text-primary">Step 3:</span> Erat consequat auctor euin!
                </p>

                <a href="${pageContext.request.contextPath}/system/forwardLogin.action" class="btn btn-primary btn-lg">立即登陆</a>

            </div>
        </div>


    </div>
</section>

<!-- ========== CONTENT END ========== -->

<!-- ========== FOOTER START ========== -->

<footer id="footer">

    <%@ include file="../common/commonFooter.jsp"%>

</footer>

<!-- ========== FOOTER END ========== -->

    <%@ include file="../common/commonCar.jsp"%>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/shop/js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/shop/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/shop/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/shop/js/jquery.jpanelmenu.min.js"></script>
<script src="${pageContext.request.contextPath}/shop/js/main.js"></script>

</body>
</html>