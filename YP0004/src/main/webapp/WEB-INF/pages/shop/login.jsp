<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>365IT学院</title> <!-- Bootstrap -->
		<link
			href="${pageContext.request.contextPath}/shop/css/bootstrap.min.css"
			rel="stylesheet">

			<link
				href="${pageContext.request.contextPath}/shop/css/owl.carousel.css"
				rel="stylesheet">
				<link
					href="${pageContext.request.contextPath}/shop/css/owl.theme.css"
					rel="stylesheet">
					<link
						href="${pageContext.request.contextPath}/shop/css/owl.transitions.css"
						rel="stylesheet">

						<link href="${pageContext.request.contextPath}/shop/css/style.css"
							rel="stylesheet">
							<link
								href="${pageContext.request.contextPath}/shop/css/config.css"
								rel="stylesheet">
</head>
<body>


	<header id="header"> <!-- ========== TOP BAR START ========== -->
	<%@include file="../common/commonHeader.jsp"%>
	<!-- / #top-bar --> <!-- ========== TOP BAR START ========== --> <!-- ========== MENU START ========== -->

	<%@include file="../common/commonMenu.jsp"%> </header>

	<!-- ========== MENU END ========== -->

	<!-- ========== CONTENT START ========== -->

	<section id="content">
	<div class="container">

		<ol class="breadcrumb">
			<li><a href="#">主页</a></li>
			<li>账号登陆</li>
		</ol>

		<h1 class="page-title">我的账号登陆</h1>
		<div class="gap-10"></div>

		<div class="row">
			<div class="col-sm-6">

				<h3>登陆</h3>
				<div class="gap-20"></div>
				<form id="loginForm" role="form" method="post"
					action="${pageContext.request.contextPath}/system/login.action">
					<div class="form-group">
						<input type="text" class="form-control input-lg"
							id="exampleInputEmail" name="userId" placeholder="请输入用户名" />
					</div>
					<div class="form-group">

						<input type="password" class="form-control input-lg"
							id="exampleInputPassword" name="password" placeholder="请输入密码"/>
					</div>
					<div class="checkbox pull-left">
						<label> <input type="checkbox"> 记住我 </label>
					</div>
					<a href="#" class="pull-left" id="forgot-password">忘记密码?</a>
					<div class="pull-right">
						<button type="submit" class="btn btn-primary btn-lg">登陆</button>
					</div>
				</form>
				<div class="gap-30"></div>

			</div>
			<div class="col-sm-6">

				<h3>365IT学院</h3>
				<div class="gap-15"></div>
				<p>365IT学院,高端架构师培训</p>

				<p>
					<span class="text-primary">步骤 1:</span> 点击注册按钮,注册本学院账号和密码<br>
						<span class="text-primary">步骤 2:</span> 登录后,将您喜欢的课程加入购物车然后购买<br>
							<span class="text-primary">步骤 3:</span> 提交您的机器码申请授权,从此走上架构师之路 
				</p>

				<a
					href="${pageContext.request.contextPath}/system/forwardRegist.action"
					class="btn btn-primary btn-lg">立即注册</a>

			</div>
		</div>


	</div>
	</section>

	<!-- ========== CONTENT END ========== -->

	<!-- ========== FOOTER START ========== -->

	<footer id="footer"> <%@ include
		file="../common/commonFooter.jsp"%> </footer>

	<!-- ========== FOOTER END ========== -->

	<%@ include file="../common/commonCar.jsp"%>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="${pageContext.request.contextPath}/shop/js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script
		src="${pageContext.request.contextPath}/shop/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/shop/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/shop/js/jquery.jpanelmenu.min.js"></script>
	<script src="${pageContext.request.contextPath}/shop/js/main.js"></script>
	<script>

        $(document).ready(
                function(){
                    $('#exampleInputEmail').popover({
                        content:"请输入用户名",
                        placement:'top',
                        trigger:'hover'
                    });

                    $('#exampleInputPassword').popover({
                        content: "请输入密码",
                        placement:'top',
                        trigger: 'hover'
                    });
                });


/*        $.post('url',{},function(){

        },'text');*/

	</script>

</body>
</html>