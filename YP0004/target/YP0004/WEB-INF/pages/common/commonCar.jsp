<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
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


<div id="cart-panel" class="panel-left">
    <aside class="widget_shopping_cart">
        <h3>购物车</h3>

            <c:choose>

                <c:when test="${sessionScope.get('shopCar') == null}">
                    <ul class="cart_list">
                        <li>
                            <span class="amount">暂无课程添加到购物车,请您选购</span>
                        </li>
                    </ul>
                </c:when>
                <c:when test="${sessionScope.get('shopCar') != null && sessionScope.get('shopCar').shopCarItems != null && sessionScope.get('shopCar').shopCarItems.size() > 0}">
                    <ul class="cart_list">

                        <c:forEach items="${sessionScope.get('shopCar').shopCarItems}" var="shopCarItem">
                            <li>
                                <a href="${pageContext.request.contextPath}/product/forwardProduct.action?id=${shopCarItem.product.id}">
                                    <img alt="" src="${pageContext.request.contextPath}/product/takeProductHeadImg.action?id=${shopCarItem.product.id}" style="width: 60px;height: 60px;">
                                        ${shopCarItem.product.productName}
                                </a>
                                <span class="quantity">${shopCarItem.count} × <span class="amount">￥${shopCarItem.product.productPrice}</span></span>
                            </li>
                        </c:forEach>
                    </ul>
                    <p class="total"><strong>小计:</strong> <span class="amount">￥${sessionScope.get('shopCar').countPrice}</span></p>

                    <p class="buttons">
                        <a class="btn btn-default btn-lg btn-block"
                           href="${pageContext.request.contextPath}/order/forwardShopCar.action">查看购物车</a>
                        <a class="btn btn-primary btn-lg btn-block" href="${pageContext.request.contextPath}/order/forwardSureOrder.action">结算</a>
                    </p>
                </c:when>
            </c:choose>


    </aside>
</div>
</body>
</html>