<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>365IT学院</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'/>
    <!-- Bootstrap 3.3.2 -->
    <link href="${pageContext.request.contextPath}/single/bootstrap/css/bootstrap.min.css" rel="stylesheet"
          type="text/css"/>
    <!-- FontAwesome 4.3.0 -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"
          type="text/css"/>
    <!-- Ionicons 2.0.0 -->
    <link href="http://code.ionicframework.com/ionicons/2.0.0/css/ionicons.min.css" rel="stylesheet" type="text/css"/>
    <!-- Theme style -->
    <link href="${pageContext.request.contextPath}/single/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css"/>
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link href="${pageContext.request.contextPath}/single/dist/css/skins/_all-skins.min.css" rel="stylesheet"
          type="text/css"/>
    <!-- iCheck -->
    <link href="${pageContext.request.contextPath}/single/plugins/iCheck/flat/blue.css" rel="stylesheet"
          type="text/css"/>
    <!-- Morris chart -->
    <link href="${pageContext.request.contextPath}/single/plugins/morris/morris.css" rel="stylesheet" type="text/css"/>
    <!-- jvectormap -->
    <link href="${pageContext.request.contextPath}/single/plugins/jvectormap/jquery-jvectormap-1.2.2.css"
          rel="stylesheet" type="text/css"/>
    <!-- Date Picker -->
    <link href="${pageContext.request.contextPath}/single/plugins/datepicker/datepicker3.css" rel="stylesheet"
          type="text/css"/>
    <!-- Daterange picker -->
    <link href="${pageContext.request.contextPath}/single/plugins/daterangepicker/daterangepicker-bs3.css"
          rel="stylesheet" type="text/css"/>
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="${pageContext.request.contextPath}/single/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"
          rel="stylesheet" type="text/css"/>
