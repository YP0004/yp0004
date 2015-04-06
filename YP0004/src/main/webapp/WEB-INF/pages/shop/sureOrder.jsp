<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                <li>订单确认</li>
            </ol>

            <h1 class="page-title">确认订单</h1>
            <table class="shop_table cart table-striped" style="width: 100%;">
                <thead>
                <tr>
                    <th class="product-desc visible-lg">产品描述</th>
                    <th class="product-qty visible-lg">数量</th>
                    <th class="product-price visible-lg">价格</th>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${sessionScope.get('shopCar') != null && sessionScope.get('shopCar').shopCarItems != null && sessionScope.get('shopCar').shopCarItems.size() > 0}">
                        <c:forEach items="${sessionScope.get('shopCar').shopCarItems}" var="shopCarItem">
                            <tr class="cart_item">
                                <td class="product-desc">
                                    <dl>
                                        <dt class="hidden-xs"><img src="${pageContext.request.contextPath}/product/takeProductHeadImg.action?id=${shopCarItem.product.id}" style="width: 150px;height: 140px;" alt=""></dt>
                                        <dd>
                                            <h3>${shopCarItem.product.productName}</h3>
                                            <p class="hidden-xs">${shopCarItem.product.productIntroduction}</p>
                                        </dd>
                                    </dl>
                                </td>
                                <td class="product-qty">
                                    <input type="number" size="4" class="qty text form-control" title="Qty" value="${shopCarItem.count}" name="qty" step="1" disabled="disabled"/>
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
                        <a href="${pageContext.request.contextPath}/order/forwardShopCar.action"><input type="button" value="修改购物车" name="update_cart" class="btn btn-default btn-lg"></a>
                        <a href="${pageContext.request.contextPath}/order/forwardPayOrder.action"><input type="submit" value="生成订单" name="proceed" class="btn btn-primary btn-lg"></a>
                    </td>
                </tr>
                </tbody>
            </table>

            <div class="cart-collaterals">
                <table class="totals">
                    <tbody>
                    <tr class="order-total">
                        <th>是否折扣:</th>
                        <td>无折扣</td>
                    </tr>
                    <tr class="order-total">
                        <th>订单总计:</th>
                        <td><span class="amount">￥66.00</span></td>
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