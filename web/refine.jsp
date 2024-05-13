<%-- 
    Document   : refine
    Created on : Dec 20, 2023, 7:55:37 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Laptop Super Star</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/assets/owl.carousel.min.css">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/css/nice-select.min.css">
        <link rel="stylesheet" href="css/style.css">
        <style>
            li a:hover {
                color: #f6692a;
            }
            ul li a.active {
                color: #f6692a;
            }

            .li_header {
                color: white;
                margin-left: 50px;
                font-size: 18px;
            }

            .submit-price {
                font-size: 16px;
                background-color: black;
                color: white;
                font-weight: 600;
                padding: 5px 40px;
                border-radius: 20px;
                margin: 10px 0 20px
            }

            .submit-price:hover {
                background-color: rgba(0,0,0,0.3);
                color: black;
                font-weight: 600;
            }
        </style>
    </head>
    <body>
        <header>
            <div class="main_header header_transparent header-mobile-m">
                <div class="header_container sticky-header" style="padding: 0">
                    <div class="container-fluid" style="background-color: black">
                        <div class="row align-items-center" style="padding: 8px 0">
                            <div class="col-lg-3">
                                <div class="logo">
                                    <a href="home"><img src="images/SEN.jpg" alt="" style="width: 100px;"></a>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <form action="refine" method="get" style="display: flex; justify-content: center">
                                    <input value="${requestScope.searchAtHome != null ? requestScope.searchAtHome : ""}" name="nameSearch" type="text" placeholder="Search your laptop" style="width: 60%; padding: 4px 10px; border-radius: 15px">
                                    <button type="submit" style="border-radius: 50%; width: 40px; font-size: 18px;"><i class="fa fa-search"></i></button>
                                </form>
                            </div>

                            <div class="col-lg-3">
                                <%@ include file="header_right.jsp" %> 
                            </div>
                        </div>
                        <div class="row" style="justify-content: flex-start; padding: 10px 0"">
                            <ul style="display: flex; margin-left: 600px;">
                                <li class="li_header"  >
                                    <a class="${cid_refine==0?"active":""}" href="refine?cid=${0}">ALL
                                    </a>
                                </li>
                                <c:forEach items="${requestScope.category}" var="c">
                                    <li class="li_header">
                                        <a class="${c.id==cid_refine?"active":""}" href="refine?cid_refine=${c.id}">
                                            ${c.name}
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="home_section_two color_two mb-70" style="margin-top: 100px; margin-bottom: 50px">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-12">
                        <div class="home_section_left">
                            <!-- testimonial section starts  -->
                            <c:set var="cat" value="${requestScope.category}"/>
                            <div class="testimonial_style_two mb-60 rightleft">
                                <div class="testimonial_container">
                                    <div class="section_title section_title_style2">
                                        <h2 style="font-size: 20px">Filter</h2>
                                        <i style="font-size: 18px; margin-left: 5px" class="fa fa-filter"></i>
                                    </div>
                                    <form id="f1" action="refine" method="get">
                                        <div class="section_title section_title_style2">
                                            <h2 style="font-size: 16px;">Brand</h2>
                                            <fieldset class="responsiveFacets_sectionContent " aria-hidden="false">
                                                <div class="responsiveFacets_sectionItemLabel">
                                                    <input type="checkbox" class="responsiveFacets_sectionItemCheckbox" 
                                                           ${chid[0]?"checked":""} 
                                                           id="c0" 
                                                           name="cid_refinee"
                                                           value="${0}" onclick="setCheck(this)">
                                                    <label class="responsiveFacets_sectionItem" for="brand">
                                                         (${allproduct.size()})
                                                    </label>
                                                </div>
                                                <c:if test="${cat!=null}">
                                                    <c:forEach begin="0" end="${cat.size()-1}" var="i">
                                                        <div class="responsiveFacets_sectionItemLabel">
                                                            <input
                                                                type="checkbox"
                                                                ${cat.get(i).getId()==cid_refine?"checked":""}
                                                                class="responsiveFacets_sectionItemCheckbox"
                                                                id="cm" 
                                                                name="cid_refinee"
                                                                value="${cat.get(i).getId()}"
                                                                ${chid[i+1]?"checked":""}
                                                                onclick="setCheck(this)"/>
                                                            <label class="responsiveFacets_sectionItem" for="brand" >
                                                                ${cat.get(i).name} (${cat.get(i).getTotalProduct()})
                                                            </label>
                                                        </div>
                                                    </c:forEach>
                                                </c:if>
                                            </fieldset>
                                        </div>
                                        
                                        <div class="section_title section_title_style2">
                                            <h2 style="font-size: 16px">Price</h2>
                                            <fieldset class="responsiveFacets_sectionContent " aria-hidden="false">
                                                <div class="shopee-filter-group__body shopee-price-range-filter__edit">
                                                    <div class="shopee-price-range-filter__inputs" style="margin: 1.25rem 2px 0.625rem;
                                                         display: flex;
                                                         justify-content: space-between;
                                                         align-items: center;
                                                         padding-right: 30px">
                                                        <input type="number" style="width: 90px" name="pricefrom" class="shopee-price-range-filter__input" placeholder="$ FROM" value="${price1 == 0 ? "$ FROM" : price1}" step="0.5" min=1>
                                                        <div class="shopee-price-range-filter__range-line" style="
                                                             flex: 1;
                                                             height: 1px;
                                                             background: #bdbdbd;
                                                             margin: 0 10px;">
                                                        </div>
                                                        <input type="number" style="width: 90px" name="priceto" class="shopee-price-range-filter__input" placeholder="$ TO" value="${price2 == 0 ? "" : price2}" step="0.5" min=1">
                                                    </div>
                                                    <button class="submit-price" style="">Search</button>
                                                </div>
                                            </fieldset>
                                        </div>
                                        
                                    </form>
                                </div>
                            </div>
                            <!-- testimonial section ends -->
                        </div>
                    </div>

                    <div class="col-lg-9 col-md-12">
                        <div class="home_section_right">
                            <div class="product_area" >
                                <div class="section_title_style2" style="margin-top: 50px">         
                                </div>
                                <c:set var="page" value="${requestScope.page}"/>

                                <div id ="contentt" class="row">
                                    <c:set var="proA" value=""/>
                                    <c:forEach items="${requestScope.productPage}" var="i">
                                        <div class="product_items col-lg-3" style="margin: 30px 0">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="${i.image[0]}" alt="">
                                                        </a>
                                                        <a href="#" class="secondary_img">
                                                            <img src="${i.image[1]}" alt="">
                                                        </a>
                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart" 
                                                                    onclick="openModal('modal_box',${i.id}, '${i.image[0]}', '${i.image[1]}',
                                                                                    '${i.name}',${i.salePrice},${i.price}, '${i.describe}', '${i.classifyStr}',
                                                                                    '${i.supplier.getCompanyName()}')" >
                                                                    <a href="#" data-toggle="modal" data-target="#modal_box" title="Add to Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="wishlist">
                                                                    <a href="#" onclick="toggleWishlist(${i.id})" title="Add to Wishlist">
                                                                        <i style="color: #f6692a" class="fa-solid fa-heart"></i>
                                                                    </a>
                                                                </li>
                                                               
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <figcaption class="product_content">
                                                        <h4 class="product_name">
                                                            <a href="#">${i.name}</a>
                                                        </h4>
                                                        <div class="product_rating" style="width: 100%;">
                                                            <ul>
                                                                <c:set var="numstar" value="${i.starRating}"/>
                                                                <c:forEach begin="1" end="${numstar}" step="1">
                                                                    <li>
                                                                        <a href="#" style="color: orange">
                                                                            <i class="fa fa-star"></i>
                                                                        </a>
                                                                    </li>
                                                                </c:forEach>
                                                                <c:if test="${numstar != 5}">
                                                                    <c:forEach begin="${numstar + 1}" end="5" step="1">
                                                                        <li>
                                                                            <a href="#" style="color: black">
                                                                                <i class="fa fa-star"></i>
                                                                            </a>
                                                                        </li>
                                                                    </c:forEach>
                                                                </c:if>
                                                            </ul>
                                                        </div>
                                                        <div class="price_box">
                                                            <c:if test="${i.price != i.salePrice}">
                                                                <span class="old_price">Rs. ${i.price}</span>
                                                            </c:if>
                                                            <span class="current_price">Rs. ${i.salePrice}</span>
                                                        </div>
                                                    </figcaption>
                                                </figure>
                                            </article>
                                        </div>
                                    </c:forEach>
                                </div>

                                <div class="pagination col-md-12" style="margin-top: 20px; display: flex; justify-content: center">
                                    <c:if test="${requestScope.cid_refinee == null}">
                                        <c:forEach begin="${1}" end="${requestScope.numberpage}" var="i">
                                            <a href="refine?page=${i}">${i}</a>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${requestScope.cid_refinee != null}">
                                        <c:forEach begin="${1}" end="${requestScope.numberpage}" var="i"> 
                                            <a href="refine?${stringForLink}&numberStar=${numberStar}&pricefrom=${price1}&priceto=${price2}&discount=${discount}&page=${i}">${i}</a>
                                        </c:forEach>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- product section ends -->
            </div>
        </div>

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
        <div class="modal fade" id="modal_box" role="dialog"></div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>   
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.2.1/owl.carousel.min.js"></script>
        <script src="js/countdown.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
        <script src="js/clickevents.js"></script>
        <!--<script src="js/main.js"></script>-->
        <script type="text/javascript">
                                                                    


                                                                        function setCheck(obj) {
                                                                            var fries = document.getElementsByName('cid_refinee');
                                                                            if ((obj.id == 'c0') && (fries[0].checked) == true) {
                                                                                for (var i = 1; i < fries.length; i++) {
                                                                                    fries[i].checked = false;
                                                                                }
                                                                            } else {
                                                                                for (var i = 1; i < fries.length; i++) {
                                                                                    if (fries[i].checked == true) {
                                                                                        fries[0].checked = false;
                                                                                        break;
                                                                                    }
                                                                                }
                                                                            }
                                                                            document.getElementById('f1').submit();
                                                                        }


                                                                        function setCheckStar(obj) {
                                                                            var fries = document.getElementsByName('cid_refinee');
                                                                            if ((obj.id == 'c0') && (fries[0].checked) == true) {
                                                                                for (var i = 1; i < fries.length; i++) {
                                                                                    fries[i].checked = false;
                                                                                }
                                                                            } else {
                                                                                for (var i = 1; i < fries.length; i++) {
                                                                                    if (fries[i].checked == true) {
                                                                                        fries[0].checked = false;
                                                                                        break;
                                                                                    }
                                                                                }
                                                                            }
                                                                            document.getElementById('f1').submit();
                                                                        }

                                                                      

                                                                        function searchByName() {
                                                                            // Gọi phương thức searchByName khi có sự kiện oninput
                                                                            var searchText = document.getElementById("searchId").value;
                                                                            // Thực hiện các thao tác khác nếu cần
                                                                        }


        </script>
    </body>
</html>
