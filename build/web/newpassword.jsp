<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Login Form</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
   
    <link rel="stylesheet" href="css/style_1.css">
    <style>
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
        .fxt-template-layout1 .fxt-header {
            margin-bottom: 0;
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
             
                        </div>
                        <div class="fxt-form">
                            <h2 style="color: red">Choose a new password</h2>
                            <p id="rule" style="font-size: 14px">A strong password is a combination of letters and punctuation marks. Its must be at least 6 characters long.</p>
                            <form id="f1" action="confirmpass" method="post">
                                <input name="userName" value="${requestScope.uName}" type="hidden">
                                <div class="form-group">
                                    <div class="fxt-transformY-50 fxt-transition-delay-2">
                                        <input oninput="checkNumberCharacter(this)" id="pass1" type="password" class="form-control" name="password" placeholder="${requestScope.check == null ? 'Password' : 'New password'}" required value="${uPass}">
                                        <i id="iconsee" style="cursor: pointer" onclick="changeIcon(this)" class="fa-solid fa-eye-slash"></i>
                                    </div>
                                   <label style="color: red; display:none ; font-size: 14px" class="mb-1" id="text"></label>
                                </div>
                                <div class="form-group">
                                    <div class="fxt-transformY-50 fxt-transition-delay-2">
                                        <input oninput="checkSame(this)" id="pass2" type="password" class="form-control" name="cfpassword" placeholder="${requestScope.check == null ? 'Confirm Password' : 'Confirm new password'}" required value="${uPass}">
                                        <i id="iconsee" style="cursor: pointer" onclick="changeIcon(this)" class="fa-solid fa-eye-slash"></i>
                                    </div>
                                    <label style="color: red; display:none ; font-size: 14px" class="mb-1" id="text"></label>
                                </div>
                                <div class="form-group">
                                    <div class="fxt-transformY-50 fxt-transition-delay-3">
                                        <div class="fxt-content-between">
                                            <button id="buttionsubmit" type="button" onclick="checkPass()" class="fxt-btn-fill">Continue</button>
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
                                                    var id = obj.previousSibling.previousSibling.id;

                                                    var inputP = document.getElementById(id);
                                                    if (obj.className == 'fa-solid fa-eye-slash') {
                                                        obj.className = 'fa-solid fa-eye';
                                                        inputP.type = 'text';
                                                    } else {
                                                        obj.className = 'fa-solid fa-eye-slash';
                                                        inputP.type = 'password';
                                                    }
                                                }

                                                function checkSame(obj) {
                                                    var text = document.getElementById("text1");
                                                    if (text.style.display == 'none') {
                                                        var a = document.getElementById("pass1");
                                                        if (obj.value !== a.value) {
                                                            var text = document.getElementById("text");
                                                            text.style.display = "block";
                                                            text.textContent = "New password does not match. Please re-enter your new password here.";
                                                        } else {
                                                            var text = document.getElementById("text");
                                                            text.style.display = "none";
                                                        }
                                                    }
                                                }

                                                function checkNumberCharacter(obj) {
                                                    var a = document.getElementById("pass1");
                                                    if (obj.value.length <= 5) {
                                                        var text = document.getElementById("text1");
                                                        text.style.display = "block";
                                                        text.textContent = "This password should have more than 6 characters and be difficult for others to guess.";
                                                    } else {
                                                        var text = document.getElementById("text1");
                                                        text.style.display = "none";
                                                    }
                                                }

                                                function checkPass() {
                                                    var a = document.getElementById("pass1").value;
                                                    var b = document.getElementById("pass2").value;
                                                    if (a == b && a.length > 5) {
                                                        document.getElementById("f1").submit();
                                                    } else {
                                                        document.getElementById("rule").style.color = "red";
                                                    }
                                                }
    </script>
</body>


</html>