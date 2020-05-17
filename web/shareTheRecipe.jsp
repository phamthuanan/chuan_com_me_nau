<%-- 
    Document   : community
    Created on : May 15, 2020, 7:38:17 PM
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
        <title>Chia sẻ công thức</title>
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
    <body style="width: 800px; margin: 60px auto">
        <div class="srf-community">
            <div class="modal-header"> 
                <div class="modal-title"> 
                    Chia sẻ công thức & bình luận
                </div>
                <a class="btn-close"><img src="images/cancel.png" alt="" class="ico-20"></a>
            </div>
            <div class="modal-body">
                <div>
                    <div class="user">
                        <img src="images/menu-item-thumbnail-01.jpg" alt="" class="avt" style="width: 75px; height: 75px">
                    </div>
                    <div class="form">
                        <div class="form-group">
                            <div class="attached-recipe">
                                <div class="no-choosen-recipe">
                                    Chọn công thức thực hiện
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
                                <textarea class="review-txt gray-box">Nguyên liệu, các bước thực hiện</textarea>
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
    </body>
</html>
