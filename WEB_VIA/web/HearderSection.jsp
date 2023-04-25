<%-- 
    Document   : HearderSection
    Created on : 25-04-2023, 19:27:59
    Author     : trung
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Humberger Begin -->
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="HomeServelet"><img src="img/logo.jpg" alt=""></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>
            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
        </ul>
        <!--                <div class="header__cart__price">item: <span>$150.00</span></div>-->
    </div>
    <div class="humberger__menu__widget"> 
        <c:if test="${sessionScope.username == null}">
            <div class="header__top__right__auth">
                <a href="Login.jsp"><i class="fa fa-user"></i> Login</a>
            </div>

            <div class="header__top__right__auth">
                <a href="Register.jsp"><i class="fa fa-user"></i> Register</a>
            </div>
        </c:if>
        <c:if test="${sessionScope.username != null}">
            <div class="header__top__right__auth">
                <a href="LogoutServlet"><i class="fa fa-user"></i> Log Out</a>
            </div>
        </c:if>

    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="HomeServelet">Home</a></li>
            <li><a href="DetailServelet">Shop</a></li>
            <li><a href="#">Danh Mục</a>
                <ul class="header__menu__dropdown">
                    <li><a href="DetailServelet">Chi tiết sản phẩm</a></li>
                    <li><a href="./shoping-cart.html">Giỏ hàng</a></li>
                    <li><a href="./checkout.html">Thanh Toán</a></li>
                    <li><a href="./blog-details.html">Blog Details</a></li>
                </ul>
            </li>
            <li><a href="./blog.html">Blog</a></li>
            <li><a href="Contact.jsp">Contact</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="header__top__right__social">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-linkedin"></i></a>
        <a href="#"><i class="fa fa-pinterest-p"></i></a>
    </div>
    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> kientthe160037@fpt.edu.vn</li>
            <li>Shop bán via FB & Hỗ trợ fb 24/7</li>
        </ul>
    </div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i> kientthe160037@fpt.edu.vn</li>
                            <li>Shop bán via FB & Hỗ trợ fb 24/7</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        </div>
                        <div class="header__top__right__auth">
                            <c:if test="${sessionScope.username == null}">
                                <div class="header__top__right__auth">
                                    <a href="Login.jsp"><i class="fa fa-user"></i> Login</a>
                                </div>

                                <div class="header__top__right__auth">
                                    <a href="Register.jsp"><i class="fa fa-user"></i> Register</a>
                                </div>
                            </c:if>
                            <c:if test="${sessionScope.username != null}">
                                <div class="header__top__right__auth">
                                    <a href="LogoutServlet"><i class="fa fa-user"></i> Log Out</a>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="HomeServelet"><img src="img/logo.jpg" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li class="active"><a href="HomeServelet">Home</a></li>
                        <li><a href="DetailServelet">Shop</a></li>
                        <li><a href="#">Danh Mục</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="DetailServelet">Chi tiết sản phẩm</a></li>
                                <li><a href="./shoping-cart.html">Giỏ hàng</a></li>
                                <li><a href="./checkout.html">Thanh Toán</a></li>
                                <li><a href="CategoryServlet">Danh sách</a></li>
                            </ul>
                        </li>
                       
                        <li><a href="Contact.jsp">Liên Hệ</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                        <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                    </ul>

                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<!-- Header Section End -->
