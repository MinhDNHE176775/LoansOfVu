<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Dashboard</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ------>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css">
        <!-- Bootstrap core CSS -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/bootstrap.min.css">
        <!-- Material Design Bootstrap -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb-pro.min.css">
        <!-- Material Design Bootstrap Ecommerce -->
        <link rel="stylesheet" href="https://mdbootstrap.com/previews/ecommerce-demo/css/mdb.ecommerce.min.css">
        <!-- Your custom styles (optional) -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ------>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/> 
        <style>
            body {
                margin: 0;
                padding: 0;
            }
        </style>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"><link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap"><link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/css/mdb5/3.8.1/compiled.min.css"><link rel="stylesheet" type="text/css" href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/css/mdb-plugins-gathered.min.css"><style>body {
                background-color: #fbfbfb;
            }
            @media (min-width: 991.98px) {
                main {
                    padding-left: 240px;
                }
            }

            /* Sidebar */
            .sidebar {
                position: fixed;
                top: 0;
                bottom: 0;
                left: 0;
                padding: 58px 0 0; /* Height of navbar */
                box-shadow: 0 2px 5px 0 rgb(0 0 0 / 5%), 0 2px 10px 0 rgb(0 0 0 / 5%);
                width: 240px;
                z-index: 600;
            }

            @media (max-width: 991.98px) {
                .sidebar {
                    width: 100%;
                }
            }
            .sidebar .active {
                border-radius: 5px;
                box-shadow: 0 2px 5px 0 rgb(0 0 0 / 16%), 0 2px 10px 0 rgb(0 0 0 / 12%);
            }

            .sidebar-sticky {
                position: relative;
                top: 0;
                height: calc(100vh - 48px);
                padding-top: 0.5rem;
                overflow-x: hidden;
                overflow-y: auto; /* Scrollable contents if viewport is shorter than content. */
            }</style>
    </head>
    <body>

        <!--Main Navigation-->
        <header>
            <jsp:include page="leftadmin.jsp"></jsp:include>
            </header>

        <jsp:include page="header_right.jsp"></jsp:include>
            <!--Main Navigation-->
            <main>
                <div class="container pt-4">
                    <!--Section: Statistics with subtitles-->
                    <section>
                        <div class="row" id="total">
                            <div class="col-xl-6 col-md-12 mb-4">
                                <div class="card">
                                    <div style="padding: 10px 15px">

                                        <div class="d-flex flex-row">
                                            <div class="align-self-center">

                                            </div>
                                        </div>
                                        <div style="text-align: end">
                                            <h4 style="color: #1B813A; text-align: left">Total Products In Stock</h4>
                                            <p class="mb-0"></p>
                                            <h2 class="h1 mb-0">${requestScope.countProduct}</h2>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-md-12 mb-4">
                            <div class="card">
                                <div style="padding: 10px 15px">

                                    <div class="d-flex flex-row">
                                        <div class="align-self-center">

                                        </div>
                                    </div>
                                    <div style="text-align: end"> 
                                        <h4 style="color: greenyellow; text-align: left">Number of products sold</h4>
                                        <p class="mb-0"></p>
                                        <h2 class="h1 mb-0">${requestScope.sumquantitySold}</h2> 
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-6 col-md-12 mb-4">
                            <div class="card">
                                <div style="padding: 10px 15px">

                                    <div class="d-flex flex-row">

                                    </div>
                                    <div style="text-align: end">
                                        <h4 style="color: #E94644; text-align: left;">Total Sales</h4>
                                        <p class="mb-0"></p>
                                        <h2 class="h1 mb-0">${requestScope.totalmoneyAll}$</h2>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-md-12 mb-4">
                            <div class="card">
                                <div style="padding: 10px 15px">

                                    <div class="d-flex flex-row">

                                    </div>
                                    <div style="text-align: end">
                                        <h4 style="color: #06439F; text-align: left">Total Users</h4>
                                        <p class="mb-0"></p>
                                        <h2 class="h1 mb-0">${requestScope.countUser}</h2>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xl-6 col-md-12 mb-4">
                            <div class="card">
                                <div style="padding: 10px 15px">

                                    <div class="d-flex flex-row">

                                    </div>
                                    <div style="text-align: end">
                                        <h4 style="color: purple; text-align: left">Total Product Perform</h4>
                                        <p class="mb-0"></p>
                                        <h2 class="h1 mb-0">${requestScope.countTypeProduct}</h2>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-md-12 mb-4">
                            <div class="card">
                                <div style="padding: 10px 15px">

                                    <div class="d-flex flex-row">

                                    </div>
                                    <div style="text-align: end">
                                        <h4 style="color: #1B813A; text-align: left">Total Supplier</h4>
                                        <p class="mb-0"></p>
                                        <h2 class="h1 mb-0">${requestScope.countSupplier}</h2>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                
            </div>
        </main>

        <div class="modal fade" id="modal_box" role="dialog"></div>
        <--<!-- Note Edit prj file in dash board -->
    </body>
</html>