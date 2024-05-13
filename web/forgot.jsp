<%-- 
    Document   : forgot
    Created on : Dec 30, 2023, 9:21:53 PM
    Author     : lvhho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Forgot</title>
    
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    
        <link rel="stylesheet" href="css/style_1.css">

        <style>
               .fxt-bg-color {
            background-image: url('images/login.jpg');
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
        }

        .fxt-form i {
            color: white;
        }
        </style>
    </head>



    <body>
        <section class="fxt-template-animation fxt-template-layout1">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-6 col-12 fxt-bg-color">
                        <div class="fxt-content">
                            <div class="fxt-header">
                          

                                <div class="fxt-page-switcher">
                                    <a href="login" class="switcher-text1">Login</a>
                                    <a href="register" class="switcher-text1">Signup</a>
                                </div>
                                <p style="color:white">Enter your email to take reset password code</p>
                            </div>
                            <div class="fxt-form">
                                <h2 style="color: red">Forgot Password</h2>
                                <c:if test="${requestScope.check == null}">
                                  
                                </c:if>
                                <c:if test="${requestScope.check != null}">
                                    <c:if test="${requestScope.check == 'true' && !(requestScope.message == 'Sorry, reset code incorrect')}">
                                        <p style="color: green">${requestScope.message}</p>
                                    </c:if>
                                    <c:if test="${requestScope.check == 'false'}">
                                        <p style="color: red">${requestScope.message}</p>
                                    </c:if>
                                    <c:if test="${requestScope.check == 'true' && requestScope.message == 'Sorry, reset code incorrect'}">
                                        <p style="color: red">${requestScope.message}</p>
                                    </c:if>
                                </c:if>
                                <form action="forgot" method="post">
                                    <c:if test="${requestScope.check == null || requestScope.check == 'false'}">
                                        <div class="form-group">
                                            <div class="fxt-transformY-50 fxt-transition-delay-1">
                                                <input type="email" class="form-control" name="email" placeholder="Email Address" required="required" value="${requestScope.email}">
                                                <i class="flaticon-envelope"></i>
                                            </div>
                                        </div>
                                    </c:if>
                                    <c:if test="${requestScope.check == null || requestScope.check == 'false'}">
                                        <div class="form-group">
                                            <div class="fxt-transformY-50 fxt-transition-delay-2">
                                                <button type="submit" class="fxt-btn-fill">Send Me Email</button>
                                            </div>
                                        </div>
                                    </c:if>
                                </form>

                                <c:if test="${requestScope.check != null && requestScope.check == 'true'}">
                                    <form action="confirmresetcode" method="post">
                                        <input name="email" value="${requestScope.email}" type="hidden">
                                        <div class="form-group">
                                            <div class="fxt-transformY-50 fxt-transition-delay-1">
                                                <input type="text" class="form-control" name="resetcode" placeholder="xxxxxx" required="required" value="${requestScope.code}">
                                                <i class="flaticon-envelope"></i>
                                            </div>
                                        </div>
                                        <c:if test="${requestScope.check != null && requestScope.check == 'true'}">
                                            <div class="form-group">
                                                <div class="fxt-transformY-50 fxt-transition-delay-2">
                                                    <button type="submit" class="fxt-btn-fill">Confirm Reset Code</button>
                                                </div>
                                            </div>
                                        </c:if>
                                    </form>
                                </c:if>
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
        </section>
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/imagesloaded.pkgd.min.js"></script>
        <script src="js/validator.min.js"></script>
        <script src="js/main_1.js"></script>
    </body>
</html>

