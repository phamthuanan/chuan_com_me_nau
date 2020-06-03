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
        <jsp:include page="header.jsp"></jsp:include>


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
                                <div class="fake-form ">
                                    <div class="offer-item2">
                                        <img src="images/menu-item-thumbnail-01.jpg" alt="" class="img-responsive" style="width: 80px">
                                        <div class="profile">
                                            <a href="shareTheRecipe.jsp"><p>Chia sẻ món ngon của bạn với cộng đồng ...</p></a>
                                        </div>
                                    </div>
                                    <div class="blog-btn-v">
                                        <button class="hvr-underline-from-center" type="button" data-toggle="modal" data-target="#myModal" href="shareTheRecipe.jsp">Đăng bài</button>
                                    </div>
                                </div> 
                            </div>
                            
                            <div class="srf-community modal" id="myModal" style="width: 800px; margin: 60px auto; padding-right: 0">
                                <div class="modal-header"> 
                                    <div class="modal-title"> 
                                        Chia sẻ công thức & bình luận
                                    </div>
                                    <a class="btn-close" data-dismiss="modal"><img src="images/cancel.png" alt="" class="ico-20"></a>
                                </div>
                                <div class="modal-body">
                                    <div>
                                        <div class="user">
                                            <img src="images/menu-item-thumbnail-01.jpg" alt="" class="avt" style="width: 75px; height: 75px">
                                        </div>
                                        <div class="form">
                                            <div class="form-group" style="margin-bottom: 0">
                                                <div class="attached-recipe">
                                                    <div class="no-choosen-recipe">
                                                        Tên công thức
                                                    </div>
                                                </div>
                                            </div>
                                                <div class="form-row">
                                                    <div style="clear: both" class="attached-photos-container">
                                                        <ul class="sort-able">
                                                            <li>
                                                                <div class="attached-photo">
                                                                    <div><img src="images/menu-item-thumbnail-01.jpg" style="width: 100px; height: 100px;">
                                                                    </div>
                                                                    <a class="remove">+</a>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                        <div class=" attached-photo">
                                                            <div class="review-img-upload-box-item">
                                                                    <img src="images/camera2.png" class="img-64">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <textarea class="review-txt gray-box" placeholder="Nguyên liệu, các bước thực hiện"></textarea>
                                                </div>
                                                <div class="form-group form-row">
                                                    <div>
                                                        <span style="font-weight: bold; padding: 5px 0px; display: block;"><span>Video (Youtube)</span></span>
                                                    </div>
                                                    <div>
                                                        <input class="gray-box" type="text" placeholder="Nhập liên kết đến video trên Youtube bạn muốn chia sẻ">
                                                    </div>
                                                </div>
                                                <div class="acts">
                                                    <button class="btn-submit-review">Chia sẻ công thức & bình luận</button>
                                                </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="gal-container clearfix">
                                <div class="fake-form">
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
                                <div class="fake-form">
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
                                <div class="fake-form">
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

        
        <jsp:include page="footer.jsp"></jsp:include>

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