</head>
<body class="skin-blue">
<div class="wrapper">

    <header class="main-header">
        <%@ include file="../singleCommon/commonHeader.jsp" %>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <%@ include file="../singleCommon/commonMenu.jsp" %>
        <!-- /.sidebar -->
    </aside>

    <!-- Right side column. Contains the navbar and content of the page -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                个人中心
                <small>首页</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="#"><i class="fa fa-dashboard"></i> 个人中心</a></li>
                <li class="active">首页</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <!-- Small boxes (Stat box) -->
            <div class="row">
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-aqua">
                        <div class="inner">
                            <h3>${myUnPayOrderList.size()}</h3>

                            <p>未支付账单</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                        <a href="${pageContext.request.contextPath}/myCenter/forwardMyUnPayOrderList.action" class="small-box-footer">更多订单信息 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-green">
                        <div class="inner">
                            <h3>${myProductList.size()}</h3>

                            <p>我的课程</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="#" class="small-box-footer">更多课程信息<i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-yellow">
                        <div class="inner">
                            <h3>3</h3>

                            <p>我的消息</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person-add"></i>
                        </div>
                        <a href="#" class="small-box-footer">更多消息信息 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
                <div class="col-lg-3 col-xs-6">
                    <!-- small box -->
                    <div class="small-box bg-red">
                        <div class="inner">
                            <h3>8</h3>

                            <p>访问我的</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-pie-graph"></i>
                        </div>
                        <a href="#" class="small-box-footer">更多访问信息 <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
                <!-- ./col -->
            </div>
            <!-- /.row -->

            <div class="row">
                <div class="col-md-8">
                    <!-- TABLE: LATEST ORDERS -->
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">未支付订单</h3>

                            <div class="box-tools pull-right">
                                <!-- <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                 <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>-->
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="table-responsive">
                                <table class="table no-margin">
                                    <thead>
                                    <tr>
                                        <th style="text-align: center;vertical-align: middle;">订单编号</th>
                                        <th style="text-align: center;vertical-align: middle;">订单价格</th>
                                        <th style="text-align: center;vertical-align: middle;">订单状态</th>
                                        <th style="text-align: center;vertical-align: middle;">下单时间</th>
                                        <th style="text-align: center;vertical-align: middle;">操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${myUnPayOrderList}" var="myUnPayOrder">
                                        <tr>
                                            <td style="text-align: center;vertical-align: middle;"><a href="${pageContext.request.contextPath}/myCenter/forwardMyOrderDetail.action?id=${myUnPayOrder.id}">${myUnPayOrder.orderId}</a></td>
                                            <td style="text-align: center;vertical-align: middle;">￥${myUnPayOrder.orderPrice}</td>
                                            <td style="text-align: center;vertical-align: middle;"><span class="label label-success">${myUnPayOrder.orderStatusDic.dicCn}</span>
                                            </td>
                                            <td style="text-align: center;vertical-align: middle;">
                                                <div class="sparkbar" data-color="#00a65a"
                                                     data-height="20">${myUnPayOrder.orderCreateTime}</div>
                                            </td>
                                            <td style="text-align: center;vertical-align: middle;">
                                                <a href="${pageContext.request.contextPath}/alipay/forwardPay.action?orderId=${myUnPayOrder.orderId}">
                                                    <button type="button" class="btn btn-info btn-sm">立即支付</button>
                                                </a></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer clearfix">
                            <!--    <a href="javascript::;" class="btn btn-sm btn-info btn-flat pull-left">Place New Order</a>-->
                            <a href="${pageContext.request.contextPath}/myCenter/forwardMyUnPayOrderList.action" class="btn btn-sm btn-default btn-flat pull-right">查看更多订单信息</a>
                        </div>
                        <!-- /.box-footer -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
                <div class="col-md-4">
                    <!-- PRODUCT LIST -->
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <h3 class="box-title">我的课程</h3>

                            <div class="box-tools pull-right">
                                <!--  <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                  <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>  -->
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <ul class="products-list product-list-in-box">


                                <c:forEach items="${myProductList}" var="myProduct">

                                    <li class="item">
                                        <div class="product-img">
                                            <img src="${pageContext.request.contextPath}/product/takeProductHeadImg.action?id=${myProduct.product.id}"
                                                 style="width: 50px;height: 50px;"/>
                                        </div>
                                        <div class="product-info">
                                            <a href="#" class="product-title">${myProduct.product.productName}<span
                                                    class="label label-warning pull-right">${myProduct.authorizeStatusDic.dicCn}</span></a>
                        <span class="product-description">
                          播放码：${myProduct.playerCode}
                        </span>
                                        </div>
                                    </li>
                                    <!-- /.item -->

                                </c:forEach>
                            </ul>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer text-center">
                            <a href="${pageContext.request.contextPath}/myProduct/forwardMyProductList.action" class="uppercase">查看所有课程</a>
                        </div>
                        <!-- /.box-footer -->
                    </div>
                    <!-- /.box -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->

            <!-- Main row -->
            <div class="row">
                <!-- Left col -->
                <section class="col-lg-7 connectedSortable">

                    <!-- Chat box -->
                    <div class="box box-success">
                        <div class="box-header">
                            <i class="fa fa-comments-o"></i>

                            <h3 class="box-title">未读信息</h3>
                        </div>
                        <div class="box-body chat" id="chat-box">
                            <!-- chat item -->
                            <div class="item">
                                <img src="${pageContext.request.contextPath}/single/dist/img/user4-128x128.jpg" alt="user image" class="online"/>

                                <p class="message">
                                    <a href="#" class="name">
                                        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 2:15</small>
                                        阿拉蕾
                                    </a>
                                    你好，我想和你讨论一下Hadoop的一下问题，有一些问题不是特别清楚，希望能够从你的学习经验中得到一些帮助。
                                </p>
                            </div>
                            <!-- /.item -->
                            <!-- chat item -->
                            <div class="item">
                                <img src="${pageContext.request.contextPath}/single/dist/img/user3-128x128.jpg" alt="user image" class="offline"/>

                                <p class="message">
                                    <a href="#" class="name">
                                        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 5:15</small>
                                        奥特曼
                                    </a>
                                    一些java问题的请教，我对你写的小程序中的部分代码不清楚想和你讨论一下。请您尽快回复。
                                </p>
                            </div>
                            <!-- /.item -->
                            <!-- chat item -->
                            <div class="item">
                                <img src="${pageContext.request.contextPath}/single/dist/img/user2-160x160.jpg" alt="user image" class="offline"/>

                                <p class="message">
                                    <a href="#" class="name">
                                        <small class="text-muted pull-right"><i class="fa fa-clock-o"></i> 5:30</small>
                                        蜡笔小新
                                    </a>
                                    一些java问题的请教，我对你写的小程序中的部分代码不清楚想和你讨论一下。请您尽快回复。
                                </p>
                            </div>
                            <!-- /.item -->
                        </div>
                        <!-- /.chat -->

                        <div class="box-footer text-right">
                            <a href="javascript::;" class="uppercase">查看所有课程信息</a>
                        </div>


                </section>
                <!-- /.Left col -->
                <!-- right col (We are only adding the ID to make the widgets sortable)-->
                <section class="col-lg-5 connectedSortable">


                    <!-- USERS LIST -->
                    <div class="box box-danger">
                        <div class="box-header with-border">
                            <h3 class="box-title">最近访问</h3>

                            <div class="box-tools pull-right">
                                <span class="label label-danger">今日访问量：8</span>
                                <!--   <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                   <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button> -->
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body no-padding">
                            <ul class="users-list clearfix">
                                <li>
                                    <img src="${pageContext.request.contextPath}/single/dist/img/user1-128x128.jpg"
                                         alt="User Image"/>
                                    <a class="users-list-name" href="#">阿拉蕾</a>
                                    <span class="users-list-date">今天</span>
                                </li>
                                <li>
                                    <img src="${pageContext.request.contextPath}/single/dist/img/user8-128x128.jpg"
                                         alt="User Image"/>
                                    <a class="users-list-name" href="#">奥特曼</a>
                                    <span class="users-list-date">今天</span>
                                </li>
                                <li>
                                    <img src="${pageContext.request.contextPath}/single/dist/img/user7-128x128.jpg"
                                         alt="User Image"/>
                                    <a class="users-list-name" href="#">蜡笔小新</a>
                                    <span class="users-list-date">今天</span>
                                </li>
                                <li>
                                    <img src="${pageContext.request.contextPath}/single/dist/img/user6-128x128.jpg"
                                         alt="User Image"/>
                                    <a class="users-list-name" href="#">芭比娃娃</a>
                                    <span class="users-list-date">今天</span>
                                </li>
                                <li>
                                    <img src="${pageContext.request.contextPath}/single/dist/img/user2-160x160.jpg"
                                         alt="User Image"/>
                                    <a class="users-list-name" href="#">美人鱼</a>
                                    <span class="users-list-date">昨天</span>
                                </li>
                                <li>
                                    <img src="${pageContext.request.contextPath}/single/dist/img/user5-128x128.jpg"
                                         alt="User Image"/>
                                    <a class="users-list-name" href="#">喜洋洋</a>
                                    <span class="users-list-date">昨天</span>
                                </li>
                                <li>
                                    <img src="${pageContext.request.contextPath}/single/dist/img/user4-128x128.jpg"
                                         alt="User Image"/>
                                    <a class="users-list-name" href="#">美羊羊</a>
                                    <span class="users-list-date">1.1</span>
                                </li>
                                <li>
                                    <img src="${pageContext.request.contextPath}/single/dist/img/user3-128x128.jpg"
                                         alt="User Image"/>
                                    <a class="users-list-name" href="#">懒洋洋</a>
                                    <span class="users-list-date">1.2</span>
                                </li>
                            </ul>
                            <!-- /.users-list -->
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer text-center">
                            <!--  <a href="javascript::" class="uppercase">查看所有订单 </a>-->
                        </div>
                        <!-- /.box-footer -->
                    </div>
                    <!--/.box -->


                </section>
                <!-- right col -->
            </div>
            <!-- /.row (main row) -->


        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
    <footer class="main-footer">
        <%@ include file="../singleCommon/commonFooter.jsp" %>
    </footer>
</div>
<!-- ./wrapper -->

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
<script src="${pageContext.request.contextPath}/single/plugins/sparkline/jquery.sparkline.min.js"
        type="text/javascript"></script>
<!-- jvectormap -->
<script src="${pageContext.request.contextPath}/single/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"
        type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/single/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"
        type="text/javascript"></script>
<!-- jQuery Knob Chart -->
<script src="${pageContext.request.contextPath}/single/plugins/knob/jquery.knob.js" type="text/javascript"></script>
<!-- daterangepicker -->
<script src="${pageContext.request.contextPath}/single/plugins/daterangepicker/daterangepicker.js"
        type="text/javascript"></script>
<!-- datepicker -->
<script src="${pageContext.request.contextPath}/single/plugins/datepicker/bootstrap-datepicker.js"
        type="text/javascript"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="${pageContext.request.contextPath}/single/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"
        type="text/javascript"></script>
<!-- iCheck -->
<script src="${pageContext.request.contextPath}/single/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
<!-- Slimscroll -->
<script src="${pageContext.request.contextPath}/single/plugins/slimScroll/jquery.slimscroll.min.js"
        type="text/javascript"></script>
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