<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> <%session.removeAttribute("username");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>Pet Shop</title>
    <link
      nonce="2526c7f26c"
      rel="icon"
      type="image/png"
      href="./assets/images/pet-shop-center-icon_24877-3877.png"
    />
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--===============================================================================================-->
    <link
      nonce="2526c7f26c"
      rel="icon"
      type="image/png"
      href="./assets/images/icons/favicon.ico"
    />
    <!--===============================================================================================-->
    <link
      nonce="2526c7f26c"
      rel="stylesheet"
      type="text/css"
      href="./assets/vendor/bootstrap/css/bootstrap.css"
    />
    <!--===============================================================================================-->
    <link
      nonce="2526c7f26c"
      rel="stylesheet"
      type="text/css"
      href="./assets/fonts/font-awesome-4.7.0/css/font-awesome.css"
    />
    <!--===============================================================================================-->
    <link
      nonce="2526c7f26c"
      rel="stylesheet"
      type="text/css"
      href="./assets/vendor/animate/animate.css"
    />
    <!--===============================================================================================-->
    <link
      nonce="2526c7f26c"
      rel="stylesheet"
      type="text/css"
      href="./assets/vendor/css-hamburgers/hamburgers.css"
    />
    <!--===============================================================================================-->
    <link
      nonce="2526c7f26c"
      rel="stylesheet"
      type="text/css"
      href="./assets/vendor/select2/select2.css"
    />
    <!--===============================================================================================-->
    <link
      nonce="2526c7f26c"
      rel="stylesheet"
      type="text/css"
      href="./assets/css/util.css"
    />
    <link
      nonce="2526c7f26c"
      rel="stylesheet"
      type="text/css"
      href="./assets/css/loginv1.css"
    />
    <!--===============================================================================================-->
  </head>
  <body>
    <div class="limiter">
      <div class="container-login100">
        <div class="wrap-login100">
          <div class="login100-pic js-tilt" data-tilt>
            <img src="assets/images/icons/iconPetLogin.jpg" alt="IMG" />
          </div>

          <form
            class="login100-form validate-form"
            action="LoginController"
            method="post"
          >
            <input type="hidden" name="csrf_token" value="${csrf_token}" />
            <%-- <input type="hidden" name=" action" value="login" />--%> <%--
            <input type="hidden" name="csrfLogin" value="<%=csrfLogin%>" />--%>
            <span class="login100-form-title"> Member Login </span>

            <div
              class="wrap-input100 validate-input"
              data-validate="Valid email is required: ex@abc.xyz"
            >
              <input
                class="input100"
                type="email"
                name="email"
                placeholder="Your email"
              />
              <span class="focus-input100"></span>
              <span class="symbol-input100">
                <i class="fa fa-envelope" aria-hidden="true"></i>
              </span>
            </div>

            <div
              class="wrap-input100 validate-input"
              data-validate="Password is required"
            >
              <input
                class="input100"
                type="password"
                name="password"
                placeholder="Password"
              />
              <span class="focus-input100"></span>
              <span class="symbol-input100">
                <i class="fa fa-lock" aria-hidden="true"></i>
              </span>
            </div>

            <span style="color: red">${message}</span>

            <div class="container-login100-form-btn">
              <button class="login100-form-btn">Login</button>
            </div>

            <div class="text-center p-t-12">
              <span class="txt1"> Forgot </span>
              <a class="txt2" href="#"> Username / Password? </a>
            </div>

            <div class="text-center p-t-136">
              <a class="txt2" href="./register.jsp">
                Create your Account
                <i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
              </a>
            </div>
          </form>
        </div>
      </div>
    </div>

    <!--===============================================================================================-->
    <script
      nonce="2526c7f26c"
      src="./assets/vendor/jquery/jquery-3.7.1.min.js"
    ></script>
    <!--===============================================================================================-->
    <script
      nonce="2526c7f26c"
      src="./assets/vendor/bootstrap/js/popper.js"
    ></script>
    <script
      nonce="2526c7f26c"
      src="./assets/vendor/bootstrap/js/bootstrap.min.js"
    ></script>
    <!--===============================================================================================-->
    <script
      nonce="2526c7f26c"
      src="./assets/vendor/select2/select2.min.js"
    ></script>
    <!--===============================================================================================-->
    <script
      nonce="2526c7f26c"
      src="./assets/vendor/tilt/tilt.jquery.min.js"
    ></script>
    <script nonce="2526c7f26c">
      $(".js-tilt").tilt({
        scale: 1.1,
      });
    </script>
    <!--===============================================================================================-->
    <script src="./assets/js/loginv1.js"></script>
  </body>
</html>
