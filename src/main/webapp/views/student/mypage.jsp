<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>DIGI CAM |${student.name}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content=""/>
    <meta name="keywords" content=""/>
    <meta name="author" content=""/>

    <link rel="shortcut icon" href="favicon.ico">

    <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700" rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="/css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="/css/bootstrap.css">
    <!-- Flexslider  -->
    <link rel="stylesheet" href="/css/flexslider.css">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/owl.theme.default.min.css">
    <!-- Theme style  -->
    <link rel="stylesheet" href="/css/style.css">

    <!-- Modernizr JS -->
    <script src="/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="/js/respond.min.js"></script>
    <![endif]-->
    <style>
        #digicam {
            display: block;
            width: 100px;
            float: left;
            top: 10px;
            left: 10px;
            position: fixed;
            z-index: 1020;
        }

        #stuimg {
            width: 150px;
            height: 150px;
            margin: 0 auto;
            margin-bottom: 30px;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            -ms-border-radius: 50%;
            border-radius: 50%;
        }

        h1, h2, h3, h4, h5, #colorlib-logo {
            font-family: "Quicksand", Arial, sans-serif;
        }
    </style>
</head>
<body>
<a href="/">
    <img id="digicam" src="/assets/images/digi_logo.png"></a>
<div id="colorlib-page">
    <div class="container-wrap">
        <a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle" data-toggle="collapse" data-target="#navbar"
           aria-expanded="false" aria-controls="navbar"><i></i></a>
        <aside id="colorlib-aside" role="complementary" class="border js-fullheight">
            <div class="text-center">
                <div class="text-center">
                    <div class="author-img"><img id="stuimg" src="/uimg/${student.img}"></div>
                    <h1 id="colorlib-logo">${student.name}</h1>
                    <span class="position">KB KOOKMIN BANK DIGI CAM 2TH </span>
                </div>
            </div>
            <nav id="colorlib-main-menu" role="navigation" class="navbar">
                <div id="navbar" class="collapse">
                    <ul>
                        <li class="active"><a href="#" data-nav-section="home">Home</a></li>
                        <li><a href="#" data-nav-section="about">About</a></li>
                        <li><a href="#" data-nav-section="skills">skills</a></li>
                        <li><a href="#" data-nav-section="blog">blog</a></li>
                        <li><a href="#" data-nav-section="contact">Contact</a></li>
                    </ul>
                </div>
            </nav>

            <div class="colorlib-footer">
                <ul>
                    <c:choose>
                        <c:when test="${student.facebook==null}">
                            <li>
                                <a href="https://www.facebook.com/"><img style="width: 20px;"
                                                                         src="https://cdn-icons-png.flaticon.com/512/733/733547.png">
                                </a></li>
                        </c:when>
                        <c:otherwise>
                            <li>
                                <a href="https://www.facebook.com/${student.facebook}"><img style="width: 20px;"
                                                                                            src="https://cdn-icons-png.flaticon.com/512/733/733547.png">
                                </a></li>
                        </c:otherwise>
                    </c:choose>

                    <c:choose>
                        <c:when test="${student.insta==null}">
                            <li><a href="https://www.instagram.com/"><img style="width: 20px;"
                                                                                          src="https://cdn-icons-png.flaticon.com/512/2111/2111463.png"></a>
                            </li>
                        </c:when>
                        <c:otherwise>
                            <li><a href="https://www.instagram.com/${student.insta}"><img style="width: 20px;"
                                                                                          src="https://cdn-icons-png.flaticon.com/512/2111/2111463.png"></a>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>

        </aside>

                <div id="colorlib-main">
                    <section id="colorlib-hero" class="js-fullheight" data-section="home">
                        <div class="flexslider js-fullheight">
                            <ul class="slides">
                                <li style="background-image: url('/uimg/${student.img}');">
                                    <div class="overlay" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; background-color:whitesmoke; opacity: 0.4;"></div>
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-6 col-md-offset-3 col-md-pull-3 col-sm-12 col-xs-12 js-fullheight slider-text">
                                                <div class="slider-text-inner js-fullheight">
                                                    <div class="desc">
                                                        <h1>Hi! <br>I'm ${student.name}</h1>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li style="background-image: url('https://mblogthumb-phinf.pstatic.net/MjAyMDA2MTlfMSAg/MDAxNTkyNTQ2NjkwMzM3.o-kBMGXmdu8jHwRvkOHIz1ZOXwlWtPCeP_YCOdlraDIg.fwYx9rhYfRXAuZnYJXHQE53gCyNQn4YdnaMyJ8x4Udog.JPEG.21kwc/ti246a6902.jpg?type=w800');">
                                    <div class="overlay" style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; background-color:whitesmoke; opacity: 0.7;"></div>
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-6 col-md-offset-3 col-md-pull-3 col-sm-12 col-xs-12 js-fullheight slider-text">
                                                <div class="slider-text-inner">
                                                    <div class="desc">
                                                        <c:choose>
                                                            <c:when test="${student.mbti==null}">
                                                                <h1>Let me know your MBTI</h1>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <h1>I am <br>${student.mbti}</h1>
                                                            </c:otherwise>
                                                        </c:choose>

                                                        <h2 style="font-size: 30px; font-weight: bold">
                                                            <c:if test="${student.mbti == 'ISTJ'}">
                                                                Practical, logical, <br>and efficient
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ISFJ'}">
                                                                Caring, dependable, <br>and responsible
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'INFJ'}">
                                                                Insightful, creative, <br>and decisive
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'INTJ'}">
                                                                Strategic, innovative, <br>and independent
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ISTP'}">
                                                                Adventurous, logical, <br>and h<br>ands-on
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ISFP'}">
                                                                Sensitive, creative, <br>and caring
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'INFP'}">
                                                                Idealistic, empathetic, <br>and authentic
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'INTP'}">
                                                                Logical, innovative, <br>and independent
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ESTP'}">
                                                                Energetic, practical, <br>and adaptable
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ESFP'}">
                                                                Playful, social, <br>and expressive
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ENFP'}">
                                                                Enthusiastic, creative, <br>and sociable
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ENTP'}">
                                                                Inventive, curious, <br>and logical
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ESTJ'}">
                                                                Efficient, practical, <br>and authoritative
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ESFJ'}">
                                                                Friendly, caring, <br>and sociable
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ENFJ'}">
                                                                Charismatic, empathetic, <br>and decisive
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ENTJ'}">
                                                                Strategic, confident, <br>and assertive
                                                            </c:if>
                                                            <!-- Add more conditions for other personality types -->
                                                        </h2>
                                                        <p>
                                                            <c:if test="${student.mbti == 'ISTJ'}">
                                                                I am a responsible, organized, and dependable individual who prefers to work within established structures and frameworks.
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ISFJ'}">
                                                                I am a supportive and considerate individual who values traditions and is committed to helping others.
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'INFJ'}">
                                                                I am a highly intuitive and empathetic individual who is dedicated to making a positive impact on the world.
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'INTJ'}">
                                                                I am an analytical and logical individual who has a talent for developing innovative ideas and strategies.
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ISTP'}">
                                                                I am a spontaneous, action-oriented individual who enjoys working with my hands and solving problems in practical ways.
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ISFP'}">
                                                                I am a gentle and imaginative individual who enjoys creating beauty and harmony in my surroundings.
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'INFP'}">
                                                                I am a compassionate and creative individual who strives to live my life in accordance with my values and beliefs.
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'INTP'}">
                                                                I am an analytical and curious individual who enjoys exploring new ideas and theories.
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ESTP'}">
                                                                I am an outgoing and spontaneous individual who thrives on excitement and adventure.
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ESFP'}">
                                                                I am a fun-loving and charismatic individual who enjoys entertaining and being around other people.
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ENFP'}">
                                                                I am a passionate and imaginative individual who is driven by a desire to explore and understand the world around me.
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ENTP'}">
                                                                I am an analytical and outgoing individual who enjoys debating and challenging conventional wisdom.
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ESTJ'}">
                                                                I am a strong-willed and decisive individual who is well-suited to leadership roles.
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ESFJ'}">
                                                                I am a warm and considerate individual who is committed to building strong relationships with others.
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ENFJ'}">
                                                                I am a natural leader who is highly attuned to the needs of others and is skilled at motivating and inspiring people.
                                                            </c:if>

                                                            <c:if test="${student.mbti == 'ENTJ'}">
                                                                I am a decisive and goal-oriented individual who has a talent for leading and organizing people and resources
                                                            </c:if>

                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </section>

                    <section class="colorlib-about" data-section="about">
                        <div class="colorlib-narrow-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row row-bottom-padded-sm animate-box" data-animate-effect="fadeInLeft">
                                        <div class="col-md-12">
                                            <div class="about-desc">
                                                <span class="heading-meta">About Us</span>
                                                <h2 class="colorlib-heading">Who Am I?</h2>
                                                <p><strong>Hi I'm ${student.name}</strong>
                                                    <c:choose>
                                                    <c:when test="${student.detail==null}">
                                                </p>
                                                </c:when>
                                                <c:otherwise>
                                                    <br>${student.detail}</p>
                                                </c:otherwise>
                                                </c:choose>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-3 animate-box" data-animate-effect="fadeInLeft">
                                            <div class="services color-3">
                                                <span class="icon2"><i class="icon-star2"></i></span>

                                                <h3>WITH KB⭐<br>${student.com_sdate}
                                                </h3>

                                            </div>
                                        </div>
                                        <div class="col-md-3 animate-box" data-animate-effect="fadeInRight">
                                            <div class="services color-1">
                                                <span class="icon2"><i class="icon-monitor"></i></span>
                                                <h3>WITH DIGI🖱️<br>${student.digi_sdate}</h3>
                                            </div>

                                        </div>
                                        <div class="col-md-3 animate-box" data-animate-effect="fadeInTop">
                                            <div class="services color-2">
                                                <span class="icon2"><i class="icon-mail5"></i></span>
                                                <h3 style="word-wrap:break-word;">${student.email}</h3>
                                            </div>
                                        </div>
                                        <div class="col-md-3 animate-box" data-animate-effect="fadeInBottom">
                                            <div class="services color-4">
                                                <span class="icon2"><i class="icon-phone3"></i></span>
                                                <h3><br>${student.contact}</h3>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12 animate-box" data-animate-effect="fadeInLeft">
                                            <div class="hire">
                                                <h2>I am happy to know you<br>DIGI CAM과 함께한 지 ${dday} ING...♥ </h2>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>


                    <section class="colorlib-services" data-section="skills">
                        <div class="colorlib-narrow-content">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box"
                                     data-animate-effect="fadeInLeft">
                                    <span class="heading-meta">What I've Learned</span>
                                    <h2 class="colorlib-heading">Here are some of program languages that we learned</h2>
                                </div>
                            </div>
                            <div class="row row-pt-md">
                                <div class="col-md-4 text-center animate-box">
                                    <div class="services color-2">
        								<span class="icon">
                                            <img width="50px" src="https://cdn-icons-png.flaticon.com/512/1240/1240981.png">
        								</span>
                                        <div class="desc">
                                            <h3>FRONT</h3>
                                            <p>HTML&CSS</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center animate-box">
                                    <div class="services color-3">
        								<span class="icon">
        									<img width="50px" src="https://cdn-icons-png.flaticon.com/512/1199/1199124.png">
        								</span>
                                        <div class="desc">
                                            <h3>FRONT</h3>
                                            <p>Javascript</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center animate-box">
                                    <div class="services color-1">
        								<span class="icon">
        								<img width="50px" src="https://cdn-icons-png.flaticon.com/512/1125/1125008.png">
        								</span>
                                        <div class="desc">
                                            <h3>FRONT</h3>
                                            <p>React</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center animate-box">
                                    <div class="services color-4">
        								<span class="icon">
        										<img width="50px" src="https://cdn-icons-png.flaticon.com/512/5968/5968282.png">
        								</span>
                                        <div class="desc">
                                            <h3>BACKEND</h3>
                                            <p>Java</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center animate-box">
                                    <div class="services color-5">
        								<span class="icon">
        										<img width="50px"
                                                     src="https://dz2cdn1.dzone.com/storage/temp/12434118-spring-boot-logo.png">
        								</span>
                                        <div class="desc">
                                            <h3>BACKEND</h3>
                                            <p>Spring Boot</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4 text-center animate-box">
                                    <div class="services color-6">
        								<span class="icon">
        											<img width="50px"
                                                         src="https://cdn-icons-png.flaticon.com/512/5968/5968322.png">
        								</span>
                                        <div class="desc">
                                            <h3>BACKEND</h3>
                                            <p>Node JS</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                    <div id="colorlib-counter" class="colorlib-counters" style="background-image: url(images/cover_bg_1.jpg);"
                         data-stellar-background-ratio="0.5">
                        <div class="overlay"></div>
                        <div class="colorlib-narrow-content">
                            <div class="row">
                            </div>
                            <div class="row">
                                <div class="col-md-3 text-center animate-box">
                                    <span class="colorlib-counter js-counter" data-from="0" data-to="309" data-speed="5000"
                                          data-refresh-interval="50"></span>
                                    <span class="colorlib-counter-label">Cups of coffee</span>
                                </div>
                                <div class="col-md-3 text-center animate-box">
                                    <span class="colorlib-counter js-counter" data-from="0" data-to="24" data-speed="5000"
                                          data-refresh-interval="50"></span>
                                    <span class="colorlib-counter-label">Digi Members</span>
                                </div>
                                <div class="col-md-3 text-center animate-box">
                                    <span class="colorlib-counter js-counter" data-from="0" data-to="4" data-speed="5000"
                                          data-refresh-interval="50"></span>
                                    <span class="colorlib-counter-label">Teachers</span>
                                </div>
                                <div class="col-md-3 text-center animate-box">
                                    <span class="colorlib-counter js-counter" data-from="0" data-to="2" data-speed="5000"
                                          data-refresh-interval="50"></span>
                                    <span class="colorlib-counter-label">Mentors</span>
                                </div>
                            </div>
                        </div>
                    </div>

                    <section class="colorlib-experience" data-section="blog">
                        <div class="colorlib-narrow-content">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box"
                                     data-animate-effect="fadeInLeft">
                                    <span class="heading-meta">Experience</span>
                                    <h2 class="colorlib-heading animate-box">Work Experience</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="timeline-centered">
                                        <c:forEach var="obj" items="${bloglist}">
                                            <article class="timeline-entry animate-box" data-animate-effect="fadeInLeft">
                                                <div class="timeline-entry-inner">

                                                    <div class="timeline-icon color-1">
                                                        <i class="icon-pen2"></i>
                                                    </div>

                                                    <div class="timeline-label">
                                                        <h2><a href="#">${obj.title}</a> <span><fmt:formatDate
                                                                pattern="yyyy년 MM월 dd일"
                                                                value="${obj.rdate}"/></span></h2>
                                                        <p>${obj.contents}</p>
                                                    </div>
                                                </div>
                                            </article>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>


                    <section class="colorlib-contact" data-section="contact">
                        <div class="colorlib-narrow-content">
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3 col-md-pull-3 animate-box"
                                     data-animate-effect="fadeInLeft">
                                    <span class="heading-meta">Get in Touch</span>
                                    <h2 class="colorlib-heading">Contact</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="colorlib-feature colorlib-feature-sm animate-box"
                                         data-animate-effect="fadeInLeft">
                                        <div class="colorlib-icon">
                                            <i class="icon-globe-outline"></i>
                                        </div>
                                        <div class="colorlib-text">
                                            <p><a href="#">${student.email}</a></p>
                                        </div>
                                    </div>
                                    <div class="colorlib-feature colorlib-feature-sm animate-box"
                                         data-animate-effect="fadeInLeft">
                                        <div class="colorlib-icon">
                                            <i class="icon-phone"></i>
                                        </div>
                                        <div class="colorlib-text">
                                            <p><a href="tel://">${student.contact}</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-7 col-md-push-1">
                                    <div class="row">
                                        <div class="col-md-10 col-md-offset-1 col-md-pull-1 animate-box"
                                             data-animate-effect="fadeInRight">
                                            <form action="">
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Name">
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Email">
                                                </div>
                                                <div class="form-group">
                                                    <input type="text" class="form-control" placeholder="Subject">
                                                </div>
                                                <div class="form-group">
                                                    <textarea name="" id="message" cols="30" rows="7" class="form-control"
                                                              placeholder="Message"></textarea>
                                                </div>
                                                <div class="form-group">
                                                    <input type="submit" class="btn btn-primary btn-send-message"
                                                           value="Send Message">
                                                </div>
                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                </div><!-- end:colorlib-main -->
    </div><!-- end:container-wrap -->
</div><!-- end:colorlib-page -->

<!-- jQuery -->
<script src="/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="/js/jquery.waypoints.min.js"></script>
<!-- Flexslider -->
<script src="/js/jquery.flexslider-min.js"></script>
<!-- Owl carousel -->
<script src="/js/owl.carousel.min.js"></script>
<!-- Counters -->
<script src="/js/jquery.countTo.js"></script>


<!-- MAIN JS -->
<script src="/js/main.js"></script>

</body>
</html>

