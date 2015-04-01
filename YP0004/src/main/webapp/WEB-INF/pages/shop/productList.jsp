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
            <li><a href="${pageContext.request.contextPath}/system/forwardIndex.action">主页</a></li>
            <li class="active">所有课程</li>
        </ol>

        <div class="row">
            <div class="col-sm-3 sidebar">

                <aside class="widget widget_product_categories">
                    <h3 class="widget-title">课程分类:</h3>
                    <ul>
                        <li><a href="#">Clothing</a></li>
                        <li><a href="#">Feeding Bottles</a></li>
                        <li>
                            <a href="#">Diaper</a>
                            <ul>
                                <li><a href="#">Infant Clothes</a></li>
                                <li><a href="#">Educational Toys</a></li>
                                <li><a href="#">Strollers & Pams</a></li>
                                <li><a href="#">Creams & Ointments</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Feeding Bottles</a></li>
                        <li><a href="#">Clothing</a></li>
                        <li><a href="#">Infant Clothes</a></li>
                        <li><a href="#">Educational Toys</a></li>
                        <li><a href="#">Strollers & Pams</a></li>
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

                    <li class="col-sm-4 first">
                        <div class="product">
                            <div class="thumbnail">
                                <a href="${pageContext.request.contextPath}/product/forwardProduct.action"><img src="http://placehold.it/263x388" alt=""></a>
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

                    <li class="col-sm-4">
                        <div class="product">
                            <div class="thumbnail">
                                <a href="${pageContext.request.contextPath}/product/forwardProduct.action"><img src="http://placehold.it/263x388" alt=""></a>
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

                    <li class="col-sm-4">
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

                    <li class="col-sm-4 last">
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

                    <li class="col-sm-4 first">
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

                    <li class="col-sm-4">
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

                    <li class="col-sm-4">
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

                    <li class="col-sm-4 last">
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

                    <li class="col-sm-4 last">
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

                    <li class="col-sm-4 last">
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

                    <li class="col-sm-4 last">
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

                    <li class="col-sm-4 last">
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

                <ul class="pagination">
                    <li><a href="#">&laquo;</a></li>
                    <li><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">&raquo;</a></li>
                </ul>

            </div>

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