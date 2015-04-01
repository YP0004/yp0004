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
                <li>购物车</li>
            </ol>

            <h1 class="page-title">购物车</h1>

            <table class="shop_table cart table-striped">
                <thead>
                <tr>
                    <th class="product-remove">删除</th>
                    <th class="product-desc">产品描述</th>
                    <th class="product-size visible-md visible-lg">折扣</th>
                    <th class="product-color visible-md visible-lg">课程难度</th>
                    <th class="product-qty">数量</th>
                    <th class="product-price">价格</th>
                </tr>
                </thead>
                <tbody>
                <tr class="cart_item">
                    <td class="product-remove"><a href="#" class="remove"><i class="fa fa-times-circle fa-2x"></i></a></td>
                    <td class="product-desc">
                        <dl>
                            <dt class="hidden-xs"><img src="http://placehold.it/150x140" alt=""></dt>
                            <dd>
                                <h3>Dingolfi Shirts</h3>
                                <p class="hidden-xs">Nam nec tellus a odio tincidunt auctor a odio. Sed non  mais vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per.</p>
                            </dd>
                        </dl>
                    </td>
                    <td class="product-size visible-md visible-lg">
                        <h3>无</h3>
                    </td>
                    <td class="product-color visible-md visible-lg">
                        <h3>中级</h3>
                    </td>
                    <td class="product-qty">
                        <div class="quantity buttons_added">
                            <button class="minus"><i class="fa fa-minus"></i></button>
                            <input type="number" size="4" class="qty text form-control" title="Qty" value="1" name="qty" step="1">
                            <button class="plus"><i class="fa fa-plus"></i></button>
                        </div>
                    </td>
                    <td class="product-price">
                        <h3>$15.00</h3>
                    </td>
                </tr>
                <tr class="cart_item">
                    <td class="product-remove"><a href="#" class="remove"><i class="fa fa-times-circle fa-2x"></i></a></td>
                    <td class="product-desc">
                        <dl>
                            <dt class="hidden-xs"><img src="http://placehold.it/150x140" alt=""></dt>
                            <dd>
                                <h3>Dingolfi Shirts</h3>
                                <p class="hidden-xs">Nam nec tellus a odio tincidunt auctor a odio. Sed non  mais vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per.</p>
                            </dd>
                        </dl>
                    </td>
                    <td class="product-size visible-md visible-lg">
                        <h3>无</h3>
                    </td>
                    <td class="product-color visible-md visible-lg">
                        <h3>中级</h3>
                    </td>
                    <td class="product-qty">
                        <div class="quantity buttons_added">
                            <button class="minus"><i class="fa fa-minus"></i></button>
                            <input type="number" size="4" class="qty text form-control" title="Qty" value="1" name="qty" step="1">
                            <button class="plus"><i class="fa fa-plus"></i></button>
                        </div>
                    </td>
                    <td class="product-price">
                        <h3>$15.00</h3>
                    </td>
                </tr>
                <tr class="cart_item">
                    <td class="product-remove"><a href="#" class="remove"><i class="fa fa-times-circle fa-2x"></i></a></td>
                    <td class="product-desc">
                        <dl>
                            <dt class="hidden-xs"><img src="http://placehold.it/150x140" alt=""></dt>
                            <dd>
                                <h3>Dingolfi Shirts</h3>
                                <p class="hidden-xs">Nam nec tellus a odio tincidunt auctor a odio. Sed non  mais vitae erat consequat auctor eu in elit. Class aptent taciti sociosqu ad litora torquent per.</p>
                            </dd>
                        </dl>
                    </td>
                    <td class="product-size visible-md visible-lg">
                        <h3>无</h3>
                    </td>
                    <td class="product-color visible-md visible-lg">
                        <h3>中级</h3>
                    </td>
                    <td class="product-qty">
                        <div class="quantity buttons_added">
                            <button class="minus"><i class="fa fa-minus"></i></button>
                            <input type="number" size="4" class="qty text form-control" title="Qty" value="1" name="qty" step="1">
                            <button class="plus"><i class="fa fa-plus"></i></button>
                        </div>
                    </td>
                    <td class="product-price">
                        <h3>$15.00</h3>
                    </td>
                </tr>
                <tr>
                    <td class="actions" colspan="6">
                        <div class="coupon">
                            <h3>是否需要其他课程?</h3>
                            <input type="text" placeholder="搜索课程" value="" class="form-control input-lg" name="coupon_code">
                            <button name="apply_coupon" class="btn btn-primary btn-lg"><i class="fa fa-refresh"></i></button>
                        </div>
                        <input type="submit" value="更新购物车" name="update_cart" class="btn btn-default btn-lg">
                        <input type="submit" value="立即结算" name="proceed" class="btn btn-primary btn-lg">
                    </td>
                </tr>
                </tbody>
            </table>

            <div class="cart-collaterals">
                <table class="totals">
                    <tbody>
                    <tr class="cart-subtotal">
                        <th>购物车小计:</th>
                        <td><span class="amount">£12.00</span></td>
                    </tr>
                    <tr class="shipping">
                        <th>是否折扣:</th>
                        <td>无折扣</td>
                    </tr>
                    <tr class="order-total">
                        <th>订单总计:</th>
                        <td><span class="amount">£12.00</span></td>
                    </tr>
                    </tbody>
                </table>
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