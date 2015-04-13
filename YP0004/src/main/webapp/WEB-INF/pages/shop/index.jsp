<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
<!-- Header -->
<header id="header">
    <%@include file="../common/commonHeader.jsp"%>

    <%@include file="../common/commonMenu.jsp"%>

</header>

<section id="slider">
    <div id="bs-carousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
            <li data-target="#bs-carousel" data-slide-to="1"></li>
        </ol>
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active"><a href="#"><img src="${pageContext.request.contextPath}/shop/img/index/banner1.gif" alt=""></a></div>
            <div class="item"><a href="#"><img src="${pageContext.request.contextPath}/shop/img/index/banner2.gif" alt=""></a></div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#bs-carousel" data-slide="prev">
            <i class="fa fa-angle-left"></i>
            <!--span class="glyphicon glyphicon-chevron-left"></span-->
        </a>
        <a class="right carousel-control" href="#bs-carousel" data-slide="next">
            <i class="fa fa-angle-right"></i>
            <!--span class="glyphicon glyphicon-chevron-right"></span-->
        </a>
    </div>
</section>

<!-- ========== SLIDER END ========== -->

<!-- ========== CONTENT START ========== -->

<section id="content">
    <div class="container">

<%--         <div class="row ad-banners">
            <div class="col-sm-4">
                <a href="#"><img src="${pageContext.request.contextPath}/shop/img/images/ad-1.png" alt=""></a>
            </div>
            <div class="col-sm-4">
                <a href="#"><img src="${pageContext.request.contextPath}/shop/img/images/ad-2.png" alt=""></a>
                <a href="#"><img src="${pageContext.request.contextPath}/shop/img/images/ad-3.png" alt=""></a>
            </div>
            <div class="col-sm-4">
                <a href="#"><img src="${pageContext.request.contextPath}/shop/img/images/ad-4.png" alt=""></a>
            </div>
        </div>

        <div class="products-carousel products-small products">

            <div class="banner">
                <img src="${pageContext.request.contextPath}/shop/img/images/30-off.png" alt="">
            </div>

            <div class="carousel">
                <div>
                    <div class="product">
                        <div class="thumbnail">
                            <a href="#"><img src="http://placehold.it/204x204" alt=""></a>
                        </div>
                        <hr>
                        <div class="title">
                            <h3><a href="#">Reshape Panties</a></h3>
                            <p>by Jack &amp; Jones</p>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="product">
                        <div class="thumbnail">
                            <a href="#"><img src="http://placehold.it/204x204" alt=""></a>
                        </div>
                        <hr>
                        <div class="title">
                            <h3><a href="#">Reshape Panties</a></h3>
                            <p>by Jack &amp; Jones</p>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="product">
                        <div class="thumbnail">
                            <a href="#"><img src="http://placehold.it/204x204" alt=""></a>
                        </div>
                        <hr>
                        <div class="title">
                            <h3><a href="#">Reshape Panties</a></h3>
                            <p>by Jack &amp; Jones</p>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="product">
                        <div class="thumbnail">
                            <a href="#"><img src="http://placehold.it/204x204" alt=""></a>
                        </div>
                        <hr>
                        <div class="title">
                            <h3><a href="#">Reshape Panties</a></h3>
                            <p>by Jack &amp; Jones</p>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="product">
                        <div class="thumbnail">
                            <a href="#"><img src="http://placehold.it/204x204" alt=""></a>
                        </div>
                        <hr>
                        <div class="title">
                            <h3><a href="#">Reshape Panties</a></h3>
                            <p>by Jack &amp; Jones</p>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="product">
                        <div class="thumbnail">
                            <a href="#"><img src="http://placehold.it/204x204" alt=""></a>
                        </div>
                        <hr>
                        <div class="title">
                            <h3><a href="#">Reshape Panties</a></h3>
                            <p>by Jack &amp; Jones</p>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="product">
                        <div class="thumbnail">
                            <a href="#"><img src="http://placehold.it/204x204" alt=""></a>
                        </div>
                        <hr>
                        <div class="title">
                            <h3><a href="#">Reshape Panties</a></h3>
                            <p>by Jack &amp; Jones</p>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="product">
                        <div class="thumbnail">
                            <a href="#"><img src="http://placehold.it/204x204" alt=""></a>
                        </div>
                        <hr>
                        <div class="title">
                            <h3><a href="#">Reshape Panties</a></h3>
                            <p>by Jack &amp; Jones</p>
                        </div>
                    </div>
                </div>
            </div>

        </div> --%>

        <h2 class="align-center unbranded">浏览我们的课程</h2>
        <div class="gap-25"></div>

        <ul class="products row">

            <li class="col-sm-3 first">
                <div class="product">
                    <div class="thumbnail">
                        <a href="product.html"><img src="http://placehold.it/263x388" alt=""></a>
                        <a href="#" class="add-to-cart" title="添加到购物车">
              <span class="fa-stack fa-2x">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-shopping-cart  fa-stack-1x fa-inverse"></i>
              </span>
                        </a>
                    </div>
                    <hr>
                    <div class="title">
                        <h3><a href="#">Reshape Panties</a></h3>
                        <p>by Jack &amp; Jones</p>
                    </div>
                    <span class="price">$18</span>
                </div>
            </li>

            <li class="col-sm-3">
                <div class="product">
                    <div class="thumbnail">
                        <a href="product.html"><img src="http://placehold.it/263x388" alt=""></a>
                        <a href="#" class="add-to-cart" title="添加到购物车">
              <span class="fa-stack fa-2x">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-shopping-cart  fa-stack-1x fa-inverse"></i>
              </span>
                        </a>
                    </div>
                    <hr>
                    <div class="title">
                        <h3><a href="#">Reshape Panties</a></h3>
                        <p>by Jack &amp; Jones</p>
                    </div>
                    <span class="price">$18</span>
                </div>
            </li>

            <li class="col-sm-3">
                <div class="product">
                    <div class="thumbnail">
                        <a href="product.html"><img src="http://placehold.it/263x388" alt=""></a>
                        <a href="#" class="add-to-cart" title="添加到购物车">
              <span class="fa-stack fa-2x">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-shopping-cart  fa-stack-1x fa-inverse"></i>
              </span>
                        </a>
                    </div>
                    <hr>
                    <div class="title">
                        <h3><a href="#">Reshape Panties</a></h3>
                        <p>by Jack &amp; Jones</p>
                    </div>
                    <span class="price">$18</span>
                </div>
            </li>

            <li class="col-sm-3 last">
                <div class="product">
                    <div class="thumbnail">
                        <a href="product.html"><img src="http://placehold.it/263x388" alt=""></a>
                        <a href="#" class="add-to-cart" title="添加到购物车">
              <span class="fa-stack fa-2x">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-shopping-cart  fa-stack-1x fa-inverse"></i>
              </span>
                        </a>
                    </div>
                    <hr>
                    <div class="title">
                        <h3><a href="#">Reshape Panties</a></h3>
                        <p>by Jack &amp; Jones</p>
                    </div>
                    <span class="price">$18</span>
                </div>
            </li>

            <li class="col-sm-3 first">
                <div class="product">
                    <div class="thumbnail">
                        <a href="product.html"><img src="http://placehold.it/263x388" alt=""></a>
                        <a href="#" class="add-to-cart" title="添加到购物车">
              <span class="fa-stack fa-2x">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-shopping-cart  fa-stack-1x fa-inverse"></i>
              </span>
                        </a>
                    </div>
                    <hr>
                    <div class="title">
                        <h3><a href="#">Reshape Panties</a></h3>
                        <p>by Jack &amp; Jones</p>
                    </div>
                    <span class="price">$18</span>
                </div>
            </li>

            <li class="col-sm-3">
                <div class="product">
                    <div class="thumbnail">
                        <a href="product.html"><img src="http://placehold.it/263x388" alt=""></a>
                        <a href="#" class="add-to-cart" title="添加到购物车">
              <span class="fa-stack fa-2x">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-shopping-cart  fa-stack-1x fa-inverse"></i>
              </span>
                        </a>
                    </div>
                    <hr>
                    <div class="title">
                        <h3><a href="#">Reshape Panties</a></h3>
                        <p>by Jack &amp; Jones</p>
                    </div>
                    <span class="price">$18</span>
                </div>
            </li>

            <li class="col-sm-3">
                <div class="product">
                    <div class="thumbnail">
                        <a href="product.html"><img src="http://placehold.it/263x388" alt=""></a>
                        <a href="#" class="add-to-cart" title="添加到购物车">
              <span class="fa-stack fa-2x">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-shopping-cart  fa-stack-1x fa-inverse"></i>
              </span>
                        </a>
                    </div>
                    <hr>
                    <div class="title">
                        <h3><a href="#">Reshape Panties</a></h3>
                        <p>by Jack &amp; Jones</p>
                    </div>
                    <span class="price">$18</span>
                </div>
            </li>

            <li class="col-sm-3 last">
                <div class="product">
                    <div class="thumbnail">
                        <a href="product.html"><img src="http://placehold.it/263x388" alt=""></a>
                        <a href="#" class="add-to-cart" title="添加到购物车">
              <span class="fa-stack fa-2x">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-shopping-cart  fa-stack-1x fa-inverse"></i>
              </span>
                        </a>
                    </div>
                    <hr>
                    <div class="title">
                        <h3><a href="#">Reshape Panties</a></h3>
                        <p>by Jack &amp; Jones</p>
                    </div>
                    <span class="price">$18</span>
                </div>
            </li>

        </ul>


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
<script src="${pageContext.request.contextPath}/shop/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/shop/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/shop/js/jquery.jpanelmenu.min.js"></script>
<script src="${pageContext.request.contextPath}/shop/js/main.js"></script>

</body>
</html>