<%-- 
    Document   : Shop
    Created on : 25-04-2023, 04:36:09
    Author     : trung
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Ogani Template">
        <meta name="keywords" content="Ogani, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Shop Detail</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>

    <body>
        <jsp:include page="HearderSection.jsp"></jsp:include>
            <!-- Hero Section Begin -->
            <section class="hero hero-normal">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="hero__categories">
                                <div class="hero__categories__all">
                                    <i class="fa fa-bars"></i>
                                    <span>Mua Hàng</span>
                                </div>
                                <ul>
                                <c:forEach items="${listC}" var="c">
                                    <li><a href="">${c.cname}</a></li>
                                    </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="hero__search">
                            <div class="hero__search__form">
                                <form action="#">
                                    <div class="hero__search__categories">
                                        All Categories
                                        <span class="arrow_carrot-down"></span>
                                    </div>
                                    <input type="text" placeholder="What do yo u need?">
                                    <button type="submit" class="site-btn">SEARCH</button>
                                </form>
                            </div>
                            <div class="hero__search__phone">
                                <div class="hero__search__phone__icon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="hero__search__phone__text">
                                    <h5>0862497002</h5>
                                    <span>support 24/7 time</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Hero Section End -->




        <!-- Breadcrumb Section Begin -->
        <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="breadcrumb__text">
                            <h2>${DetailServelet.name}</h2>
                            <div class="breadcrumb__option">
                                <a href="HomeServlet">Home</a>
                                <a href="./index.html">Shop_Detail</a>
                                <span>${DetailServelet.name}</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Product Details Section Begin -->
        <section class="product-details spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="product__details__pic">
                            <div class="product__details__pic__item">
                                <img class="product__details__pic__item--large"
                                     src="${DetailServelet.image}" alt="">
                            </div>

                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="product__details__text">
                            <h3>${DetailServelet.name}</h3>
                            <div class="product__details__rating">
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star"></i>
                                <i class="fa fa-star-half-o"></i>
                                <span>(18 reviews)</span>
                            </div>
                            <div class="product__details__price">${DetailServelet.price}</div>
                            <p>${DetailServelet.description}</p>
                            <div class="product__details__quantity">
                                <div class="quantity">
                                    <div class="pro-qty">
                                        <input type="text" value="1">
                                    </div>
                                </div>
                            </div>
                            <a href="#" class="primary-btn">ADD TO CARD</a>
                            <a href="#" class="heart-icon"><span class="icon_heart_alt"></span></a>
                            <ul>
                                <li><b>Tình trạng</b> <span>Có Sẵn</span></li>
                                <li><b>Shipping</b> <span>01 day shipping. <samp>Free pickup today</samp></span></li>

                                <li><b>Share on</b>
                                    <div class="share">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-instagram"></i></a>
                                        <a href="#"><i class="fa fa-pinterest"></i></a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--                <div class="col-lg-12">
                                        <div class="product__details__tab">
                                            <ul class="nav nav-tabs" role="tablist">
                                                <li class="nav-item">
                                                    <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                                        aria-selected="true">Description</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                                        aria-selected="false">Information</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                                        aria-selected="false">Reviews <span>(1)</span></a>
                                                </li>
                                            </ul>
                                            <div class="tab-content">
                                                <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                                    <div class="product__details__tab__desc">
                                                        <h6>Products Infomation</h6>
                                                        <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.
                                                            Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus. Vivamus
                                                            suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam sit amet quam
                                                            vehicula elementum sed sit amet dui. Donec rutrum congue leo eget malesuada.
                                                            Vivamus suscipit tortor eget felis porttitor volutpat. Curabitur arcu erat,
                                                            accumsan id imperdiet et, porttitor at sem. Praesent sapien massa, convallis a
                                                            pellentesque nec, egestas non nisi. Vestibulum ac diam sit amet quam vehicula
                                                            elementum sed sit amet dui. Vestibulum ante ipsum primis in faucibus orci luctus
                                                            et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam
                                                            vel, ullamcorper sit amet ligula. Proin eget tortor risus.</p>
                                                            <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem
                                                            ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet
                                                            elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula sed magna dictum
                                                            porta. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus
                                                            nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.
                                                            Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui. Sed
                                                            porttitor lectus nibh. Vestibulum ac diam sit amet quam vehicula elementum
                                                            sed sit amet dui. Proin eget tortor risus.</p>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="tabs-2" role="tabpanel">
                                                    <div class="product__details__tab__desc">
                                                        <h6>Products Infomation</h6>
                                                        <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.
                                                            Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus.
                                                            Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam
                                                            sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo
                                                            eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat.
                                                            Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Praesent
                                                            sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac
                                                            diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante
                                                            ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                                                            Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.
                                                            Proin eget tortor risus.</p>
                                                        <p>Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Lorem
                                                            ipsum dolor sit amet, consectetur adipiscing elit. Mauris blandit aliquet
                                                            elit, eget tincidunt nibh pulvinar a. Cras ultricies ligula sed magna dictum
                                                            porta. Cras ultricies ligula sed magna dictum porta. Sed porttitor lectus
                                                            nibh. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a.</p>
                                                    </div>
                                                </div>
                                                <div class="tab-pane" id="tabs-3" role="tabpanel">
                                                    <div class="product__details__tab__desc">
                                                        <h6>Products Infomation</h6>
                                                        <p>Vestibulum ac diam sit amet quam vehicula elementum sed sit amet dui.
                                                            Pellentesque in ipsum id orci porta dapibus. Proin eget tortor risus.
                                                            Vivamus suscipit tortor eget felis porttitor volutpat. Vestibulum ac diam
                                                            sit amet quam vehicula elementum sed sit amet dui. Donec rutrum congue leo
                                                            eget malesuada. Vivamus suscipit tortor eget felis porttitor volutpat.
                                                            Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Praesent
                                                            sapien massa, convallis a pellentesque nec, egestas non nisi. Vestibulum ac
                                                            diam sit amet quam vehicula elementum sed sit amet dui. Vestibulum ante
                                                            ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;
                                                            Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula.
                                                            Proin eget tortor risus.</p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>-->
                </div>
        </section>
        <!-- Product Details Section End -->

        <!-- Related Product Section Begin -->
        <section class="related-product">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title related__product__title">
                            <h2>Sản Phẩm Liên Quan</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <c:forEach items="${list}" var="list">
                        <div class="col-lg-3 col-md-4 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="${list.image}">
                                    <ul class="product__item__pic__hover">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                        <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">${list.name}</a></h6>
                                    <h5>${list.price} $</h5>
                                </div>
                            </div>
                        </div>
                    </c:forEach>


                </div>
            </div>
        </section>
        <!-- Related Product Section End -->
        <jsp:include page="Footer.jsp"></jsp:include>

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>


    </body>

</html>