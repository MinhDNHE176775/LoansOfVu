<!doctype html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Login Form</title>
 
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="css/style_1.css">
    <style>

        * {
            box-sizing: border-box;
        }
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
        }
        i[id='iconsee']:hover {
            color: rgba(0, 0, 0, 0.5);           
        }
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
                    <div class="fxt-content" >
                        <div class="fxt-header" style="margin-bottom: 15px">

                            <div class="fxt-page-switcher">
                                <a href="login" class="switcher-text1 active">Login</a>
                                <a href="register" class="switcher-text1">Sign Up</a>
                            </div>
                        </div>
                        <div class="fxt-form">
                            <h2 style="color: red">Login</h2>

                            <h5 style="color: red">${requestScope.error}</h5>
                            <h5 style="color: greenyellow">${requestScope.successfully}</h5>
                            <form action="login" method="post">
                                <div class="form-group">
                                    <div class="fxt-transformY-50 fxt-transition-delay-1">
                                        <input type="text" class="form-control" name="username" placeholder="UserName" required value="${requestScope.uName} ">
                                        <i class="fa-solid fa-user"></i>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="fxt-transformY-50 fxt-transition-delay-2">
                                        <input id="pass" type="${requestScope.check == null ? 'password' : 'text'}" class="form-control" name="password" placeholder="${requestScope.check == null ? 'Password' : 'Enter new pass word'}" required value="${uPass}">
                                        <i id="iconsee" style="cursor: pointer" onclick="changeIcon(this)" class="fa-solid fa-eye-slash"></i>
                                    </div>
                                </div>
                                <div class="fxt-transformY-50 fxt-transition-delay-2" style="display: flex; justify-content: space-between">
                                    <div>
                                        <input ${reMem==null?"":"checked"} id="remember" type="checkbox" name="remember" style=";margin-right: 6px; width: 15px; height: 15px">
                                        <label style="font-size: 15px" for="remember">Remember me</label>
                                    </div>
                                    <div>
                                        <a style="color: black" href="forgot" class="switcher-text2">Forgot Password</a>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="fxt-transformY-50 fxt-transition-delay-3">
                                        <div class="fxt-content-between">
                                            <button type="submit" class="fxt-btn-fill">Log in</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
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
    <script>
                                            function changeIcon(obj) {
                                                var inputP = document.querySelector("#pass");
                                                console.log(inputP)
                                                if (obj.className == 'fa-solid fa-eye-slash') {
                                                    obj.className = 'fa-solid fa-eye';
                                                    inputP.type = 'text';
                                                } else {
                                                    obj.className = 'fa-solid fa-eye-slash';
                                                    inputP.type = 'password';
                                                }
                                            }
    </script>
</body>


</html>