<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

<!-- Header -->

    <header id="header">
        <%@include file="../common/commonHeader.jsp"%>

        <%@include file="../common/commonMenu.jsp"%>

    </header>

<!-- ========== MENU END ========== -->

<!-- ========== CONTENT START ========== -->




<section id="content">
    <div class="container">

        <ol class="breadcrumb">
            <li><a href="#">主页</a></li>
            <li>选择支付方式</li>
        </ol>

        <!-- Nav tabs -->
        <ul class="nav nav-tabs product-tabs">
            <li class="active"><a href="#description" data-toggle="tab">支付方式</a></li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div class="tab-pane active" id="description">
                <p><input type="radio"/><img src="${pageContext.request.contextPath}/shop/img/pay/zfb.gif" alt=""/></p>
                <h1 class="page-title">创建订单</h1>
            </div>
        </div>

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
                    <input type="submit" value="立即支付" name="proceed" class="btn btn-primary btn-lg">
                </td>
            </tr>
            </tbody>
        </table>

        <div class="cart-collaterals">
            <table class="totals">
                <tbody>
                <tr class="order-total">
                    <th>订单编号:</th>
                    <td><span class="amount">${order.orderId}</span></td>
                </tr>
                <tr class="order-total">
                    <th>订单日期:</th>
                    <td><span class="amount"><fmt:formatDate value="${order.orderCreateTime}" pattern="yyyy-MM-dd"/></span></td>
                </tr>
                <tr class="order-total">
                    <th>是否折扣:</th>
                    <td>无折扣</td>
                </tr>
                <tr class="order-total">
                    <th>订单总计:</th>
                    <td><span class="amount">￥${order.orderPrice}</span></td>
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

<script type="text/javascript">
    /**
     * 添加到购物车
     */
    function addBuyCar(){
        $.ajax({
            type: "POST",
            url: "${pageContext.request.contextPath}/order/addShopCar.action",
            data: {id:${product.id}},
            success: function(data){
                alert(data);
                window.location.reload();
            }
        });
    }
</script>
</body>
</html>