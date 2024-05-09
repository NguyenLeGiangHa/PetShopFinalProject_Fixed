<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/18/2022
  Time: 10:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Pet Shop</title>
    <link nonce="2526c7f26c" rel="icon" type="image/png" href="./assets/images/pet-shop-center-icon_24877-3877.png"/>

    <!-- Font Icon -->
    <link nonce="2526c7f26c" rel="stylesheet" href="./assets/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link nonce="2526c7f26c" rel="stylesheet" href="./assets/css/register.css">
</head>
<body>
    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form method="POST" class="register-form" id="register-form" action="RegisterController">
                            <div class="form-group">
                                <label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="username" id="username" placeholder="Your Name"/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="password" id="pass" placeholder="Password"/>
                            </div>
                            <div class="form-group">
                                <label for="re_pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <span style="color: red" id="message">${message}</span>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signupbtn" class="form-submit" value="Register"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="./assets/images/icons/register.png" alt="sing up image"></figure>
                        <a href="./login.jsp" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- JS -->
    <script nonce="2526c7f26c" src="./assets/vendor/jquery/jquery.min.js"></script>
    <script nonce="2526c7f26c" src="./assets/js/register.js"></script>
    <script nonce="2526c7f26c">
        if(document.getElementById("username").value == "" && document.getElementById("email").value == "" && document.getElementById("pass").value == "" && document.getElementById("re_pass").value == "" && document.getElementById("agree-term").checked == false)
        {
            document.getElementById("signupbtn").disabled = true;
            document.getElementById("signupbtn").style.background = "#cf1a1a";
        }

        document.getElementById('pass').onkeyup=function(){

            var format = /[!@#$%^&*()_+\-=\[\]{}:\\|,.<>\/?]+/;
            var formatAlphabetCap = /[ABCDEFGHIJKLMNOPQRSTUVWXYZ]+/;
            var formatAlphabet = /[abcdefghijklmnopqrstuvwxyz]+/;
            var formatNumber = /[1234567890]+/;
            var pw = document.getElementById("pass").value;


            //check empty password field
            if(pw == "") {
                document.getElementById("message").innerHTML = "**Null value!";
                document.getElementById("signupbtn").disabled = true;
                document.getElementById("signupbtn").style.background = "#cf1a1a";

            }
            else

                //minimum password length validation
            if(pw.length < 8) {
                document.getElementById("message").innerHTML = "**Password must longer 8 characters";
                document.getElementById("signupbtn").disabled = true;
                document.getElementById("signupbtn").style.background = "#cf1a1a";

            }

            else
            if(formatNumber.test(pw) == false){

                document.getElementById("message").innerHTML = "**At least one digit in this field";
                document.getElementById("signupbtn").disabled = true;
                document.getElementById("signupbtn").style.background = "#cf1a1a";
            }

            else if(pw.length > 15) {
                document.getElementById("message").innerHTML = "**Maximum password length is 15 characters";
                document.getElementById("signupbtn").disabled = true;
                document.getElementById("signupbtn").style.background = "#cf1a1a";

            }

            else
            if(formatAlphabet.test(pw) == false){

                document.getElementById("message").innerHTML = "**At least one letter in this field";
                document.getElementById("signupbtn").disabled = true;
                document.getElementById("signupbtn").style.background = "#cf1a1a";
            }

            else
            if(format.test(pw) == false){

                document.getElementById("message").innerHTML = "**At least one capital letter in this field (Ex: !@#$%^&*()_+)";
                document.getElementById("signupbtn").disabled = true;
                document.getElementById("signupbtn").style.background = "#cf1a1a";
            }

            else
            if(formatAlphabetCap.test(pw) == false){

                document.getElementById("message").innerHTML = "**At least one capital letter in this field";
                document.getElementById("signupbtn").disabled = true;
                document.getElementById("signupbtn").style.background = "#cf1a1a";
            }

            else
            {
                document.getElementById("message").innerHTML = "";
                document.getElementById("message").disabled = true;
            }
        }

        document.getElementById("agree-term").onclick = function (){
            if (this.checked){
                if(document.getElementById("username").value != "" && document.getElementById("email").value != "" && document.getElementById("pass").value != "" && document.getElementById("re_pass").value != "" && document.getElementById("agree-term").checked == true)
                {
                    document.getElementById("signupbtn").disabled = false;
                    document.getElementById("signupbtn").style.background = "#27659f";
                }
            }
        }

    </script>

</body>
</html>
