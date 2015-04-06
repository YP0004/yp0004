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
<div class="container">
    <hr>
    <div class="row">

        <div class="col-sm-2">
            <aside class="widget widget_nav_menu">
                <h3 class="widget-title">365IT学院</h3>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/system/forwardIndex.action">主页</a></li>
                    <li><a href="#">关于我们</a></li>
                    <li><a href="${pageContext.request.contextPath}/system/forwardLogin.action">登陆 / 注册</a></li>
                    <li><a href="${pageContext.request.contextPath}/system/logout.action">退出登陆</a></li>
                    <li><a href="#">我的空间</a></li>
                    <li><a href="${pageContext.request.contextPath}/order/forwardShopCar.action">我的购物车</a></li>
                </ul>
            </aside>
        </div>

        <div class="col-sm-2">
            <aside class="widget widget_nav_menu">
                <h3 class="widget-title">精品课程</h3>
                <ul>
                    <li><a href="${pageContext.request.contextPath}/product/forwardProductList.action">全部课程</a></li>
                    <li><a href="#">正在更新</a></li>
                    <li><a href="#">已完结课程</a></li>
                </ul>
            </aside>
        </div>

        <div class="col-sm-2">
            <aside class="widget widget_nav_menu">
                <h3 class="widget-title">公司信息</h3>
                <ul>
                    <li><a href="#">公司主页</a></li>
                    <li><a href="#">公司简介</a></li>
                    <li><a href="#">OA办公系统</a></li>
                </ul>
            </aside>
        </div>

        <div class="col-sm-3">

            <aside class="widget widget_newsletter">
                <h3 class="widget-title">365IT学院动态</h3>
                <form action="#" id="newsletter">
                    <label for="newsletter-email">订阅新动态</label>
                    <div class="input-group">
                        <input type="text" name="newsletter-email" id="newsletter-email" placeholder="Email" class="form-control input-lg">
              <span class="input-group-btn">
                <button class="btn btn-default btn-lg" type="button"><i class="fa fa-envelope"></i></button>
              </span>
                    </div>
                </form>
            </aside>

            <aside class="widget widget_social_profiles">
                <h3 class="widget-title">获取连接</h3>
                <ul class="social-profiles">
                    <li>
                        <a href="#" title="Facebook">
                <span class="fa-stack fa-lg">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                </span>
                        </a>
                    </li>
                    <li>
                        <a href="#" title="Google+">
                <span class="fa-stack fa-lg">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-google-plus fa-stack-1x fa-inverse"></i>
                </span>
                        </a>
                    </li>
                    <li>
                        <a href="#" title="Twitter">
                <span class="fa-stack fa-lg">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                </span>
                        </a>
                    </li>
                    <li>
                        <a href="#" title="Pinterest">
                <span class="fa-stack fa-lg">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-pinterest fa-stack-1x fa-inverse"></i>
                </span>
                        </a>
                    </li>
                    <li>
                        <a href="#" title="LinkedIn">
                <span class="fa-stack fa-lg">
                  <i class="fa fa-circle fa-stack-2x"></i>
                  <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i>
                </span>
                        </a>
                    </li>
                </ul>
            </aside>

        </div>

        <div class="col-sm-3">

            <aside class="widget widget_text">
                <h3 class="widget-title">我们支持</h3>
                <img src="${pageContext.request.contextPath}/shop/img/images/payments.png" alt="">
            </aside>

            <aside class="widget widget_text">
                <h3 class="widget-title">免费购物</h3>
                <p class="free-shipping"><i class="fa fa-plane fa-3x"></i> <span>采取网盘下载模式,无国界限制,无运费</span></p>
            </aside>

        </div>

    </div>

</div>

<div id="copyright">
    <div class="container"> Copyright &copy; 2014-2015 上海颐凡软件科技有限公司
        沪ICP备13043409号 <a href="http://themeforest.net/user/jthemes"></a></div>
</div>

</body>
</html>