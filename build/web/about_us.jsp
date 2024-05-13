<%-- 
    Document   : about_us
    Created on : Dec 28, 2023, 7:30:34 PM
    Author     : lvhho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>
            About us
        </title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdn.tailwindcss.com/3.3.2"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js"/>
        <style type="text/css">
            .a {
                color: black;
            }
        </style>
    </head>

    <body class="stretched no-transition">
        <header>
            <div class="main_header header_transparent header-mobile-m" style="margin: 0">
                <div class="header_container sticky-header">
                    <div class="container-fluid">
                        <div class="row align-items-center">
                            <div class="col-lg-2">
                                <div class="logo">
                                    <a href="home"><img src="images/SEN.jpg" alt="" style="width: 100px; margin-right: 75px;"></a>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <!-- main-menu starts -->
                                <div class="main_menu menu_two menu_position">
                                    <nav>
                                        <ul>
                                            <li><a href="refine?cid_refine=0">Shopping</a></li>
                                            <li><a href="aboutus" style="color:#f6692a ">About Us</a></li>
                                            <li><a href="contact" >Contact Us</a></li>
                                                <c:if test="${sessionScope.account==null}">
                                                <li>
                                                    <a href="#">User <i class="fa fa-angle-down"></i></a>
                                                    <ul class="sub_menu pages">
                                                        <li><a href="login">Login In</a></li>
                                                        <li><a href="register">Sign Up</a></li>
                                                    </ul>
                                                </li>
                                            </c:if>
                                            <c:if test="${sessionScope.account!=null}">
                                                <li>
                                                    <a href="profile">Profile</a> 
                                                </li>
                                            </c:if>
                                        </ul>
                                    </nav>
                                </div>
                                <!-- main menu ends -->
                            </div>
                            <div class="col-lg-4">
                                <%@ include file="header_right.jsp"%>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </header>
        <!-- #header end -->


        <section id="content">

            <div class="content-wrap notoppadding nobottompadding">



                <!-- group 1 -->
                <section id="section_about" class="corner clearfix" style=" background-image: url('images/bgk.jpg');">
                    <div class="container">
                        <h2 style="font-family: Roboto;font-size: 48px; margin-top: 50px">
                            <span style="font-family: Roboto;color: #ff5722;">
                                Laptop Super Star
                            </span>
                        </h2>
                        <h3 style="font-weight: 400;">
                            Cửa hàng chuyên máy tính chất lượng cao Việt Nam
                        </h3>
                        <div class="section_about_content col-md-12" style="margin-top: 30px;">
                            <div class="col-md-4" style="text-align: center;">
                                <img src="images/Asus3.jpg"
                                     alt="heading_image">
                            </div>
                            <div class="col-md-8">
                                <div class="section_about_content_text">
                                    <p><i class="fa fa-check" aria-hidden="true"></i><span>Cam kết</span>
                                        chính hãng.</p>
                                    <p><i class="fa fa-check" aria-hidden="true"></i>Chính xách bảo hành cho tất cả các sản phẩm
                                        <span>10 năm.</span></p>
                                  
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </section>
                <!-- end group 1 -->





             


                <p style="font-size:  100px; text-align: center;">Nothing to show</p>


               





                <footer class="footer_widgets color_two">
            <div class="footer_top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-7">
                            <div class="widgets_container contact_us">
                                <div class="footer_logo">
                                    <a href="#"><img src="images/SEN.jpg" alt="Logo"></a>
                                </div>
                                <div class="footer_desc">
                                    <p>Get all types of perfume from us within 2 day delivery. We can even order the
                                        perfumes which are not in our database. To do that kindly send a E-mail to the
                                        company's mail id.</p>
                                </div>
                                
                                <p style="margin-top: 20px">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.2038028904467!2d105.594123!3d21.014929!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abb938a24e59%3A0x862f3dbd2de1f14b!2sFPT%20University%20Hanoi%20Campus%20-%20Ho%20Lac%20Hi-Tech%20Park!5e0!3m2!1sen!2s!4v1703229023591!5m2!1sen!2s

