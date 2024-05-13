<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Laptop Super Star</title>
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
        <style>

            .responsiveFacets_sectionItemLabel:hover {
                cursor: pointer;
                background-color: rgba(28, 29, 24, 0.2);
            }

            .responsiveFacets_sectionItem:hover {
                cursor: pointer;
            }

        </style>
    </head>

    <body>

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
                                            <li><a href="contact">Contact Us</a></li>
                                                <c:if test="${sessionScope.account==null}">
                                                <li>
                                                    <a href="#">User <i class="fa fa-angle-down"></i></a>
                                                    <ul class="sub_menu pages">
                                                        <li><a href="login">Login</a></li>
                                                        <li><a href="register">Register</a></li>
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


        <!-- slider section starts  -->
        <section class="slider_section slider_section mb-66" style="margin-bottom: 0px">
            <div class="slider_area owl-carousel">
                <div class="single_slider d-flex align-items-center" style="background: url('images/bgk.jpg'); background-repeat: no-repeat; background-size: cover; background-position: center center; max-height: 400px;">

                </div>
                <%-- Anh backgroud thi de day --%>
            </div>
        </section>


        <!-- product area starts -->

        <div class="product_area product_area_two mb-65">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="section_title">
                            <h2 class=text-shadow" style="font-size: 20px;"><span class="ani-fire">New Products 2024</span></h2>
                            <div class="product_tab_btn">

                            </div>
                        </div>
                    </div>
                </div>
                <div  class="tab-content">
                    <div class="tab-pane fade show active" id="Men" role="tabpanel">
                        <div class="row">
                            <div  class="product_carousel product_column4 owl-carousel">
                                <c:forEach items="${requestScope.productsYear}" var="p">
                                    <div class="col-lg-3">
                                        <article class="single_product">
                                            <figure>
                                                <div class="product_container">
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <div class="img_container">
                                                                <img src="${p.image[0]}" alt="">
                                                            </div>
                                                        </a>


                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart" 
                                                                    onclick="openModal('modal_box',${p.id}, '${p.image[0]}', '${p.image[1]}',
                                                                                    '${p.name}',${p.salePrice},${p.price}, '${p.describe}', '${p.classifyStr}',
                                                                                    '${p.supplier.getCompanyName()}')"">
                                                                    <a href="#" data-toggle="modal" data-target="#modal_box" title="Add to Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="wishlist">
                                                                    <a href="#" onclick="toggleWishlist(${p.id})" title="Add to Wishlist">
                                                                        <i style="color: #f6692a" class="fa-solid fa-heart"></i>
                                                                    </a>
                                                                </li>
                                                                
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <figcaption class="product_content">
                                                        <h4 class="product_name ani-fire" style="">
                                                            <a href="#">${p.name}</a>
                                                        </h4>
                                                        
                                                         <div class="product_rating">
                                                            <ul>
                                                                <c:set var="numstar" value="${p.starRating}"/>
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
                                                            <c:if test="${p.price != p.salePrice}">
                                                                <span class="old_price" id="oldprice">Rs. ${p.price}</span>
                                                            </c:if>
                                                            <span class="current_price ani-fire">Rs. ${p.salePrice}
                                                            </span>
                                                        </div>
                                                       
                                                    </figcaption>
                                                </div>
                                            </figure>
                                        </article>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="home_section_two color_two mb-70">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-12">
                        <div class="home_section_left">
                            <!-- deals product area starts -->

                            <div class="deals_product_area mb-68">
                                <div class="section_title section_title_style2">
                                    <h2><span class="ani-fire">Hot Deals</span></h2>
                                    <i style="color: orangered; font-size: 22px; margin-left:5px" class="fa-solid fa-fire"></i>
                                </div>
                                <div class="row">
                                    <div class="deals_carousel product_column1 owl-carousel">
                                        <c:set var="hotDeal" value="${requestScope.hotDeal}"/>
                                        <div class="col-lg-3">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="${hotDeal.image[0]}" alt="">
                                                        </a>
                                                       
                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart"
                                                                    onclick="openModal('modal_box', ${hotDeal.id}, '${hotDeal.image[0]}', '${hotDeal.image[1]}',
                                                                                    '${hotDeal.name}',${hotDeal.salePrice},${hotDeal.price}, '${hotDeal.describe}', '${hotDeal.classifyStr}',
                                                                                    '${hotDeal.supplier.getCompanyName()}')"
                                                                    >
                                                                    <a href="#" data-toggle="modal" data-target="#modal_box" title="Add to Cart">
                                                                        <i class="fa fa-shopping-cart"></i>
                                                                    </a>
                                                                </li>
                                                                <li class="wishlist">
                                                                    <a href="#" onclick="toggleWishlist(${hotDeal.id})" title="Add to Wishlist">
                                                                        <i style="color: #f6692a" class="fa-solid fa-heart"></i>
                                                                    </a>
                                                                </li>
                                                                
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <figcaption class="product_content">
                                                        <!-- for deals timing -->
                                                     
                                                        <h4 class="product_name ani-fire">
                                                            <a href="#">${hotDeal.name}</a>
                                                        </h4>

                                                        <div class="price_box">
                                                            <span class="old_price">Rs.${hotDeal.price}
                                                            </span>
                                                            <span class="current_price ani-fire">Rs.${hotDeal.salePrice}</span>
                                                        </div>
                                                        <div class="product_rating">
                                                            <ul>
                                                                <c:set var="numstar" value="${starRating}"/>
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
                                                                            <a href="#" style="color: orange">
                                                                                <i class="fa fa-star"></i>
                                                                            </a>
                                                                        </li>
                                                                    </c:forEach>
                                                                </c:if>
                                                            </ul>
                                                        </div>
                                                   

                                                    </figcaption>
                                                </figure>
                                            </article>
                                        </div>  
                                    </div>
                                </div>
                            </div>

                            <!-- deals product area ends -->

                            <!-- small product area starts -->
                                <div class="small_product_area mb-68">
                                <div class="section_title section_title_style2">
                                    <h2>Giftset</h2>
                                </div>
                                <div class="small_product_container sidebar_product_column1 owl-carousel">
                                    <c:set var="breakLoop" value="false" />
                                    <c:forEach var= "j" begin="1" end="2" step="1" >
                                        <c:set var="count" value="0" />
                                        <div class="small_product_list">
                                            <c:if test="${breakLoop == true}">
                                                <c:set var="count" value="5"/>
                                            </c:if>
                                            <c:forEach items="${requestScope.giftSets}" var="giftSet" varStatus="status" >
                                                <c:if test="${(not breakLoop && count < 4) || (breakLoop && 4 < count && count < 8)}">
                                                    <c:if test="${count == status.index}">
                                                        <article class="single_product" data-toggle="modal" data-target="#modal_box">
                                                            <figure 
                                                                onclick="openModal('modal_box', ${giftSet.id}, '${giftSet.image[0]}', '${giftSet.image[1]}',
                                                                                '${giftSet.name}',${giftSet.salePrice},${giftSet.price}, '${giftSet.describe}', '${giftSet.classifyStr}',
                                                                                '${giftSet.supplier.getCompanyName()}')">
                                                                <div class="product_thumb">
                                                                    <a href="#" class="primary_img">
                                                                        <img src="${giftSet.image[0]}" alt="">
                                                                    </a>
                                                                    
                                                                </div>
                                                                <figcaption class="product_content">
                                                                    <h4 class="product_name">
                                                                        <a href="#">${giftSet.name}</a>
                                                                    </h4>
                                                                    <div class="product_rating">
                                                                        <ul>
                                                                            <c:set var="numstar" value="${giftSet.starRating}"/>
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
                                                                        <span class="current_price">Rs. ${giftSet.salePrice}</span>
                                                                    </div>
                                                                </figcaption>
                                                            </figure>
                                                        </article>
                                                        <c:set var="count" value="${count + 1}" />
                                                    </c:if>
                                                    <c:if test="${count == 4}">
                                                        <c:set var="breakLoop" value="true" />
                                                    </c:if>
                                                </c:if>

                                            </c:forEach>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>


                            <c:set var="cat" value="${requestScope.category}"/>
                            <div class="testimonial_style_two mb-60 rightleft">
                                <div class="testimonial_container">
                                    <div class="section_title section_title_style2">
                                        <h2 style="font-size: 20px">Brand</h2>
                                    </div>
                                    <form id="f3" action="refine" method="get">
                                        <div class="" style="margin: 0">
                                            <h2 style="font-size: 16px;"></h2>
                                            <fieldset class="responsiveFacets_sectionContent " aria-hidden="false">
                                                <div href="#" class="responsiveFacets_sectionItemLabel" onclick="pageRefine(0)">
                                                    <label class="responsiveFacets_sectionItem" for="brand">
                                                        ALL (${listAll.size()})
                                                    </label>
                                                </div>
                                                <c:forEach begin="0" end="${cat.size()-1}" var="i">
                                                    <div class="responsiveFacets_sectionItemLabel" onclick="pageRefine(${i + 1})">
                                                        <label href="#" class="responsiveFacets_sectionItem" for="brand" >
                                                            ${cat.get(i).name} (${cat.get(i).getTotalProduct()})
                                                        </label>
                                                    </div>
                                                </c:forEach>
                                            </fieldset>
                                        </div>
                                        <input type="hidden" value="" name="cid_refine" id="submitt">
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="col-lg-9 col-md-12">
                        <div class="home_section_right">
                            <!-- product area starts  -->

                            <div class="product_area mb-65">
                                <div class="section_title section_title_style2">
                                    <h2>TOP 5 BEST SELLERS</h2>
                                </div>
                                <div class="row">
                                    <div class="product_carousel product_column3 owl-carousel">
                                        <c:forEach items="${requestScope.productsTopSellers}" var="t">
                                            <div class="col-lg-3">
                                                <article class="single_product">
                                                    <figure>
                                                        <div class="product_thumb">
                                                            <a href="#" class="primary_img">
                                                                <img src="${t.image[0]}" alt="">
                                                            </a>


                                                            <div class="action_links">
                                                                <ul>
                                                                    <li class="add_to_cart"
                                                                        onclick="openModal('modal_box',${t.id}, '${t.image[0]}', '${t.image[1]}',
                                                                                        '${t.name}',${t.salePrice},${t.price}, '${t.describe}', '${t.classifyStr}',
                                                                                        '${t.supplier.getCompanyName()}')">
                                                                        <a href="#" data-toggle="modal" data-target="#modal_box" title="Add to Cart">
                                                                            <i class="fa fa-shopping-cart"></i>
                                                                        </a>
                                                                    </li>
                                                                    <li class="wishlist">
                                                                        <a href="#" onclick="toggleWishlist(${t.id})" title="Add to Wishlist">
                                                                            <i style="color: #f6692a" class="fa-solid fa-heart"></i>
                                                                        </a>
                                                                    </li>
                                                                   
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <figcaption class="product_content">
                                                            <h4 class="product_name ani-fire">
                                                                <a href="#">${t.name} </a>
                                                            </h4>
                                                            
                                                            <div class="${t.starRating}">
                                                                <ul style="display: flex">
                                                                    <c:set var="numstar" value="${t.starRating}"/>
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
                                                                <span class="old_price">Rs. ${t.price}</span>
                                                                <span class="current_price ani-fire">Rs.${t.salePrice}</span>
                                                            </div>
                                                            
                                                            
                                                        </figcaption>
                                                    </figure>
                                                </article>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>

                            <!-- product area ends -->

                            <!-- Long banner area starts  -->
                            <div class="Sale" style="margin-top: 40px">
                            <img src="images/Sale.png" alt="">
                            <!-- Long Banner area ends -->
                            </div>
                            <!-- product section starts  -->
                            <div class="product_area" >
                                <div class="section_title section_title_style2">
                                    <h2>On Sale</h2>
                                </div>

                                <c:set var="page" value="${requestScope.page}" />

                                <div class="pagination">
                                    <c:if test="${page != 1}">
                                        <a class="page-item" href="home?page=${page-1}">Previous</a>
                                    </c:if>

                                    <c:forEach begin="1" end="${requestScope.numberpage}" var="i">
                                        <a class="${page==i?"page-item activee":""}" 
                                           style="${page==i?"background-color:black; color: white; font-size: 22px; float: left; padding: 8px 16px; text-decoration: none;":""}" 
                                           href="home?page=${i}" class="page-link">${i}</a>
                                    </c:forEach>

                                    <c:if test="${page < requestScope.numberpage}">
                                        <a class="page-item" href="home?page=${page+1}" class="page-link">Next</a>
                                    </c:if>
                                </div>

                                <div id="contentt" class="row">
                                    <c:set var="proA" value=""/>
                                    <c:forEach items="${requestScope.productPage}" var="i">
                                        <div class="product_items col-lg-4" style="margin: 30px 0">
                                            <article class="single_product">
                                                <figure>
                                                    <div class="product_thumb">
                                                        <a href="#" class="primary_img">
                                                            <img src="${i.image[0]}" alt="">
                                                        </a>


                                                        <div class="action_links">
                                                            <ul>
                                                                <li class="add_to_cart"
                                                                    onclick="openModal('modal_box',${i.id}, '${i.image[0]}', '${i.image[1]}',
                                                                                    '${i.name}',${i.salePrice},${i.price}, '${i.describe}', '${i.classifyStr}',
                                                                                    '${i.supplier.getCompanyName()}')">
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
                                                        <h4 class="product_name ani-fire">
                                                            <a href="#">${i.name}</a>
                                                        </h4>
                                                        <div class="product_rating">
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
                                                            <span class="current_price ani-fire">Rs. ${i.salePrice}</span>
                                                        </div>
                                                    </figcaption>
                                                </figure>
                                            </article>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

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
                        <script src="js/clickevents.js"></script>
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-nice-select/1.1.0/js/jquery.nice-select.min.js"></script>
                        <script src="js/main.js"></script>
                        <script type="text/javascript">
                                                                        function submitEmail() {
                                                                            var text = document.querySelector("#emailDiscount").value;
                                                                            $.ajax({
                                                                                url: "/PefumeMN-Website/email",
                                                                                type: "get",
                                                                                data: {
                                                                                    txt: text
                                                                                },
                                                                                success: function (data) {
                                                                                    var row = document.getElementById("newsletter");
                                                                                    row.innerHTML = data;
                                                                                },
                                                                                error: function (xhr) {
                                                                                }
                                                                            });
                                                                        }
                        </script>
                        

                        </body>

                        </html>