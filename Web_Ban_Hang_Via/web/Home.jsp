<%-- 
    Document   : Home
    Created on : 11-04-2023, 08:38:00
    Author     : trung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styleHome.css">
        <title>Home</title>
    </head>
   <body>
        <header>
            <div class="logo">
               <div><a href="Home.jsp">Dức Cảnh</a> </div>
            </div>
            <div class="menu">
                
                <li><a href="">Home</a></li>
                <li><a href="">Via Facebook</a>
                    <ul class="menuMuaHang">
                        <li><a href="">Via Việt Nam</a></li>
                        <li><a href="">Via Philippines</a></li>
                        <li><a href="">Via Thái Lan</a></li>
                        <li><a href="">Via EU</a></li>
                        <li><a href="">Via Clone</a></li>
                     </ul>
                    </li>
                    
                    <li><a href="TaoPhoiXMDT.jsp" target="_blank"> Tạo Phôi XMDT</a></li>
                <li><a href="">Kết nối API</a></li>
                <li><a href="">Check live UID</a></li>
                <li><a href="">2FA Tool</a></li>
                <li><a href="">Thông Báo</a></li>

            </div>
            <div class="other">
                <li type="text"> <input type="text"  placeholder="Tìm Kiếm" style=""> <button type="submit" class="">SEARCH</button></li>
           
                <li><a href="Login.jsp">Login</a></li>
                
            </div>
        </header>
        <section class="app-container">
            <p>
                Nhận tư vấn
            </p>
            <input type="text" placeholder="Nhập số điện thoại của bạn...">
 
        </section>

        <footer>
            <div class="footertop">
                <li><a href="">Liên hệ</a></li>
                <li><a href="">Zalo</a></li>
                <li><a href="https://www.facebook.com/Duc.Canh.Maketing.FB.ADS/" target="_blank">FaceBook</a></li>
            </div>
            <div class="lienhe-footer">
                <p>
                    Quảng cáo chuyên sâu FB.ADS-VIA-BM-PAGE-TKQC. <br>
                    Nhận chạy quảng cáo-cấp tài khoản ăn chi không phí
                    -cung cấp nhiên liệu chạy quảng cáo FB-xây dựng thương hiệu. <br>
                </p>
               <ul>
                    <li>+ MB Bank</li>
                    <li>+ 0962632354</li>
                    <li>+ Đức Cảnh</li>
                </ul>
            </div>
        </footer>
    </body>
</html>