<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>365IT学院</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'/>
    <!-- Bootstrap 3.3.2 -->
    <link href="${pageContext.request.contextPath}/single/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- FontAwesome 4.3.0 -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons 2.0.0 -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="${pageContext.request.contextPath}/single/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link href="${pageContext.request.contextPath}/single/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="${pageContext.request.contextPath}/single/plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />
    <!-- Morris chart -->
    <link href="${pageContext.request.contextPath}/single/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="${pageContext.request.contextPath}/single/plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Date Picker -->
    <link href="${pageContext.request.contextPath}/single/plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
    <!-- Daterange picker -->
    <link href="${pageContext.request.contextPath}/single/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="${pageContext.request.contextPath}/single/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
</head>
<body class="skin-blue">
<div class="wrapper">

    <header class="main-header">
        <%@ include file="../singleCommon/commonHeader.jsp"%>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <%@ include file="../singleCommon/commonMenu.jsp"%>
    </aside>

    <!-- Right side column. Contains the navbar and content of the page -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                我的课程
                <small>所有课程</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 我的中心</a></li>
                <li><a href="#">所有课程</a></li>
                <li class="active">全部课程</li>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="box box-primary">
                        <div class="box-header">
                            <h3 class="box-title">我的课程</h3>
                        </div><!-- /.box-header -->
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover"  style="vertical-align: middle;text-align: center;">
                                <tr>
                                    <th style="text-align: center">课程名称</th>
                                    <th style="text-align: center">授权状态</th>
                                    <th style="text-align: center">申请日期</th>
                                    <th style="text-align: center">授权日期</th>
                                    <th style="text-align: center">授权人</th>
                                    <th style="text-align: center">操作</th>
                                </tr>
                                <c:forEach items="${myProductList}" var="myProduct">
                                    <tr>
                                        <td  style="vertical-align: middle;text-align: center;">${myProduct.product.productName}</td>
                                        <td  style="vertical-align: middle;text-align: center;">
                                            <span class="label label-success">${myProduct.authorizeStatusDic.dicCn}</span>
                                        </td>
                                        <td  style="vertical-align: middle;text-align: center;">${myProduct.aceptDate}</td>
                                        <td  style="vertical-align: middle;text-align: center;">${myProduct.authorizeDate}</td>
                                        <td  style="vertical-align: middle;text-align: center;"></td>
                                        <td  style="vertical-align: middle;text-align: center;">
                                            <a href="#"><button class="btn btn-sm btn-danger">申请授权</button></a>&nbsp;<a href="${pageContext.request.contextPath}/myProduct/forwardMyProductDetail.action?id=${myProduct.id}"><button class="btn btn-sm btn-primary">我的课程详情</button></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </div><!-- /.box-body -->
                    </div><!-- /.box -->
                </div>
            </div>
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->
    <footer class="main-footer">
        <%@ include file="../singleCommon/commonFooter.jsp"%>
    </footer>
</div><!-- ./wrapper -->

<!-- jQuery 2.1.3 -->
<script src="${pageContext.request.contextPath}/single/plugins/jQuery/jQuery-2.1.3.min.js"></script>
<!-- jQuery UI 1.11.2 -->
<script src="${pageContext.request.contextPath}/single/onlineJs/jquery-ui.min.js" type="text/javascript"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.2 JS -->
<script src="${pageContext.request.contextPath}/single/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!-- Morris.js charts -->
<script src="${pageContext.request.contextPath}/single/onlineJs/raphael-min.js"></script>
<script src="${pageContext.request.contextPath}/single/plugins/morris/morris.min.js" type="text/javascript"></script>
<!-- Sparkline -->
<script src="${pageContext.request.contextPath}/single/plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
<!-- jvectormap -->
<script src="${pageContext.request.contextPath}/single/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/single/plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
<!-- jQuery Knob Chart -->
<script src="${pageContext.request.contextPath}/single/plugins/knob/jquery.knob.js" type="text/javascript"></script>
<!-- daterangepicker -->
<script src="${pageContext.request.contextPath}/single/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>
<!-- datepicker -->
<script src="${pageContext.request.contextPath}/single/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="${pageContext.request.contextPath}/single/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
<!-- iCheck -->
<script src="${pageContext.request.contextPath}/single/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
<!-- Slimscroll -->
<script src="${pageContext.request.contextPath}/single/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<!-- FastClick -->
<script src='${pageContext.request.contextPath}/single/plugins/fastclick/fastclick.min.js'></script>
<!-- AdminLTE App -->
<script src="${pageContext.request.contextPath}/single/dist/js/app.min.js" type="text/javascript"></script>

<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="${pageContext.request.contextPath}/single/dist/js/pages/dashboard.js" type="text/javascript"></script>

<!-- AdminLTE for demo purposes -->
<script src="${pageContext.request.contextPath}/single/dist/js/demo.js" type="text/javascript"></script>

</body>
</html>