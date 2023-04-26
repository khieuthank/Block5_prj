<%-- 
    Document   : Catergory
    Created on : 26-04-2023, 04:29:51
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
        <title>Cartegory</title>

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
                                    <span>Danh Mục</span>
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
      <%-- seach --------------------------------------------%>
                                <form action="SeachServlet" method="post">
                                    <div class="hero__search__categories">
                                        All Categories
                                        <span class="arrow_carrot-down"></span>
                                    </div>
                                    <input value="${VarSeach}" type="text" placeholder="What do yo u need?" name="seach">
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
                            <h2>Blog</h2>
                            <div class="breadcrumb__option">
                                <a href="HomeServerlet">Home</a>
                                <span>Blog</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Breadcrumb Section End -->

        <!-- Blog Section Begin -->
        <section class="blog spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-5">
                        <div class="blog__sidebar">
                            <div class="blog__sidebar__search">
<!--             seach   ---------------------------    -->
                                <form action="SeachServlet" method="post">
                                    <input  value="${VarSeach}" type="text" placeholder="What do yo u need?" name="seach">
                                    <button type="submit"><span class="icon_search"></span></button>
                                </form>
                            </div>
                            <div class="blog__sidebar__item">
                                <h4>Danh sách</h4>
                                <ul>
                                    <c:forEach items="${listC}" var="c">
                                        <li><a href="CategoryServlet2?cid=${c.cid}">${c.cname}</a></li>
                                        </c:forEach>                                  


                                </ul>
                            </div>
                            <div class="blog__sidebar__item">
                                <h4>Mới Nhất</h4>
                                <div class="blog__sidebar__recent">

                                    <c:forEach items="${listtp}" var="tp">
                                        <a href="#" class="blog__sidebar__recent__item">
                                            <div class="blog__sidebar__recent__item__pic">
                                                <img src="${tp.image}" alt="" style="width: 70px; height: 70px">
                                            </div>
                                            <div class="blog__sidebar__recent__item__text">
                                                <h6>${tp.name}<br />${tp.price} $</h6>
                                                <span>MAR 05, 2023</span>
                                            </div>
                                        </a>
                                    </c:forEach>


                                </div>
                            </div>
                            <div class="blog__sidebar__item">
                                <h4>Search By</h4>
                                <div class="blog__sidebar__item__tags">
                                    <a href="#">Price</a>
                                    <a href="#">New</a>                                   
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-7">
                        <div class="row">                        

                            <div class="col-lg-8 col-md-7">
                                <div class="row">
                                <c:forEach items="${listP}" var="lp">
                                    <div class="col-lg-6 col-md-6 col-sm-6">
                                        <div class="blog__item">
                                            <div class="blog__item__pic">
                                                <img src="${lp.image}" alt="" style="width: 240px; height: 172.53px">
                                            </div>
                                            <div class="blog__item__text">
                                                <ul>
                                                    <li><i class="fa fa-calendar-o"></i> May 4,2019</li>
                                                    <li><i class="fa fa-comment-o"></i> 5</li>
                                                </ul>
                                                <h5><a href="#">${lp.name}</a></h5>
                                                <p>${lp.price} $</p>
                                                <a href="DetailServelet?pid=${lp.id}" class="blog__btn">READ MORE <span class="arrow_right"></span></a>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                                   
                                    
                                    <div class="col-lg-12">
                                        <div class="product__pagination blog__pagination">
                                            <a href="#">1</a>
                                            <a href="#">2</a>
                                            <a href="#">3</a>
                                            <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>




                            <!--                            <div class="col-lg-12">
                                                            <div class="product__pagination blog__pagination">
                                                                <a href="#">1</a>
                                                                <a href="#">2</a>
                                                                <a href="#">3</a>
                                                                <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                                                            </div>
                                                        </div>-->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Blog Section End -->
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