" width="330" height="200" style="border:1px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">

                                    </iframe>
                                </p>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-5">
                            <div class="widgets_container widget_menu" style="padding-left: 89px;">
                                <h3>Information</h3>
                                <div class="footer_menu">
                                    <ul>
                                        <li><a href="home">Home</a></li>
                                        <li><a href="aboutus">About Us</a></li>
                                        <li><a href="refine?cid_refine=0">Shopping</a></li>
                                        <li><a href="refine?cid_refine=5">Gift set</a></li>
                                        <li><a href="profile">My Account</a></li>
                                        <li><a href="viewcart">Order</a></li>
                                        <li><a href="viewwishlist">Wish List</a></li>
                                        <li><a href="contact">Contact Us</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                           <div class="col-lg-2 col-md-6 col-sm-5">
                           <div class="widgets_container widget_menu" style="padding-left: 89px;">
                                <h3>policy</h3>
                                <div class="footer_menu">
                                    <ul>
                                        <li><a href="home">Home</a></li>
                                        <li><a href="aboutus">About Us</a></li>
                                        <li><a href="refine?cid_refine=0">Shopping</a></li>
                                        <li><a href="refine?cid_refine=5">Gift set</a></li>
                                        <li><a href="profile">My Account</a></li>
                                        <li><a href="viewcart">Order</a></li>
                                        <li><a href="viewwishlist">Wish List</a></li>
                                        <li><a href="contact">Contact Us</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-2 col-md-6 col-sm-5">
                           <div class="widgets_container widget_menu" style="padding-left: 89px;">
                                <h3>Contact</h3>
                                <div class="footer_menu">
                                    <ul>
                                        <li><a href="home">Home</a></li>
                                        <li><a href="aboutus">About Us</a></li>
                                        <li><a href="refine?cid_refine=0">Shopping</a></li>
                                        <li><a href="refine?cid_refine=5">Gift set</a></li>
                                        <li><a href="profile">My Account</a></li>
                                        <li><a href="viewcart">Order</a></li>
                                        <li><a href="viewwishlist">Wish List</a></li>
                                        <li><a href="contact">Contact Us</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                        

                     
                        </footer>
                <style>
                    #section_contact {
                        position: relative;
                    }

                    .modal-body {
                        padding: 30px 15px;
                    }

                    button.close {
                        margin: 5px 10px;
                        z-index: 99;
                        position: absolute;
                        right: 0;
                    }

                    .contact-form {
                        background: #fff;
                        height: 356px
                    }

                    .flip-box-part {
                        padding: 38px 40px 34px;
                        width: 100%;
                        margin: 0;
                        top: 0;
                        left: 0;
                        -webkit-backface-visibility: hidden;
                        backface-visibility: hidden;
                        -webkit-transition: 0.6s;
                        -webkit-transform-style: preserve-3d;
                        -webkit-transform: rotateY(0deg);
                        -moz-transition: 0.6s;
                        -moz-transform-style: preserve-3d;
                        -moz-transform: rotateY(0deg);
                        -o-transition: 0.6s;
                        -o-transform-style: preserve-3d;
                        -o-transform: rotateY(0deg);
                        -ms-transition: 0.6s;
                        -ms-transform-style: preserve-3d;
                        -ms-transform: rotateY(0deg);
                        transition: 0.6s;
                        -webkit-transform-style: preserve-3d;
                        transform-style: preserve-3d;
                        -webkit-transform: rotateY(0deg);
                        transform: rotateY(0deg);
                    }

                    .btn-block {
                        font: 600 19px/63px "Poppins", sans-serif;
                        text-transform: uppercase;
                        border: none;
                        transition: all 300ms linear 0s;
                        border-radius: 0;
                        background: #0084ff;
                        color: #FFF;
                        white-space: nowrap;
                        overflow: hidden;
                        text-overflow: ellipsis;
                    }

                    .form-control {
                        border-radius: 0;
                        box-shadow: none;
                        font: 300 17px/24px "Poppins", sans-serif;
                        padding: 12px 18px;
                        height: 50px;
                        border-color: #e0e8ee;
                        background: #f8fbfd;
                    }

                    .contact-form .js-close-flip {
                        position: absolute;
                        right: 0;
                        top: 0;
                        padding: 5px 10px;
                        font-size: 23px;
                        text-decoration: none;
                        color: #c0cad0;
                    }

                    .form-group {
                        margin-bottom: 20px;
                    }

                    .row-15 {
                        margin-left: -15px;
                        margin-right: -15px;
                    }

                    .contact-box h2 {
                        color: #374048;
                        margin: 0;
                        font-weight: bold;
                        text-transform: uppercase;
                    }

                    .contact-box ul li {
                        color: #777;
                        font-size: 16px;
                        padding-left: 30px;
                    }

                    .contact-box ul li i {
                        width: 30px;
                        float: left;
                        margin-left: -30px;
                        line-height: 32px;
                    }

                    .contact-box ul {
                        margin: 25px 0 30px;
                    }

                    .contact-box ul li+li {
                        margin-top: 10px;
                    }
                </style>
            </div>
        </section>

        <!-- #content end -->
        <jsp:include page="footer.jsp"/>
    </div><!-- #wrapper end -->


    <link href="//bizweb.dktcdn.net/100/048/087/themes/776353/assets/bootstrap.min.scss.css?1671122359380"
          rel="stylesheet" type="text/css" media="all" />
    <link href="//bizweb.dktcdn.net/100/048/087/themes/776353/assets/style.css?1671122359380" rel="stylesheet"
          type="text/css" media="all" />
    <link rel="stylesheet" type="text/css"
          href="//hstatic.net/0/global/design/member/fonts/svn-gotham-book,sans-serif.css">

    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="//bizweb.dktcdn.net/100/048/087/themes/776353/assets/scripts.js?1671122359380"
    type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>   
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
    <script src="js/countdown.js"></script>
    <script src="js/clickevents.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>
