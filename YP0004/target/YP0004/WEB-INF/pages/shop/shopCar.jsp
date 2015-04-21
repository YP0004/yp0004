<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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


<%--    <section id="content">
        <div class="container">

            <ol class="breadcrumb">
                <li><a href="#">主页</a></li>
                <li>购物车</li>
            </ol>

            <h1 class="page-title">购物车</h1>


<form action="${pageContext.request.contextPath}/order/forwardSureOrder.action" method="post">
            <table class="shop_table cart table-striped">
                <thead>
                <tr>
                    <th class="product-remove">删除</th>
                    <th class="product-desc">产品描述</th>
                    <th class="product-size visible-lg">折扣</th>
                    <th class="product-color visible-lg">课程难度</th>
                    <th class="product-qty">数量</th>
                    <th class="product-price">价格</th>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${sessionScope.get('shopCar') == null && sessionScope.get('shopCar').shopCarItems == null && sessionScope.get('shopCar').shopCarItems.size() <= 0}">
                        <tr class="cart_item">
                            <td class="product-desc">
                                <p class="hidden-xs">您没有选购任何的课程,请您选购</p>
                            </td>
                        </tr>
                    </c:when>
                    <c:when test="${sessionScope.get('shopCar') != null && sessionScope.get('shopCar').shopCarItems != null && sessionScope.get('shopCar').shopCarItems.size() > 0}">
                        <c:forEach items="${sessionScope.get('shopCar').shopCarItems}" var="shopCarItem">
                            <tr class="cart_item">
                                <td class="product-remove"><a href="${pageContext.request.contextPath}/order/removeShopCarItem.action?shopCarItemId=${shopCarItem.id}" class="remove"><i class="fa fa-times-circle fa-2x"></i></a></td>
                                <td class="product-desc">
                                    <dl>
                                        <dt class="hidden-xs"><img src="${pageContext.request.contextPath}/product/takeProductHeadImg.action?id=${shopCarItem.product.id}" style="width: 150px;height: 140px;" alt=""></dt>
                                        <dd>
                                            <h3>${shopCarItem.product.productName}</h3>
                                            <p class="hidden-xs">${shopCarItem.product.productIntroduction}</p>
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
                                        <input type="number" size="4" class="qty text form-control" title="Qty" value="${shopCarItem.count}" name="qty" step="1">
                                        <button class="plus"><i class="fa fa-plus"></i></button>
                                    </div>
                                </td>
                                <td class="product-price">
                                    <h3>￥${shopCarItem.subCount}</h3>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:when>

                </c:choose>

                <tr>
                    <td class="actions" colspan="6">
                        <div class="coupon">
                            <h3>是否需要其他课程?</h3>
                            <input type="text" placeholder="搜索课程" value="" class="form-control input-lg" name="coupon_code">
                            <button name="apply_coupon" class="btn btn-primary btn-lg"><i class="fa fa-refresh"></i></button>
                        </div>
                        <input type="button" value="更新购物车" name="update_cart" class="btn btn-default btn-lg">
                        <input type="submit" value="确认订单" name="proceed" class="btn btn-primary btn-lg">
                    </td>
                </tr>
                </tbody>
            </table>
</form>

            <div class="cart-collaterals">
                <table class="totals">
                    <tbody>
                    <tr class="cart-subtotal">
                        <th>购物车小计:</th>
                        <td><span class="amount">￥${sessionScope.get('shopCar').countPrice}</span></td>
                    </tr>
                    <tr class="shipping">
                        <th>是否折扣:</th>
                        <td>无折扣</td>
                    </tr>
                    <tr class="order-total">
                        <th>订单总计:</th>
                        <td><span class="amount">￥${sessionScope.get('shopCar').countPrice}</span></td>
                    </tr>
                    </tbody>
                </table>
            </div>

        </div>
    </section>--%>

    <section>

        <div class="container">

            <ol class="breadcrumb">
                <li><a href="#">主页</a></li>
                <li>购物车</li>
            </ol>

            <h1 class="page-title">购物车</h1>




            <form action="${pageContext.request.contextPath}/order/forwardSureOrder.action" method="post">
        <table class="shop_table cart table-striped">
            <thead>
            <tr>
                <th class="product-remove" style="width: 10%;padding-top: 50px;">删除</th>
                <th class="product-desc" style="padding-top: 50px;">产品描述</th>
                <th class="product-size visible-lg" style="width:15%;padding-top: 50px;">折扣</th>
                <th class="product-color visible-lg" style="width: 15%;padding-top: 50px;">课程难度</th>
                <th class="product-qty" style="width:20%;padding-top: 50px;">数量</th>
                <th class="product-price" style="width: 10%;padding-top: 50px;">价格</th>
            </tr>
            </thead>
            <tbody>

            <c:forEach items="${sessionScope.get('shopCar').shopCarItems}" var="shopCarItem">
            <tr class="cart_item">
                <td class="product-remove"><a href="${pageContext.request.contextPath}/order/removeShopCarItem.action?shopCarItemId=${shopCarItem.id}" class="remove"><i class="fa fa-times-circle fa-2x"></i></a></td>
                <td class="product-desc">
                    <dl>
                        <dt class="hidden-xs"><img src="${pageContext.request.contextPath}/product/takeProductHeadImg.action?id=${shopCarItem.product.id}" style="width: 150px;height: 140px;" alt=""></dt>
                        <dd>
                            <h3>${shopCarItem.product.productName}</h3>
                            <p class="hidden-xs">${shopCarItem.product.productIntroduction}</p>
                        </dd>
                    </dl>
                </td>
                <td class="product-size visible-md visible-lg">
                    <h3>无</h3>
                </td>
                <td class="product-color visible-md visible-lg">
                    <h3>中级</h3>
                </td>
                <td>
                    <div class="quantity buttons_added">
                        <input type="text" value="${shopCarItem.count}" disabled="disabled"/>
                    </div>
                </td>
                <td class="product-price">
                    <h3>￥${shopCarItem.subCount}</h3>
                </td>
            </tr>
            </c:forEach>

            </tbody>
            <tfoot>
            <tr>
                <td class="actions" colspan="6">
<%--                    <div class="coupon">
                        <h3>是否需要其他课程?</h3>
                        <input type="text" placeholder="搜索课程" value="" class="form-control input-lg" name="coupon_code">
                        <button name="apply_coupon" class="btn btn-primary btn-lg"><i class="fa fa-refresh"></i></button>
                    </div>--%>
                    <%--<input type="button" value="更新购物车" name="update_cart" class="btn btn-default btn-lg">--%>
                    <input type="submit" value="确认订单" name="proceed" class="btn btn-primary btn-lg">
                </td>
            </tr>
            </tfoot>
            </table>
                </form>
            <div class="cart-collaterals">
                <table class="totals">
                    <tbody>
                    <tr class="cart-subtotal">
                        <th>购物车小计:</th>
                        <td><span class="amount">￥${sessionScope.get('shopCar').countPrice}</span></td>
                    </tr>
                    <tr class="shipping">
                        <th>是否折扣:</th>
                        <td>无折扣</td>
                    </tr>
                    <tr class="order-total">
                        <th>订单总计:</th>
                        <td><span class="amount">￥${sessionScope.get('shopCar').countPrice}</span></td>
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