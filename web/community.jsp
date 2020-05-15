<%-- 
    Document   : community
    Created on : May 15, 2020, 7:47:26 PM
    Author     : Nhat Duy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0">

        <!-- Site Metas -->
        <title>Cộng Đồng</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- color -->
        <link id="changeable-colors" rel="stylesheet" href="css/colors/orange.css" />
            <!-- Cộng Đồng CSS -->
        <link rel="stylesheet" href="css/community.css">

        <!-- Modernizer -->
        <script src="js/modernizer.js"></script>

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div id="loader">
            <div id="status"></div>
        </div>
        <div id="site-header">
            <header id="header" class="header-block-top fixed-menu">
                <div class="container">
                    <div class="row">
                        <div class="main-menu">
                            <!-- navbar -->
                            <nav class="navbar navbar-default" id="mainNav">
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                    <div class="logo">
                                        <a class="navbar-brand js-scroll-trigger logo-header" href="#">
                                            <img src="images/logo.png" alt="">
                                        </a>
                                    </div>
                                </div>
                                <div id="navbar" class="navbar-collapse collapse">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li class="active"><a href="#banner">Home</a></li>
                                        <li><a href="#about">About us</a></li>
                                        <li><a href="#menu">Menu</a></li>
                                        <li><a href="#our_team">Team</a></li>
                                        <li><a href="#gallery">CỘNG ĐỒNG</a></li>
                                        <li><a href="#blog">Blog</a></li>
                                        <li><a href="#pricing">pricing</a></li>
                                        <li><a href="#reservation">Reservaion</a></li>
                                        <li><a href="#footer">Contact us</a></li>
                                    </ul>
                                </div>
                                <!-- end nav-collapse -->
                            </nav>
                            <!-- end navbar -->
                        </div>
                    </div>
                    <!-- end row -->
                </div>
                <!-- end container-fluid -->
            </header>
            <!-- end header -->
        </div>
            <!-- end site-header -->


        <div id="gallery" class="gallery-main pad-top-100 pad-bottom-100">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 ">
                        <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s" style="margin-top: 100px">
                            <h2 class="block-title text-center">Cộng Đồng</h2>
                            <p class="title-caption text-center">Nơi chia sẻ và lan tỏa yêu thương</p>
                        </div>

                        <div class=" special-menu">
                            <div class="gal-container clearfix" >
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 fake-form ">
                                    <div class="offer-item2">
                                        <img src="images/menu-item-thumbnail-01.jpg" alt="" class="img-responsive" style="width: 80px">
                                        <div class="profile">
                                            <p>Chia sẻ món ngon của bạn với cộng đồng ...</p>
                                        </div>
                                    </div>
                                    <div class="blog-btn-v">
                                        <a class="hvr-underline-from-center" href="#">Đăng bài</a>
                                    </div>
                                </div> 
                            </div>
                            <div class="gal-container clearfix">
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 fake-form">
                                    <div class="offer-item2" style="height: 100px">
                                        <img src="images/menu-item-thumbnail-01.jpg" alt="" class="img-responsive" style="width: 80px">
                                        <div class="profile">								
                                            <span>
                                              <b>Nguyễn Văn A</b>
                                            </span>
                                        </div>
                                        <div class="rating">
                                            <span class="date-time rated-date">
                                                <a href="#">
                                                    <cooky-time created-on="1588834422" created-on-text="07/05/2020 13:53:42">
                                                      <p>2 ngày trước</p>
                                                    </cooky-time>
                                                </a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6" style="width: 100%">
                                        <div class="blog-block pitem">
                                            <div class="blog-img-box " style="width: 120px">
                                                <img  src="images/featured-image-01.jpg" alt="" style="border-radius: 12px"/>
                                                <div class="overlay">
                                                    <a href=""><i class="fa fa-link" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                            <div class="blog-dit2" >
                                                <a class="name" href="#" target="_blank" title="Sườn xào chua ngọt"><b>Sườn xào chua ngọt</b></a>
                                                <div class="stats">
                                                    <span class="stats-item">
                                                        <span class="stats-count abbr">126008</span> lượt xem
                                                    </span>
                                                    <span class="stats-item">
                                                        <span class="stats-count">112</span> Đã thực hiện
                                                    </span>
                                                </div>
                                                <div class="desc">
                                                    <a class="recipe-author" target="_blank" href="/thanh-vien/cooky">
                                                        <img src="images/menu-item-thumbnail-01.jpg" alt="" class="avt">
                                                    </a>
                                                    <p style="text-align:justify"><strong>Sườn Xào Chua Ngọt</strong> - món ăn ngon dễ làm, giúp đổi vị cho bữa cơm gia đình. Cách làm sườn xào chua ngọt đơn giản, thơm ngon, thịt sườn xào chín dai béo, ngấm gia vị nêm nếm chua chua, mặn ngọt. <strong>Cách làm sườn xào chua ngọt</strong> của Cooky còn có thêm ớt chuông giòn mát, màu xanh đỏ trong rất đẹp mắt nhé.</p>
                                                    <div style="all: unset;">&nbsp;</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="content">
                                            <div>
                                                <a  href="#"><h3><b>Sườn xào chua ngọt</b></h3></a>
                                            </div>
                                            <div>
                                                Mình làm theo công thức, rất ngon! Khi xào thơm sẽ ra vị chua nhiều nên các bạn nên điều chỉnh lượng tương cà ở phần sốt ít lại nha!
                                            </div>
                                        </div>
                                        <div class="review-acts">
                                            <img class="btn-act" src="images/tim.png" title="Yêu thích">
                                            <img class="btn-act" src="images/comment.png" title="Bình luận">
                                            <img class="btn-act" src="images/share.png" title="Chia sẻ">
                                        </div>
                                        <div class="comment">
                                            <div >
                                                <img src="images/menu-item-thumbnail-01.jpg" alt="" class="avt2">
                                            </div>
                                            <div class="comment-content">
                                                <div class="comment-head">
                                                    <a href="#">Dương Nguyễn</a>
                                                    <div  class="date-time time" >
                                                        <cooky-time >8 giờ trước</cooky-time>
                                                    </div>
                                                </div>
                                                <div class="comment2">Nhìn hấp dẫn quá
                                                </div>
                                                <div class="review-acts" style="float: left; margin-top: 65px; margin-left: -155px">
                                                    <a href="#" class="like">Thích</a>
                                                    <a href="#" class="answer">Trả lời</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="comment3">
                                            <div >
                                                <img src="images/menu-item-thumbnail-01.jpg" alt="" class="avt2" style="margin-right: 6px">
                                            </div>
                                            <div class="d129h">
                                                <div class="d4w79">Viết bình luận...
                                                </div>
                                                <ul class="d1obb">
                                                        <li><img src="images/emotion.png"></li>
                                                        <li><img src="images/camera.png"></li>
                                                        <li><img src="images/gif.png"></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div>

                            <div class="gal-container clearfix">
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 fake-form">
                                    <div class="offer-item2" style="height: 100px">
                                        <img src="images/menu-item-thumbnail-01.jpg" alt="" class="img-responsive" style="width: 80px">
                                        <div class="profile">								
                                            <span>
                                              <b>Nguyễn Văn A</b>
                                            </span>
                                        </div>
                                        <div class="rating">
                                            <span class="date-time rated-date">
                                                <a # href="#">
                                                    <cooky-time created-on="1588834422" created-on-text="07/05/2020 13:53:42">
                                                      <p>2 ngày trước</p>
                                                    </cooky-time>
                                                </a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6" style="width: 100%">
                                        <div class="blog-block pitem">
                                            <div class="blog-img-box " style="width: 120px">
                                                <img  src="images/featured-image-01.jpg" alt="" style="border-radius: 12px"/>
                                                <div class="overlay">
                                                    <a href="#"><i class="fa fa-link" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                            <div class="blog-dit2" >
                                                <a class="name" href="#" target="_blank" title="Sườn xào chua ngọt"><b>Sườn xào chua ngọt</b></a>
                                                <div class="stats">
                                                    <span class="stats-item">
                                                        <span class="stats-count abbr">126008</span> lượt xem
                                                    </span>
                                                    <span class="stats-item">
                                                        <span class="stats-count">112</span> Đã thực hiện
                                                    </span>
                                                </div>
                                                <div class="desc">
                                                    <a class="recipe-author" target="_blank" href="/thanh-vien/cooky">
                                                        <img src="images/menu-item-thumbnail-01.jpg" alt="" class="avt">
                                                    </a>
                                                    <p style="text-align:justify"><strong>Sườn Xào Chua Ngọt</strong> - món ăn ngon dễ làm, giúp đổi vị cho bữa cơm gia đình. Cách làm sườn xào chua ngọt đơn giản, thơm ngon, thịt sườn xào chín dai béo, ngấm gia vị nêm nếm chua chua, mặn ngọt. <strong>Cách làm sườn xào chua ngọt</strong> của Cooky còn có thêm ớt chuông giòn mát, màu xanh đỏ trong rất đẹp mắt nhé.</p>
                                                    <div style="all: unset;">&nbsp;</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="content">
                                            <div>
                                                <a href="#"><h3><b>Sườn xào chua ngọt</b></h3></a>
                                            </div>
                                            <div>
                                                Mình làm theo công thức, rất ngon! Khi xào thơm sẽ ra vị chua nhiều nên các bạn nên điều chỉnh lượng tương cà ở phần sốt ít lại nha!
                                            </div>
                                        </div>
                                        <div class="review-acts">
                                            <img class="btn-act" src="images/tim.png" title="Yêu thích">
                                            <img class="btn-act" src="images/comment.png" title="Bình luận">
                                            <img class="btn-act" src="images/share.png" title="Chia sẻ">
                                        </div>
                                        <div class="comment">
                                            <div >
                                                <img src="images/menu-item-thumbnail-01.jpg" alt="" class="avt2">
                                            </div>
                                            <div class="comment-content">
                                                <div class="comment-head">
                                                    <a href="#">Dương Nguyễn</a>
                                                    <div  class="date-time time" >
                                                        <cooky-time >8 giờ trước</cooky-time>
                                                    </div>
                                                </div>
                                                <div class="comment2">Nhìn hấp dẫn quá
                                                </div>
                                                <div class="review-acts" style="float: left; margin-top: 65px; margin-left: -155px">
                                                    <a href="#" class="like">Thích</a>
                                                    <a href="#" class="answer">Trả lời</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="comment3">
                                                <div >
                                                    <img src="images/menu-item-thumbnail-01.jpg" alt="" class="avt2" style="margin-right: 6px">
                                                </div>
                                                <div class="d129h">
                                                    <div class="d4w79">Viết bình luận...
                                                    </div>
                                                    <ul class="d1obb">
                                                        <li><img src="images/emotion.png"></li>
                                                        <li><img src="images/camera.png"></li>
                                                        <li><img src="images/gif.png"></li>
                                                    </ul>
                                                </div>
                                        </div>
                                    </div>
                                </div> 
                            </div>

                            <div class="gal-container clearfix">
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 fake-form">
                                    <div class="offer-item2" style="height: 100px">
                                        <img src="images/menu-item-thumbnail-01.jpg" alt="" class="img-responsive" style="width: 80px">
                                        <div class="profile">								
                                            <span>
                                              <b>Nguyễn Văn A</b>
                                            </span>
                                        </div>
                                        <div class="rating">
                                            <span class="date-time rated-date">
                                                <a href="#">
                                                    <cooky-time created-on="1588834422" created-on-text="07/05/2020 13:53:42">
                                                      <p>2 ngày trước</p>
                                                    </cooky-time>
                                                </a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-sm-6" style="width: 100%">
                                        <div class="blog-block pitem">
                                            <div class="blog-img-box " style="width: 120px">
                                                <img  src="images/featured-image-01.jpg" alt="" style="border-radius: 12px"/>
                                                <div class="overlay">
                                                    <a href="#"><i class="fa fa-link" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                            <div class="blog-dit2" >
                                                <a class="name" href="#" target="_blank" title="Sườn xào chua ngọt"><b>Sườn xào chua ngọt</b></a>
                                                <div class="stats">
                                                    <span class="stats-item">
                                                        <span class="stats-count abbr">126008</span> lượt xem
                                                    </span>
                                                    <span class="stats-item">
                                                        <span class="stats-count">112</span> Đã thực hiện
                                                    </span>
                                                </div>
                                                <div class="desc">
                                                    <a class="recipe-author" target="_blank" href="/thanh-vien/cooky">
                                                        <img src="images/menu-item-thumbnail-01.jpg" alt="" class="avt">
                                                    </a>
                                                    <p style="text-align:justify"><strong>Sườn Xào Chua Ngọt</strong> - món ăn ngon dễ làm, giúp đổi vị cho bữa cơm gia đình. Cách làm sườn xào chua ngọt đơn giản, thơm ngon, thịt sườn xào chín dai béo, ngấm gia vị nêm nếm chua chua, mặn ngọt. <strong>Cách làm sườn xào chua ngọt</strong> của Cooky còn có thêm ớt chuông giòn mát, màu xanh đỏ trong rất đẹp mắt nhé.</p>
                                                    <div style="all: unset;">&nbsp;</div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="content">
                                            <div>
                                                <a href="#"><h3><b>Sườn xào chua ngọt</b></h3></a>
                                            </div>
                                            <div>
                                                Mình làm theo công thức, rất ngon! Khi xào thơm sẽ ra vị chua nhiều nên các bạn nên điều chỉnh lượng tương cà ở phần sốt ít lại nha!
                                            </div>
                                        </div>
                                        <div class="review-acts">
                                            <img class="btn-act" src="images/tim.png" title="Yêu thích">
                                            <img class="btn-act" src="images/comment.png" title="Bình luận">
                                            <img class="btn-act" src="images/share.png" title="Chia sẻ">
                                        </div>
                                        <div class="comment">
                                            <div >
                                                <img src="images/menu-item-thumbnail-01.jpg" alt="" class="avt2">
                                            </div>
                                            <div class="comment-content">
                                                <div class="comment-head">
                                                    <a href="#">Dương Nguyễn</a>
                                                    <div  class="date-time time" >
                                                        <cooky-time >8 giờ trước</cooky-time>
                                                    </div>
                                                </div>
                                                <div class="comment2">Nhìn hấp dẫn quá
                                                </div>
                                                <div class="review-acts" style="float: left; margin-top: 65px; margin-left: -155px">
                                                    <a href="#" class="like">Thích</a>
                                                    <a href="#" class="answer">Trả lời</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="comment3">
                                            <div >
                                                <img src="images/menu-item-thumbnail-01.jpg" alt="" class="avt2" style="margin-right: 6px">
                                            </div>
                                            <div class="d129h">
                                                <div class="d4w79">Viết bình luận...
                                                </div>
                                                <ul class="d1obb">
                                                    <li><img src="images/emotion.png"></li>
                                                    <li><img src="images/camera.png"></li>
                                                    <li><img src="images/gif.png"></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                        </div>
                        <!-- end gal-container -->
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end gallery-main -->

        <div id="footer" class="footer-main">
            <div class="footer-news pad-top-100 pad-bottom-70 parallax">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                                <h2 class="ft-title color-white text-center"> Newsletter </h2>
                                <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
                            </div>
                            <form>
                                <input type="email" placeholder="Enter your e-mail id">
                                <a href="#" class="orange-btn"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></a>
                            </form>
                        </div>
                        <!-- end col -->
                    </div>
                    <!-- end row -->
                </div>
                <!-- end container -->
            </div>
            <!-- end footer-news -->
            <div class="footer-box pad-top-70">
                <div class="container">
                    <div class="row">
                        <div class="footer-in-main">
                            <div class="footer-logo">
                                <div class="text-center">
                                    <img src="images/logo.png" alt="" />
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="footer-box-a">
                                    <h3>About Us</h3>
                                    <p>Aenean commodo ligula eget dolor aenean massa. Cum sociis nat penatibu set magnis dis parturient montes.</p>
                                    <ul class="socials-box footer-socials pull-left">
                                        <li>
                                            <a href="#">
                                                <div class="social-circle-border"><i class="fa  fa-facebook"></i></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="social-circle-border"><i class="fa fa-twitter"></i></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="social-circle-border"><i class="fa fa-google-plus"></i></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="social-circle-border"><i class="fa fa-pinterest"></i></div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <div class="social-circle-border"><i class="fa fa-linkedin"></i></div>
                                            </a>
                                        </li>
                                    </ul>

                                </div>
                                <!-- end footer-box-a -->
                            </div>
                            <!-- end col -->
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="footer-box-b">
                                    <h3>New Menu</h3>
                                    <ul>
                                        <li><a href="#">Italian Bomba Sandwich</a></li>
                                        <li><a href="#">Double Dose of Pork Belly</a></li>
                                        <li><a href="#">Spicy Thai Noodles</a></li>
                                        <li><a href="#">Triple Truffle Trotters</a></li>
                                    </ul>
                                </div>
                                <!-- end footer-box-b -->
                            </div>
                            <!-- end col -->
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="footer-box-c">
                                    <h3>Contact Us</h3>
                                    <p>
                                        <i class="fa fa-map-signs" aria-hidden="true"></i>
                                        <span>6 E Esplanade, St Albans VIC 3021, Australia</span>
                                    </p>
                                    <p>
                                        <i class="fa fa-mobile" aria-hidden="true"></i>
                                        <span>
                                                                            +91 80005 89080 
                                                                    </span>
                                    </p>
                                    <p>
                                        <i class="fa fa-envelope" aria-hidden="true"></i>
                                        <span><a href="#">support@foodfunday.com</a></span>
                                    </p>
                                </div>
                                <!-- end footer-box-c -->
                            </div>
                            <!-- end col -->
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="footer-box-d">
                                    <h3>Opening Hours</h3>

                                    <ul>
                                        <li>
                                            <p>Monday - Thursday </p>
                                            <span> 11:00 AM - 9:00 PM</span>
                                        </li>
                                        <li>
                                            <p>Friday - Saturday </p>
                                            <span>  11:00 AM - 5:00 PM</span>
                                        </li>
                                    </ul>
                                </div>
                                <!-- end footer-box-d -->
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end footer-in-main -->
                    </div>
                    <!-- end row -->
                </div>
                <!-- end container -->
                <div id="copyright" class="copyright-main">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <h6 class="copy-title"> Copyright &copy; 2017 Food Funday is powered by <a href="#" target="_blank"></a> </h6>
                            </div>
                        </div>
                        <!-- end row -->
                    </div>
                    <!-- end container -->
                </div>
                <!-- end copyright-main -->
            </div>
            <!-- end footer-box -->
        </div>
        <!-- end footer-main -->

        <a href="#" class="scrollup" style="display: none;">Scroll</a>

        <section id="color-panel" class="close-color-panel">
            <a class="panel-button gray2"><i class="fa fa-cog fa-spin fa-2x"></i></a>
            <!-- Colors -->
            <div class="segment">
                <h4 class="gray2 normal no-padding">Color Scheme</h4>
                <a title="orange" class="switcher orange-bg"></a>
                <a title="strong-blue" class="switcher strong-blue-bg"></a>
                <a title="moderate-green" class="switcher moderate-green-bg"></a>
                <a title="vivid-yellow" class="switcher vivid-yellow-bg"></a>
            </div>
        </section>

        <!-- ALL JS FILES -->
        <script src="js/all.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!-- ALL PLUGINS -->
        <script src="js/custom.js"></script>
    </body>
</html>
