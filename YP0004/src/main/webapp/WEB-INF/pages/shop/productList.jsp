<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <script type="text/javascript">
        /**
         * 添加到购物车
         */
        function addBuyCar(productId){
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/order/addShopCar.action",
                data: {id:productId},
                success: function(data){
                    alert(data);
                    window.location.reload();
                }
            });
        }
    </script>
</head>
<body>

<!-- Header -->

<header id="header">
    <%@include file="../common/commonHeader.jsp" %>

    <%@include file="../common/commonMenu.jsp" %>

</header>

<!-- ========== MENU END ========== -->

<!-- ========== CONTENT START ========== -->

<section id="content">
    <div class="container">

        <ol class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/system/forwardIndex.action">主页</a></li>
            <li class="active">所有课程</li>
        </ol>

        <div class="row">
            <div class="col-sm-3 sidebar">

                <aside class="widget widget_product_categories">
                    <h3 class="widget-title">课程分类:</h3>
                    <ul>
                        <li><a href="#">架构师系列</a></li>
                        <li><a href="#">品质管理</a></li>
                        <li>
                            <a href="#">java系列</a>
                            <ul>
                                <li><a href="#">Android</a></li>
                                <li><a href="#">Struts2</a></li>
                                <li><a href="#">Spring</a></li>
                                <li><a href="#">Hibernate</a></li>
                            </ul>
                        </li>
                        <li><a href="#">云计算系列</a></li>
                    </ul>
                </aside>

                <aside class="widget widget_product_color">
                    <h3 class="widget-title">课程等级:</h3>
                    <ul>
                        <li><a href="#">中级</a></li>
                        <li><a href="#">初级</a></li>
                        <li><a href="#">高级</a></li>
                    </ul>
                </aside>
            </div>

            <div class="col-sm-9">

                <ul class="products row">
                    <c:forEach items="${productList}" var="product">
                        <li class="col-sm-4">
                            <div class="product">
                                <div class="thumbnail">
                                    <a href="${pageContext.request.contextPath}/product/forwardProduct.action?id=${product.id}"><img
                                            src="${pageContext.request.contextPath}/product/takeProductHeadImg.action?id=${product.id}"
                                            style="width: 263px;height: 388px; max-width: 263px;max-height: 388px;"
                                            alt=""></a>
                                    <a href="#" class="add-to-cart" title="添加到购物车" onclick="addBuyCar('${product.id}');">
                  <span class="fa-stack fa-2x">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-shopping-cart  fa-stack-1x fa-inverse"></i>
                  </span>
                                    </a>
                                </div>
                                <hr>
                                <div class="title">
                                    <h3><a href="#">${product.productName}</a></h3>

                                    <p>${product.productStatusDic.dicCn}</p>
                                    <span class="price">￥${product.productPrice}</span>
                                </div>

                            </div>
                        </li>
                    </c:forEach>
                </ul>

                <ul class="pagination">
                    <li class="disabled"><a href="#">&laquo;</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li class="disabled"><a href="#">&raquo;</a></li>
                </ul>

            </div>

        </div>

    </div>
</section>

<!-- ========== CONTENT END ========== -->

<!-- ========== FOOTER START ========== -->

<footer id="footer">

    <%@ include file="../common/commonFooter.jsp" %>

</footer>

<!-- ========== FOOTER END ========== -->

<%@ include file="../common/commonCar.jsp" %>


<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/shop/js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/shop/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/shop/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/shop/js/jquery.jpanelmenu.min.js"></script>
<script src="${pageContext.request.contextPath}/shop/js/main.js"></script>

</body>
</html>