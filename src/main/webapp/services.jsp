<%@ page import="bean.UserBean" %><%-- Created by IntelliJ IDEA. User: ADMIN
Date: 11/20/2022 Time: 4:41 PM To change this template use File | Settings |
File Templates. --%> <%@ page contentType="text/html;charset=UTF-8"
language="java" %>
<html>
  <html lang="en">
    <head>
      <!-- Required meta tags -->
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <title>Pet Shop</title>
      <link
        nonce="2526c7f26c"
        rel="icon"
        type="image/png"
        href="./assets/images/pet-shop-center-icon_24877-3877.png"
      />
      <!-- google font -->
      <link
        nonce="2526c7f26c"
        href="//fonts.googleapis.com/css2?family=Nunito:ital,wght@0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet"
      />
      <!-- Template CSS Style link -->
      <link
        nonce="2526c7f26c"
        rel="stylesheet"
        href="assets/css/style-starter.css"
      />
      <link
        nonce="2526c7f26c"
        rel="stylesheet"
        type="text/css"
        href="./assets/fonts/font-awesome-4.7.0/css/font-awesome.css"
      />
    </head>
    <body>
      <!-- header -->
      <!-- header -->
      <header id="site-header" class="fixed-top nav-fixed">
        <div class="container">
          <nav class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand" href="index.jsp">
              <i class="fas fa-dog"></i>Pet <span>Shop</span>
            </a>
            <button
              class="navbar-toggler collapsed"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#navbarScroll"
              aria-controls="navbarScroll"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
              <span class="navbar-toggler-icon fa icon-close fa-times"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarScroll">
              <ul class="navbar-nav mx-auto my-2 my-lg-0 navbar-nav-scroll">
                <li class="nav-item">
                  <a class="nav-link" aria-current="page" href="index.jsp"
                    >Home</a
                  >
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="shop.jsp">Shop</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="about.jsp">About</a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link" href="services.jsp">Services</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="contact.jsp">Contact</a>
                </li>
                <li class="nav-item nav--login">
                  <a class="nav-link" href="login.jsp">Sign in</a>
                  <%UserBean user = (UserBean) session.getAttribute("user"); %>
                  <%if(user!=null){%>
                  <p class="hellouser">Xin chào,<%=user.getUserName()%></p>
                  <%}%>
                </li>
                <li class="nav-item btn-signout">
                  <%if(user!=null){%>
                  <i class="fa fa-sign-out" aria-hidden="true"></i>
                  <%}%>
                </li>
              </ul>
            </div>
            <!-- toggle switch for light and dark theme -->
            <div class="cont-ser-position">
              <nav class="navigation">
                <div class="theme-switch-wrapper">
                  <label class="theme-switch" for="checkbox">
                    <input type="checkbox" id="checkbox" />
                    <div class="mode-container">
                      <i class="gg-sun"></i>
                      <i class="gg-moon"></i>
                    </div>
                  </label>
                </div>
              </nav>
            </div>
            <!-- //toggle switch for light and dark theme -->
          </nav>
        </div>
      </header>
      <!-- //header -->

      <!-- inner banner -->
      <section class="inner-banner py-5">
        <div class="w3l-breadcrumb py-lg-5">
          <div class="container pt-4 pb-sm-4">
            <h4 class="inner-text-title font-weight-bold pt-sm-5 pt-4">
              Services
            </h4>
            <ul class="breadcrumbs-custom-path">
              <li><a href="index.jsp">Home</a></li>
              <li class="active">
                <i class="fas fa-angle-right mx-2"></i>Services
              </li>
            </ul>
          </div>
        </div>
        <div class="shape">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 280">
            <path fill-opacity="1">
              <animate
                attributeName="d"
                dur="20000ms"
                repeatCount="indefinite"
                values="M0,160L48,181.3C96,203,192,245,288,261.3C384,277,480,267,576,234.7C672,203,768,149,864,117.3C960,85,1056,75,1152,90.7C1248,107,1344,149,1392,170.7L1440,192L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z; M0,160L48,181.3C96,203,192,245,288,234.7C384,224,480,160,576,133.3C672,107,768,117,864,138.7C960,160,1056,192,1152,197.3C1248,203,1344,181,1392,170.7L1440,160L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;												 M0,64L48,74.7C96,85,192,107,288,133.3C384,160,480,192,576,170.7C672,149,768,75,864,80C960,85,1056,171,1152,181.3C1248,192,1344,128,1392,96L1440,64L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;
                                                 M0,160L48,181.3C96,203,192,245,288,261.3C384,277,480,267,576,234.7C672,203,768,149,864,117.3C960,85,1056,75,1152,90.7C1248,107,1344,149,1392,170.7L1440,192L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;"
              ></animate>
            </path>
          </svg>
        </div>
      </section>
      <!-- //inner banner -->

      <!-- services section -->
      <section class="w3l-services py-5">
        <div class="container py-md-5 py-4">
          <div class="position-relative">
            <h3 class="title-style text-center mb-sm-5 mb-4">
              Tại sao nên chọn chúng tôi
            </h3>
            <div class="title-paw-style">
              <i class="fas fa-paw"></i>
              <i class="fas fa-paw paw-2"></i>
              <i class="fas fa-paw paw-3"></i>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-4 col-md-6 grids-feature">
              <div class="area-box">
                <i class="fas fa-shopping-bag color-1"></i>
                <h4>
                  <a href="about.jsp" class="title-head"
                    >Chuyên gia dinh dưỡng</a
                  >
                </h4>
                <p class="">
                  Cung cấp các thành phần dinh dưỡng có ích cho thú cưng.
                </p>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 grids-feature mt-md-0 mt-5">
              <div class="area-box">
                <i class="fas fa-bone color-2"></i>
                <h4>
                  <a href="about.jsp" class="title-head"
                    >Chất lượng và an toàn</a
                  >
                </h4>
                <p class="">
                  Các sản phẩm và dịch vụ luôn được đảm bảo tốt nhất.
                </p>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 grids-feature mt-lg-0 mt-5">
              <div class="area-box">
                <i class="fas fa-stethoscope color-3"></i>
                <h4><a href="about.jsp" class="title-head">Sức khỏe</a></h4>
                <p class="">
                  Kiểm tra và sử dụng các thực phẩm đúng cách cho thứ cưng
                </p>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 grids-feature mt-5">
              <div class="area-box">
                <i class="fas fa-shopping-bag color-4"></i>
                <h4><a href="about.jsp" class="title-head">Thú cưng</a></h4>
                <p class="">
                  Nếu bạn đang muốn tìm thú cưng hãy đến với chúng tôi.
                </p>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 grids-feature mt-5">
              <div class="area-box">
                <i class="fas fa-paw color-1"></i>
                <h4><a href="about.jsp" class="title-head">Thức ăn</a></h4>
                <p class="">Thực phẩm luôn dinh dưỡng và kiểm định rõ ràng</p>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 grids-feature mt-5">
              <div class="area-box">
                <i class="fas fa-dog color-2"></i>
                <h4><a href="about.jsp" class="title-head">Huấn luyện</a></h4>
                <p class="">
                  Với kinh nghiệm lâu năm, chúng tôi sẽ đào tạo cho thú cưng của
                  bạn.
                </p>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- //services section -->

      <!-- aboutblock1 section -->
      <section class="w3l-homeblock1 blog-bg-sec py-5" id="about">
        <div class="container py-md-5 py-4">
          <div class="row align-items-center">
            <div class="col-lg-6 homeaboutblock order-lg-first order-last">
              <div class="position-relative img-border">
                <img
                  src="assets/images/about5.jpg"
                  class="img-fluid video-popup-image radius-image"
                  alt="video-popup"
                />
              </div>
            </div>
            <div
              class="col-lg-6 ps-lg-5 mb-lg-0 mb-5 order-lg-last order-first"
            >
              <div class="position-relative">
                <h3 class="title-style mb-3">
                  Chúng tôi sẽ làm cho bạn an tâm
                </h3>
                <div class="title-paw-style">
                  <i class="fas fa-paw"></i>
                  <i class="fas fa-paw paw-2"></i>
                  <i class="fas fa-paw paw-3"></i>
                </div>
              </div>

              <div class="mt-4">
                <ul class="service-list">
                  <li class="service-link">
                    <a href="#url"
                      ><i class="fas fa-check-circle"></i>Được chứng nhận</a
                    >
                  </li>
                  <li class="service-link">
                    <a href="#url"
                      ><i class="fas fa-check-circle"></i>20 năm kinh nghiệm</a
                    >
                  </li>
                  <li class="service-link">
                    <a href="#url"
                      ><i class="fas fa-check-circle"></i>Tình yêu dành cho thú
                      cưng</a
                    >
                  </li>
                </ul>
              </div>
              <a href="about.jsp" class="btn btn-style mt-4">Learn More</a>
            </div>
          </div>
        </div>
      </section>
      <!-- //aboutblock1 section -->

      <!-- pricing section -->
      <section class="w3l-pricing pt-5">
        <div class="container py-md-5 py-4">
          <div class="position-relative">
            <h3 class="title-style text-center mb-sm-5 mb-4">
              Các dịch vụ tốt nhất
            </h3>
            <div class="title-paw-style">
              <i class="fas fa-paw"></i>
              <i class="fas fa-paw paw-2"></i>
              <i class="fas fa-paw paw-3"></i>
            </div>
          </div>
          <div class="row t-in justify-content-center">
            <div class="col-lg-4 col-md-6 price-main-info">
              <div class="price-inner card box-shadow">
                <div class="card-body">
                  <h4 class="text-uppercase text-center mb-3">
                    Regular Session
                  </h4>
                  <h5 class="card-title pricing-card-title">Free</h5>
                  <ul class="list-unstyled mt-3 mb-4">
                    <li><span class="fa fa-check"></span> Pet Shower</li>
                    <li><span class="fa fa-check"></span> Pet Grooming</li>
                    <li class="disable">
                      <span class="fa fa-check"></span> Hair &amp; Nail Cut
                    </li>
                    <li class="disable">
                      <span class="fa fa-check"></span> Brush &amp; Blow Dry
                    </li>
                    <li class="disable">
                      <span class="fa fa-check"></span> Pet Park &amp; Games
                    </li>
                  </ul>
                  <div class="read-more mt-4 pt-lg-2 text-center">
                    <a href="contact.jsp" class="btn btn-style"> Order Now</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 price-main-info mt-md-0 mt-4">
              <div class="price-inner card box-shadow active">
                <div class="card-body">
                  <h4 class="text-uppercase text-center mb-3">
                    Exclusive Session
                  </h4>
                  <h5 class="card-title pricing-card-title">
                    <span class="align-top">$</span>59
                  </h5>
                  <ul class="list-unstyled mt-3 mb-4">
                    <li><span class="fa fa-check"></span> Pet Shower</li>
                    <li><span class="fa fa-check"></span> Pet Grooming</li>
                    <li>
                      <span class="fa fa-check"></span> Hair &amp; Nail Cut
                    </li>
                    <li class="disable">
                      <span class="fa fa-check"></span> Brush &amp; Blow Dry
                    </li>
                    <li class="disable">
                      <span class="fa fa-check"></span> Pet Park &amp; Games
                    </li>
                  </ul>
                  <div class="read-more mt-4 pt-lg-2 text-center">
                    <a href="contact.jsp" class="btn btn-style"> Order Now</a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 price-main-info mt-lg-0 mt-4">
              <div class="price-inner card box-shadow">
                <div class="card-body">
                  <h4 class="text-uppercase text-center mb-3">
                    Premium Session
                  </h4>
                  <h5 class="card-title pricing-card-title">
                    <span class="align-top">$</span>99
                  </h5>
                  <ul class="list-unstyled mt-3 mb-4">
                    <li><span class="fa fa-check"></span> Pet Shower</li>
                    <li><span class="fa fa-check"></span> Pet Grooming</li>
                    <li>
                      <span class="fa fa-check"></span> Hair &amp; Nail Cut
                    </li>
                    <li>
                      <span class="fa fa-check"></span> Brush &amp; Blow Dry
                    </li>
                    <li>
                      <span class="fa fa-check"></span> Pet Park &amp; Games
                    </li>
                  </ul>
                  <div class="read-more mt-4 pt-lg-2 text-center">
                    <a href="contact.jsp" class="btn btn-style"> Order Now</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- //pricing section -->

      <!-- footer -->
      <footer class="w3l-footer">
        <div class="shape-footer">
          <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440 280">
            <path fill-opacity="1">
              <animate
                attributeName="d"
                dur="20000ms"
                repeatCount="indefinite"
                values="M0,160L48,181.3C96,203,192,245,288,261.3C384,277,480,267,576,234.7C672,203,768,149,864,117.3C960,85,1056,75,1152,90.7C1248,107,1344,149,1392,170.7L1440,192L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z; M0,160L48,181.3C96,203,192,245,288,234.7C384,224,480,160,576,133.3C672,107,768,117,864,138.7C960,160,1056,192,1152,197.3C1248,203,1344,181,1392,170.7L1440,160L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;												 M0,64L48,74.7C96,85,192,107,288,133.3C384,160,480,192,576,170.7C672,149,768,75,864,80C960,85,1056,171,1152,181.3C1248,192,1344,128,1392,96L1440,64L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;
                                             M0,160L48,181.3C96,203,192,245,288,261.3C384,277,480,267,576,234.7C672,203,768,149,864,117.3C960,85,1056,75,1152,90.7C1248,107,1344,149,1392,170.7L1440,192L1440,320L1392,320C1344,320,1248,320,1152,320C1056,320,960,320,864,320C768,320,672,320,576,320C480,320,384,320,288,320C192,320,96,320,48,320L0,320Z;"
              ></animate>
            </path>
          </svg>
        </div>
        <div class="w3l-footer-16 py-5">
          <div class="container">
            <div class="row footer-p">
              <div class="col-lg-4 pe-lg-5">
                <h3>About Us</h3>
                <p class="mt-3">
                  Thú cưng của bạn sẽ được chăm sóc đặc biệt khi ở đây.
                </p>
                <div class="columns-2 mt-lg-5 mt-4">
                  <ul class="social">
                    <li>
                      <a href="#facebook"><i class="fab fa-facebook-f"></i></a>
                    </li>
                    <li>
                      <a href="#linkedin"><i class="fab fa-linkedin-in"></i></a>
                    </li>
                    <li>
                      <a href="#twitter"><i class="fab fa-twitter"></i></a>
                    </li>
                    <li>
                      <a href="#google"><i class="fab fa-google-plus-g"></i></a>
                    </li>
                    <li>
                      <a href="#github"><i class="fab fa-github"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="col-lg-5 mt-lg-0 mt-5">
                <div class="row">
                  <div class="col-xl-5 col-6 column">
                    <h3>Quick Link</h3>
                    <ul class="footer-gd-16">
                      <li><a href="about.jsp">About Us</a></li>
                      <li><a href="#clients">Our Clients</a></li>
                      <li><a href="services.jsp">Services</a></li>
                      <li><a href="#blog">Blog Posts</a></li>
                      <li><a href="contact.jsp">Contact Us</a></li>
                    </ul>
                  </div>
                  <div class="col-6 column">
                    <h3>Contact Info</h3>
                    <ul class="footer-contact-list">
                      <li class="">
                        Số 1 Võ Văn Ngân, Thủ Đức, TP. Hồ Chí Minh
                      </li>
                      <li class="mt-2">
                        <a href="tel:+12 23456790">+1223 456 790</a>
                      </li>
                      <li class="mt-2">
                        <a href="mailto:ex2002@gmai.com">ex2002@gmai.com</a>
                      </li>
                      <li class="mt-2">
                        <a href="mailto:hcmute@gmail.com">hcmute@gmail.com</a>
                      </li>
                    </ul>
                  </div>
                  <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.484231881318!2d106.76973361407143!3d10.85072666078669!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752763f23816ab%3A0x282f711441b6916f!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBTxrAgcGjhuqFtIEvhu7kgdGh14bqtdCBUcC4gSOG7kyBDaMOtIE1pbmg!5e0!3m2!1svi!2s!4v1668351911848!5m2!1svi!2s"
                    width="600"
                    height="450"
                    style="border: 0"
                    allowfullscreen=""
                    loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade"
                  ></iframe>
                </div>
              </div>
              <div
                class="col-lg-3 col-md-7 col-sm-8 column mt-lg-0 mt-4 pl-xl-0"
              >
                <h3>Newsletter</h3>
                <div class="end-column">
                  <form action="#" class="subscribe" method="post">
                    <input
                      type="hidden"
                      name="csrf_token"
                      value="${csrf_token}"
                    />
                    <input
                      type="email"
                      name="email"
                      placeholder="Email Address"
                      required=""
                    />
                    <button>
                      <span class="fa fa-paper-plane" aria-hidden="true"></span>
                    </button>
                  </form>
                  <p class="mt-4">
                    Subscribe to our mailing list and get updates to your email
                    inbox.
                  </p>
                </div>
              </div>
            </div>
            <div class="below-section text-center pt-lg-4 mt-5">
              <p class="copy-text">
                © 2022 Pet Shop. All rights reserved. Design by
                <a href="https://w3layouts.com/" target="_blank"
                  >Vngocz &amp; Trnguyen</a
                >
              </p>
            </div>
          </div>
        </div>
      </footer>
      <!-- //footer -->

      <!-- Js scripts -->
      <!-- move top -->
      <button
        onclick="topFunction()"
        id="movetop"
        title="Go to top"
        style="display: block"
      >
        <span class="fas fa-level-up-alt" aria-hidden="true"></span>
      </button>
      <script nonce="2526c7f26c">
        // When the user scrolls down 20px from the top of the document, show the button
        window.onscroll = function () {
          scrollFunction();
        };

        function scrollFunction() {
          if (
            document.body.scrollTop > 20 ||
            document.documentElement.scrollTop > 20
          ) {
            document.getElementById("movetop").style.display = "block";
          } else {
            document.getElementById("movetop").style.display = "none";
          }
        }

        // When the user clicks on the button, scroll to the top of the document
        function topFunction() {
          document.body.scrollTop = 0;
          document.documentElement.scrollTop = 0;
        }
      </script>
      <!-- //move top -->

      <!-- common jquery plugin -->
      <script nonce="2526c7f26c" src="assets/js/jquery-3.7.1.min.js"></script>
      <!-- //common jquery plugin -->

      <!-- theme switch js (light and dark)-->
      <script nonce="2526c7f26c" src="assets/js/theme-change.js"></script>
      <!-- //theme switch js (light and dark)-->

      <!-- MENU-JS -->
      <script nonce="2526c7f26c">
        $(window).on("scroll", function () {
          var scroll = $(window).scrollTop();

          if (scroll >= 80) {
            $("#site-header").addClass("nav-fixed");
          } else {
            $("#site-header").removeClass("nav-fixed");
          }
        });

        //Main navigation Active Class Add Remove
        $(".navbar-toggler").on("click", function () {
          $("header").toggleClass("active");
        });
        $(document).on("ready", function () {
          if ($(window).width() > 991) {
            $("header").removeClass("active");
          }
          $(window).on("resize", function () {
            if ($(window).width() > 991) {
              $("header").removeClass("active");
            }
          });
        });
      </script>
      <!-- //MENU-JS -->

      <!-- disable body scroll which navbar is in active -->
      <script nonce="2526c7f26c">
        $(function () {
          $(".navbar-toggler").click(function () {
            $("body").toggleClass("noscroll");
          });
        });
      </script>
      <!-- //disable body scroll which navbar is in active -->

      <!-- bootstrap -->
      <script nonce="2526c7f26c" src="assets/js/bootstrap.min.js"></script>
      <!-- //bootstrap -->
      <!-- //Js scripts -->
      <!-- Code injected by live-server -->
      <script nonce="2526c7f26c">
        // <![CDATA[  <-- For SVG support
        if ("WebSocket" in window) {
          (function () {
            function refreshCSS() {
              var sheets = [].slice.call(document.getElementsByTagName("link"));
              var head = document.getElementsByTagName("head")[0];
              for (var i = 0; i < sheets.length; ++i) {
                var elem = sheets[i];
                var parent = elem.parentElement || head;
                parent.removeChild(elem);
                var rel = elem.rel;
                if (
                  (elem.href && typeof rel != "string") ||
                  rel.length == 0 ||
                  rel.toLowerCase() == "stylesheet"
                ) {
                  var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, "");
                  elem.href =
                    url +
                    (url.indexOf("?") >= 0 ? "&" : "?") +
                    "_cacheOverride=" +
                    new Date().valueOf();
                }
                parent.appendChild(elem);
              }
            }
            var protocol =
              window.location.protocol === "http:" ? "ws://" : "wss://";
            var address =
              protocol +
              window.location.host +
              window.location.pathname +
              "/ws";
            var socket = new WebSocket(address);
            socket.onmessage = function (msg) {
              if (msg.data == "reload") window.location.reload();
              else if (msg.data == "refreshcss") refreshCSS();
            };
            if (
              sessionStorage &&
              !sessionStorage.getItem("IsThisFirstTime_Log_From_LiveServer")
            ) {
              console.log("Live reload enabled.");
              sessionStorage.setItem(
                "IsThisFirstTime_Log_From_LiveServer",
                true
              );
            }
          })();
        } else {
          console.error(
            "Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading."
          );
        }
        // ]]>
      </script>
      <%-- Script login--%>
      <script nonce="2526c7f26c">
        var login = document.querySelector(".nav--login > p");
        if (login.classList.contains("hellouser")) {
          var sublogin = document.querySelector(".nav--login .nav-link");
          sublogin.style.display = "none";
        }
      </script>

      <script nonce="2526c7f26c">
        var btnsignout = document.querySelector(".btn-signout");
        btnsignout.onclick = function () {
          let choice = confirm("Bạn có muốn đăng xuất?");
          if (choice == true) {
            window.location = "<%=request.getContextPath()%>/LogoutServlet";
          } else {
          }
        };
      </script>
    </body>
  </html>
</html>
