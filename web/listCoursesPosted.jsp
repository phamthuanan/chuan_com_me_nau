<%-- 
    Document   : listCoursesPosted
    Created on : May 16, 2020, 8:38:42 PM
    Author     : Pham An
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="js/modernizer.js"></script>
        <link href="css/themeuser.css" rel="stylesheet" type="text/css"> 
    </head>
    <body>
         <jsp:include page="header.jsp"></jsp:include>
        <section class="breadcrumb-bg">                
                <div class="theme-container container ">                       
                    <div class="site-breadcumb">                        
                        <h2 class="section-title"> <span class="light-font"></span> <strong class="clr-txt">Quản lý tài khoản </strong> </h2>
                         <h3 style="color: white;"><a  href="index.jsp" style ="color:white;">Trang chủ</a> / <a href="listCoursesPosted.jsp"style ="color:white;">Khóa học đã đăng</a></h3>
                    </div>  
                </div>
            </section>
            <!--Breadcrumb Section End-->

            <!-- My Account Starts-->
            <section class="account-page ptb-50">
                <div class="container"> 
                    <div class="row">  
                        <!-- Sidebar Starts --> 
                        <aside class="col-md-3 col-sm-4">
                            <div class="widget-wrap">
                                <h2 class="widget-title"> <span class="light-font">Thông tin </span> <strong>tài khoản</strong> </h2>
                                <div class="divider-full-1"></div>
                                <ul class="cate-widget">
                                  <li> <i class="fa fa-arrow-circle-o-right clr-txt"></i>  <a href="updateAccountInformation.jsp"> Chỉnh sửa thông tin cá nhân </a></li>
                                    <li> <i class="fa fa-arrow-circle-o-right clr-txt"></i> <a href="changePasswordUser.jsp"> Thay đổi mật khẩu</a></li>                                        
                                    <li> <i class="fa fa-arrow-circle-o-right clr-txt"></i> <a href="changeAvatar.jsp"> Thay đổi ảnh đại diện</a></li>
                                    <li> <i class="fa fa-arrow-circle-o-right clr-txt"></i> <a href="listRecipePosted.jsp"> Công thức đã đăng</a></li>
                                    <li> <i class="fa fa-arrow-circle-o-right clr-txt"></i> <a href="order-history.html"> Đăng công thức mới</a></li>
                                    <li> <i class="fa fa-arrow-circle-o-right clr-txt"></i> <a href="listCoursesPosted.jsp"> Khóa học đã đăng</a></li>
                                    <li> <i class="fa fa-arrow-circle-o-right clr-txt"></i> <a href="return.html"> Đăng khóa học mới</a></li>
                                    
                                </ul>
                            </div>
                        </aside>   
                        <!-- Sidebar Ends --> 

                        <aside class="col-md-9 col-sm-8 ptb-15">
                            <table>
                                <tr>
                                  <th>Mã khóa học</th>
                                  <th>Tên khóa học</th>
                                  <th>Giáo viên</th>
                                  <th>Loại khóa học</th>
                                </tr>
                                <tr>
                                  <td>001</td>
                                  <td>Làm bánh kem cưới</td>
                                  <td>Đầu bếp ABC</td>
                                  <td>Làm bánh</td>
                                </tr>
                                <tr>
                                  <td>002</td>
                                  <td>Francisco Chang</td>
                                  <td>Mexico</td>
                                  <td>Khai vị</td>
                                </tr>
                              </table>
                        </aside>                        
                    </div>
                </div>
            </section>
            <!-- / My Account Ends --> 
            <jsp:include page="footer.jsp"></jsp:include>
    <script src="js/all.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
    </body>
</html>
