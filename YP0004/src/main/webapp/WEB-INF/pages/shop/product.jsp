<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8" %>
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
    <script type="text/javascript">
        /**
         * 添加到购物车
         */
        function addBuyCar(id){
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/order/addShopCar.action",
                data: id,
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
        <%@include file="../common/commonHeader.jsp"%>

        <%@include file="../common/commonMenu.jsp"%>

    </header>

<!-- ========== MENU END ========== -->

<!-- ========== CONTENT START ========== -->




<section id="content">
    <div class="container">

        <ol class="breadcrumb">
            <li><a href="#">主页</a></li>
            <li><a href="#">全部课程</a></li>
            <li>课程详情</li>
        </ol>

        <div class="row">
            <div class="col-sm-5">

                <div id="product-large" class="owl-carousel">
                    <div class="item"><img src="${pageContext.request.contextPath}/product/takeProductHeadImg.action?id=${product.id}" style="width: 458px;height: 480px;"/></div>
                    <div class="item"><img src="http://placehold.it/458x480"></div>
                    <div class="item"><img src="http://placehold.it/458x480"></div>
                    <div class="item"><img src="http://placehold.it/458x480"></div>
                    <div class="item"><img src="http://placehold.it/458x480"></div>
                    <div class="item"><img src="http://placehold.it/458x480"></div>
                    <div class="item"><img src="http://placehold.it/458x480"></div>
                    <div class="item"><img src="http://placehold.it/458x480"></div>
                </div>
                <div id="product-thumb" class="owl-carousel">
                    <div class="item"><img src="${pageContext.request.contextPath}/product/takeProductHeadImg.action?id=${product.id}" style="width: 78px;height: 78px;"/></div>
                    <div class="item"><img src="http://placehold.it/78x78"></div>
                    <div class="item"><img src="http://placehold.it/78x78"></div>
                    <div class="item"><img src="http://placehold.it/78x78"></div>
                    <div class="item"><img src="http://placehold.it/78x78"></div>
                    <div class="item"><img src="http://placehold.it/78x78"></div>
                    <div class="item"><img src="http://placehold.it/78x78"></div>
                    <div class="item"><img src="http://placehold.it/78x78"></div>
                </div>

            </div>
            <div class="col-sm-7 summary entry-summary">

                <h1 class="product_title">${product.productName}</h1>

                <p class="price">
                    <sup>￥</sup><span class="amount">${product.productPrice}</span>
                </p>

                <h3>课程简介</h3>

                <p>${product.productIntroduction}</p>


                <hr>

                <h3>点击购买我!</h3>

                <input type="button" class="btn btn-primary btn-lg" id="add-to-cart" value="添加到购物车" onclick="addBuyCar('${product.id}');">

            </div>
        </div>

        <!-- Nav tabs -->
        <ul class="nav nav-tabs product-tabs">
            <li class="active"><a href="#description" data-toggle="tab">描述</a></li>
            <li><a href="#reviews" data-toggle="tab">评论 (3)</a></li>
            <li><a href="#detailImg" data-toggle="tab">课程详情</a></li>
            <li><a href="#greateImg" data-toggle="tab">课程精彩截图</a></li>
        </ul>

        <!-- Tab panes -->
        <div class="tab-content">
            <div class="tab-pane active" id="description">
                <p>${product.productDesc}</p>
            </div>
            <div class="tab-pane" id="reviews">

                <div id="reviews">
                    <ol class="commentlist">

                        <li class="comment">
                            <div class="comment_container">
                                <img src="http://placehold.it/64x64" class="avatar">
                                <div class="comment-text">
                                    <div class="start-rating">
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                    </div>
                                    <h5 class="meta">James Koster <span>&mdash; June 7, 2013</span></h5>
                                    <p>Really happy with this print. The colors are great, and the paper quality is good too.</p>
                                </div>
                            </div>
                        </li>

                        <li class="comment">
                            <div class="comment_container">
                                <img src="http://placehold.it/64x64" class="avatar">
                                <div class="comment-text">
                                    <div class="start-rating">
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                    </div>
                                    <h5 class="meta">Cobus Bester <span>&mdash; June 7, 2013</span></h5>
                                    <p>You only get the picture, not the person holding it, something they don’t mention in the description, now I’ve got to find my own person.</p>
                                </div>
                            </div>
                        </li>

                        <li class="comment">
                            <div class="comment_container">
                                <img src="http://placehold.it/64x64" class="avatar">
                                <div class="comment-text">
                                    <div class="start-rating">
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                        <span class="glyphicon glyphicon-star"></span>
                                    </div>
                                    <h5 class="meta">Stuart <span>&mdash; June 7, 2013</span></h5>
                                    <p>This is a fantastic quality print and is happily hanging framed on my wall now.</p>
                                </div>
                            </div>
                        </li>

                    </ol>
                </div>

                <hr>

                <div id="review_form">
                    <h3 id="reply-title" class="comment-reply-title">发表评论</h3>
                    
                    
                    <c:choose>
                        <c:when test="${sessionScope.get('user') != null}">
                            <form action="#" id="commentform" class="comment-form">
                                <div class="row">
                                    <p class="comment-form-rating col-sm-4">
                                        <select class="form-control">
                                            <option value="0">非常好</option>
                                            <option value="0">一般</option>
                                            <option value="0">非常差</option>
                                        </select>
                                    </p>
                                </div>

                                <p class="comment-form-comment"><textarea name="review" id="review" class="form-control" cols="30" rows="5" placeholder="您的评论"></textarea></p>
                                <p class="form-submit"><input type="button" class="btn btn-primary btn-lg" name="proceed" value="发表评论"></p>
                            </form>
                        </c:when>
                        <c:otherwise>
                            请您先<a href="${pageContext.request.contextPath}/system/forwardLogin.action">登录</a>
                        </c:otherwise>
                        
                    </c:choose>
                    

                </div>

            </div>

            <div class="tab-pane active" id="greateImg">
                <ol class="commentlist">
                    <c:forEach items="${productGreateImgIdList}" var="greatId">
                    <li class="comment">
                        <div class="comment_container">
                            <p><img src="${pageContext.request.contextPath}/product/takeProductGreateImg.action?id=${greatId}" alt=""/></p>
                        </div>
                    </li>
                    </c:forEach>
                </ol>
            </div>

            <div class="tab-pane active" id="detailImg">
                <ol class="commentlist">
                    <c:forEach items="${productDetailImgIdList}" var="detailId">
                        <li class="comment">
                            <div class="comment_container">
                                <p> <img src="${pageContext.request.contextPath}/product/takeProductDatailImg.action?id=${detailId}" alt=""/></p>
                            </div>
                        </li>
                    </c:forEach>
                </ol>
            </div>


        </div>

        <div class="related">
            <h2>你可能还喜欢以下课程</h2>
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
            </ul>
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