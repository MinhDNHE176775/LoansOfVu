

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <meta charset="UTF-8" />
        <meta name="theme-color" content="#f02b2b" />
        <meta name='revisit-after' content='2 days' />
        <meta name="robots" content="noodp,index,follow" />
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta name="description" content="Trang nội dung">
        <title>Contact</title>


        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/font-roboto.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/main.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/index.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/bootstrap-4-3-min.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/responsive.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/quickviews_popup_cart.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/cartpage.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/blog_article_style.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/sidebar_style.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/product_style.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/contact_style.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/account_oder_style.scss.css?1676259868191">
        <link rel="preload" as='style' type="text/css"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/collection_style.scss.css?1676259868191">
        <link rel="stylesheet"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/bootstrap-4-3-min.css?1676259868191">
        <link href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/font-roboto.scss.css?1676259868191"
              rel="stylesheet" type="text/css" media="all" />
        <link href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/main.scss.css?1676259868191" rel="stylesheet"
              type="text/css" media="all" />






        <link href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/contact_style.scss.css?1676259868191"
              rel="stylesheet" type="text/css" media="all" />


        <link rel="preload" as="script"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/jquery.min.js?1676259868191" />
        <script src="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/jquery.min.js?1676259868191"
        type="text/javascript"></script>


        <link rel="preload" as="script"
              href="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/swiper.min.js?1676259868191" />
        <script src="//bizweb.dktcdn.net/100/332/764/themes/894770/assets/swiper.min.js?1676259868191"
        type="text/javascript"></script>
    </head>

    <body style="height: auto">
        <div class="page-body">
            <header>
                <div class="main_header header_transparent header-mobile-m">
                    <div class="header_container sticky-header">
                        <div class="container-fluid">
                            <div class="row align-items-center">
                                <div class="col-lg-2">
                                    <div class="logo">
                                        <a href="home"><img src="images/SEN.jpg" alt="" style="width: 100px;"></a>
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <!-- main-menu starts -->
                                    <div class="main_menu menu_two menu_position">
                                        <nav>
                                            <ul>
                                                <li><a href="refine?cid_refine=0">Shopping</a></li>
                                                <li><a href="aboutus">About Us</a></li>
                                                <li><a href="contact" style="color:#f6692a ">Contact Us</a></li>
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
            <div id="menu-overlay" class=""></div>
            <div class="breadcrumb_background" style=" background-image: url('images/bgk.jsp');">


            </div>
            <div class="page_contact">
                <div class="container">
                    <div class="row">

                        <div class="col-lg-6 col-md-12 col-sm-12 col-xs-12 ">
                            <div class="left_contact">
                                <span class="des_contact">Please fill in the message content in the form below and send it to us</span>
                                <div id="pagelogin" >
                                    <form   accept-charset="UTF-8"><input
                                            name="FormType" type="hidden" value="contact" /><input name="utf8" type="hidden"
                                            value="true" /><input type="hidden" id="Token-a800b26a361b41a1ae87368c7335bdbe"
                                            name="Token" />
                                        <script
                                        src="https://www.google.com/recaptcha/api.js?render=6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK"></script>
                                        <script>grecaptcha.ready(function () {
                                                grecaptcha.execute("6Ldtu4IUAAAAAMQzG1gCw3wFlx_GytlZyLrXcsuK", {action: "contact"}).then(function (token) {
                                                    document.getElementById("Token-a800b26a361b41a1ae87368c7335bdbe").value = token
                                                });
                                            });</script>


                                        <div class="form-signup clearfix" id="contact"F>
                                            <div class="row group_contact">
                                                <fieldset class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label>Name </label>
                                                    <input placeholder="Họ và tên*" type="text"
                                                           class="form-control  form-control-lg" required value=""
                                                           id="fullNameContact">
                                                </fieldset>
                                                <fieldset class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label>Email </label>
                                                    <input placeholder="Email*" type="email"
                                                           pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required
                                                           id="emailContact" class="form-control form-control-lg" value=""
                                                           >
                                                </fieldset>
                                                <fieldset class="form-group col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <label>Content </label>
                                                    <textarea placeholder="Nội dung*"  id="commentContact"
                                                              class="form-control content-area form-control-lg" rows="5"
                                                              Required></textarea>
                                                </fieldset>
                                                <c:if test="${requestScope.check == 'success'}">
                                                    <div>
                                                        <span class="des_contact" style='color: green;'>${requestScope.message}</span>
                                                    </div>
                                                </c:if>
                                                <c:if test="${requestScope.check == 'fail'}">
                                                    <div>
                                                        <span class="des_contact" style='color: red;'>${requestScope.message}</span>
                                                    </div>
                                                </c:if>
                                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <button type="button" onclick="submitForm()" class="btn btn-primary btn-lienhe">Send</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-12">
                            <div class="right_contact">
                                <div class="single_contact">
                                    <div class="contact-icon">
                                        <i class="fa fa-phone"></i>
                                    </div>
                                    <div class="content-contact">
                                        <a href="tel:19006750">1900 100 có đâu</a>
                                    </div>
                                </div>
                                <div class="single_contact">
                                    <div class="contact-icon">
                                        <i class="fa fa-envelope"></i>
                                    </div>
                                    <div class="content-contact">
                                        <a href="mailto:daom28659@gmail.com">daom28659@gmail.com</a>
                                    </div>
                                </div>
                                <div class="single_contact">
                                    <div class="contact-icon">
                                        <i class="fa fa-map-marker-alt"></i>
                                    </div>
                                    <div class="content-contact">
                                        <span>
                                            No address for find look in the map
                                        </span>
                                    </div>
                                </div>

                                <div class="iFrameMap">
                                    <div id="contact_map" class="map">
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.2038028904467!2d105.594123!3d21.014929!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abb938a24e59%3A0x862f3dbd2de1f14b!2sFPT%20University%20Hanoi%20Campus%20-%20Ho%20Lac%20Hi-Tech%20Park!5e0!3m2!1sen!2s!4v1703229023591!5m2!1sen!2s

                                                " width="330" height="200" style="border:1px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">

                                        </iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
           
        </script>
    </body>
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
</html>
