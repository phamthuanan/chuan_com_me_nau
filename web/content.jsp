<%-- 
    Document   : content
    Created on : May 13, 2020, 8:25:41 PM
    Author     : Pham An
--%>

<%@page import="model.Recipe"%>
<%@page import="get.RecipeGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>

    <!-- Basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0">

    <!-- Site Metas -->
    <title>Chuẩn cơm mẹ nấu</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon" />
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- color -->
    <link id="changeable-colors" rel="stylesheet" href="css/colors/orange.css" />

    <!-- Modernizer -->
    <script src="js/modernizer.js"></script>

</head>

<body>
    
    <div id="about" class="about-main pad-top-100 pad-bottom-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                        <h2 class="block-title"> Giới thiệu </h2>
                        <h3>IT STARTED, QUITE SIMPLY, LIKE THIS...</h3>
                        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusm incididunt ut labore et dolore magna aliqua. Ut enim ad minim venia, nostrud exercitation ullamco. </p>

                        <p> Aenean commodo ligula eget dolor aenean massa. Cum sociis nat penatibu set magnis dis parturient montes, nascetur ridiculus mus. quam felisorat, ultricies nec, Aenean commodo ligula eget dolor penatibu set magnis is parturient montes, nascetur ridiculus mus. quam felisorat, ultricies nec, pellentesque eu, pretium quis, sem. quat massa quis enim. Donec vitae sapien ut libero venenatis fauci Nullam quis ante. Etiam sit amet rci eget eros. </p>

                        <p> Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusm incididunt ut labore et dolore magna aliqua. Ut enim ad minim venia, nostrud exercitation ullamco. </p>
                    </div>
                </div>
                <!-- end col -->
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                        <div class="about-images">
                            <img class="about-main" src="images/about-main.jpg" alt="About Main Image">
                            <img class="about-inset" src="images/about-inset.jpg" alt="About Inset Image">
                        </div>
                    </div>
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>

    <div class="special-menu pad-top-100 parallax">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                        <h2 class="block-title color-white text-center"> Công thức mới </h2>
                        <h5 class="title-caption text-center"> Hãy cùng Chuẩn cơm mẹ nấu bỏ túi những công thức món ăn mới vô cùng đặc biệt ngày hôm nay nha! </h5>
                    </div>
                    <div class="special-box">
                        <div id="owl-demo">
                            <%
                                RecipeGet recipeGet = new RecipeGet();
                                Recipe recipe1= recipeGet.getRecipe(25);
                                Recipe recipe2= recipeGet.getRecipe(26);
                                Recipe recipe3= recipeGet.getRecipe(27);
                                %>
                            <div class="item item-type-zoom">
                                <a href="RecipeDetail.jsp?recipeId=<%=recipe1.getRecipeId()%>" class="item-hover">
                                    <div class="item-info">
                                        <div class="headline">
                                            <%= recipe1.getRecipeName()%>
                                            <div class="line"></div>
                                            <div class="dit-line">Cà phê bọt biển hay còn gọi là cà phê Dalgona là một món cà phê đang rất hot tại Hàn Quốc.</div>
                                        </div>
                                    </div>
                                </a>
                                <div class="item-img">
                                    <img src="images/<%=recipe1.getRecipeImage()%>" alt="sp-menu">
                                </div>
                            </div>
                            <div class="item item-type-zoom">
                                <a href="RecipeDetail.jsp?recipeId=<%=recipe2.getRecipeId()%>" class="item-hover">
                                    <div class="item-info">
                                        <div class="headline">
                                            <%= recipe2.getRecipeName()%>
                                            <div class="line"></div>
                                            <div class="dit-line">Xôi hoa đậu là món ăn cực hot trên mạng xã hội thời gian vừa qua. Món xôi này xuất phát từ Hàn Quốc, chiếc bánh gốc có tên gọi là Bojagi cake.</div>
                                        </div>
                                    </div>
                                </a>
                                <div class="item-img">
                                    <img src="images/<%=recipe2.getRecipeImage()%>" alt="sp-menu">
                                </div>
                            </div>
                            <div class="item item-type-zoom">
                                <a href="RecipeDetail.jsp?recipeId=<%=recipe3.getRecipeId()%>" class="item-hover">
                                    <div class="item-info">
                                        <div class="headline">
                                            <%= recipe3.getRecipeName()%>
                                            <div class="line"></div>
                                            <div class="dit-line">Lê Chưng Thanh Mát - được dân gian ví như bài thuốc trị ho khan hiệu quả.</div>
                                        </div>
                                    </div>
                                </a>
                                <div class="item-img">
                                    <img src="images/<%=recipe3.getRecipeImage()%>" alt="sp-menu">
                                </div>
                            </div>
                            <div class="item item-type-zoom">
                                <a href="RecipeDetail.jsp?recipeId=<%=recipe1.getRecipeId()%>" class="item-hover">
                                    <div class="item-info">
                                        <div class="headline">
                                            <%= recipe1.getRecipeName()%>
                                            <div class="line"></div>
                                            <div class="dit-line">Cà phê bọt biển hay còn gọi là cà phê Dalgona là một món cà phê đang rất hot tại Hàn Quốc.</div>
                                        </div>
                                    </div>
                                </a>
                                <div class="item-img">
                                    <img src="images/<%=recipe1.getRecipeImage()%>" alt="sp-menu">
                                </div>
                            </div>
                            <div class="item item-type-zoom">
                                <a href="RecipeDetail.jsp?recipeId=<%=recipe2.getRecipeId()%>" class="item-hover">
                                    <div class="item-info">
                                        <div class="headline">
                                            <%= recipe2.getRecipeName()%>
                                            <div class="line"></div>
                                            <div class="dit-line">Xôi hoa đậu là món ăn cực hot trên mạng xã hội thời gian vừa qua. Món xôi này xuất phát từ Hàn Quốc, chiếc bánh gốc có tên gọi là Bojagi cake.</div>
                                        </div>
                                    </div>
                                </a>
                                <div class="item-img">
                                    <img src="images/<%=recipe2.getRecipeImage()%>" alt="sp-menu">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end special-box -->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end special-menu -->

    <div id="menu" class="menu-main pad-top-100 pad-bottom-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                        <h2 class="block-title text-center">
						Công thức 	
					</h2>
                        <p class="title-caption text-center">Hãy cùng chúng tôi khám phá vô vàng những công thức món ăn tuyệt vời nhất từ những vị đầu bếp tài năng đến những vị đầu bếp tại ra nhiều kinh nghiệm. </p>
                    </div>
                    <div class="tab-menu">
                        <div class="slider slider-nav">
                            <div class="tab-title-menu">
                                <h2>Khai vị</h2>
                                <p> <i class="flaticon-canape"></i> </p>
                            </div>
                            <div class="tab-title-menu">
                                <h2>Món chính</h2>
                                <p> <i class="flaticon-dinner"></i> </p>
                            </div>
                            <div class="tab-title-menu">
                                <h2>Món tráng miệng</h2>
                                <p> <i class="flaticon-desert"></i> </p>
                            </div>
                            <div class="tab-title-menu">
                                <h2>Đồ uống</h2>
                                <p> <i class="flaticon-coffee"></i> </p>
                            </div>
                        </div>
                        <div class="slider slider-single">
                            <div>
                                <%
                                    
                                    for(Recipe r: recipeGet.getList4RecipeByCategory(1)){
                                        %>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <div class="offer-item">
                                        <a href="RecipeDetail.jsp?recipeId=<%=r.getRecipeId()%>"><img src="images/<%=r.getRecipeImage()%>" alt="" class="img-responsive"></a>
                                        <div>
                                            <a href="RecipeDetail.jsp?recipeId=<%=r.getRecipeId()%>"><h3><%=r.getRecipeName()%></h3></a>
                                            <p>
                                                <span>Công thức bởi: <%= r.getRecipeAuthor()%></span> <br>
                                                <span>Lượt xem:<%=r.getRecipeViews()%></span>
                                            </p>
                                        </div>
                                        <span class="offer-price" style="font-size: 20px;"><%=r.getRecipeCalories()%>kcal</span>
                                    </div>
                                </div>
                                   <%}%>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="reserve-book-btn text-center">
                                       <a href="Recipe.jsp?categoryid=1"><button class="hvr-underline-from-center" type="button"  id="submit">Xem thêm </button></a> 
                                    </div>
                                </div>
                                <!-- end col -->
                            </div>
                             <div>
                                <%
                                    for(Recipe r: recipeGet.getList4RecipeByCategory(2)){
                                        %>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <div class="offer-item">
                                        <a href="RecipeDetail.jsp?recipeId=<%=r.getRecipeId()%>"><img src="images/<%=r.getRecipeImage()%>" alt="" class="img-responsive"></a>
                                        <div>
                                            <a href="RecipeDetail.jsp?recipeId=<%=r.getRecipeId()%>"><h3><%=r.getRecipeName()%></h3></a>
                                            <p>
                                                <span>Công thức bởi: <%= r.getRecipeAuthor()%></span> <br>
                                                <span>Lượt xem:<%=r.getRecipeViews()%></span>
                                            </p>
                                        </div>
                                        <span class="offer-price" style="font-size: 20px;"><%=r.getRecipeCalories()%>kcal</span>
                                    </div>
                                </div>
                                   <%}%>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="reserve-book-btn text-center">
                                       <a href="Recipe.jsp?categoryid=2"><button class="hvr-underline-from-center" type="button"  id="submit">Xem thêm </button></a> 
                                    </div>
                                </div>
                                <!-- end col -->
                            </div>
                           <div>
                                <%
                                    for(Recipe r: recipeGet.getList4RecipeByCategory(3)){
                                        %>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <div class="offer-item">
                                        <a href="RecipeDetail.jsp?recipeId=<%=r.getRecipeId()%>"><img src="images/<%=r.getRecipeImage()%>" alt="" class="img-responsive"></a>
                                        <div>
                                            <a href="RecipeDetail.jsp?recipeId=<%=r.getRecipeId()%>"><h3><%=r.getRecipeName()%></h3></a>
                                            <p>
                                                <span>Công thức bởi: <%= r.getRecipeAuthor()%></span> <br>
                                                <span>Lượt xem:<%=r.getRecipeViews()%></span>
                                            </p>
                                        </div>
                                        <span class="offer-price" style="font-size: 20px;"><%=r.getRecipeCalories()%>kcal</span>
                                    </div>
                                </div>
                                   <%}%>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="reserve-book-btn text-center">
                                       <a href="Recipe.jsp?categoryid=3"><button class="hvr-underline-from-center" type="button"  id="submit">Xem thêm </button></a> 
                                    </div>
                                </div>
                                <!-- end col -->
                            </div>
                           <div>
                                <%
                                    for(Recipe r: recipeGet.getList4RecipeByCategory(4)){
                                        %>
                                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 ">
                                    <div class="offer-item">
                                        <a href="RecipeDetail.jsp?recipeId=<%=r.getRecipeId()%>"><img src="images/<%=r.getRecipeImage()%>" alt="" class="img-responsive"></a>
                                        <div>
                                            <a href="RecipeDetail.jsp?recipeId=<%=r.getRecipeId()%>"><h3><%=r.getRecipeName()%></h3></a>
                                            <p>
                                                <span>Công thức bởi: <%= r.getRecipeAuthor()%></span> <br>
                                                <span>Lượt xem:<%=r.getRecipeViews()%></span>
                                            </p>
                                        </div>
                                        <span class="offer-price" style="font-size: 20px;"><%=r.getRecipeCalories()%>kcal</span>
                                    </div>
                                </div>
                                   <%}%>
                                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                    <div class="reserve-book-btn text-center">
                                       <a href="Recipe.jsp?categoryid=4"><button class="hvr-underline-from-center" type="button"  id="submit">Xem thêm </button></a> 
                                    </div>
                                </div>
                                <!-- end col -->
                            </div>
                        </div>
                    </div>
                    <!-- end tab-menu -->
                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end menu -->


    <div id="our_team" class="team-main pad-top-100 pad-bottom-100 parallax">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                        <h2 class="block-title text-center">
						THÀNH VIÊN 	
					</h2>
                        <p class="title-caption text-center">Đội chúng tôi gồm 5 thành viên - những chàng trai bản lĩnh, tự tin </p>
                    </div>
                    <div class="team-box">

                        <div class="row">
                            <div class="col-xs-2 col-half-offset">
                                <div class="sf-team">
                                    <div class="thumb">
                                        <a href="#"><img src="images/ANH.jpg" alt=""></a>
                                    </div>
                                    <div class="text-col">
                                        <h3>Trần Tiến Anh</h3>
                                        <p>Khoa: Khoa học và kỹ thuật thông tin</p>
                                        <p>MSSV: 17520254</p>
                                        <p>Nơi sinh: Bình Phước</p>
                                       
                                        <ul class="team-social">
                                            <li><a href="https://facebook.com/tienanh424"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="https://linkedin/tienanh424"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-xs-2 col-half-offset">
                                <div class="sf-team">
                                    <div class="thumb">
                                        <a href="#"><img src="images/staff-01.jpg" alt=""></a>
                                    </div>
                                    <div class="text-col">
                                        <h3>Phạm Nhật Duy</h3>
                                        <p>Khoa: Khoa học và kỹ thuật thông tin</p>
                                        <p>MSSV: 17520404</p>
                                        <p>Nơi sinh: Kiên Giang</p>
                                        <ul class="team-social">
                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-xs-2 col-half-offset">
                                <div class="sf-team">
                                    <div class="thumb">
                                        <a href="#"><img src="images/staff-01.jpg" alt=""></a>
                                    </div>
                                    <div class="text-col">
                                        <h3>Phạm Thuận An</h3>
                                        <p>Khoa: Khoa học và kỹ thuật thông tin</p>
                                        <p>MSSV: 17520219</p>
                                        <p>Nơi sinh: Bình Thuận</p>
                                        <ul class="team-social">
                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-xs-2 col-half-offset">
                                <div class="sf-team">
                                    <div class="thumb">
                                        <a href="#"><img src="images/staff-02.jpg" alt=""></a>
                                    </div>
                                    <div class="text-col">
                                        <h3>Nguyễn Hữu Dương</h3>
                                        <p>Khoa: Khoa học và kỹ thuật thông tin</p>
                                        <p>MSSV: 17520383</p>
                                        <p>Nơi sinh: </p>
                                        <ul class="team-social">
                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                            <div class="col-xs-2 col-half-offset">
                                <div class="sf-team">
                                    <div class="thumb">
                                        <a href="#"><img src="images/staff-03.jpg" alt=""></a>
                                    </div>
                                    <div class="text-col">
                                        <h3>Nguyễn Mạnh Hào</h3>
                                        <p>Khoa: Khoa học và kỹ thuật thông tin</p>
                                        <p>MSSV: 1752</p>
                                        <p>Nơi sinh: Đắk Lắk </p>
                                        <ul class="team-social">
                                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                        </div>
                        <!-- end row -->

                    </div>
                    <!-- end team-box -->

                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end team-main -->

    <div id="gallery" class="gallery-main pad-top-100 pad-bottom-100">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                        <h2 class="block-title text-center">
						Our Gallery	
					</h2>
                        <p class="title-caption text-center">There are many variations of passages of Lorem Ipsum available </p>
                    </div>
                    <div class="gal-container clearfix">
                        <div class="col-md-8 col-sm-12 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#1">
                                    <img src="images/gallery_01.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="1" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="images/gallery_01.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 1 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#2">
                                    <img src="images/gallery_02.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="2" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="images/gallery_02.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 2 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#3">
                                    <img src="images/gallery_03.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="3" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="images/gallery_03.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 3 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#4">
                                    <img src="images/gallery_04.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="4" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="images/gallery_04.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 4 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#5">
                                    <img src="images/gallery_05.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="5" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="images/gallery_05.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 5 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#9">
                                    <img src="images/gallery_06.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="9" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="images/gallery_06.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 6 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8 col-sm-12 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#10">
                                    <img src="images/gallery_07.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="10" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="images/gallery_07.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 7 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#11">
                                    <img src="images/gallery_08.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="11" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="images/gallery_08.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 8 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#12">
                                    <img src="images/gallery_09.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="12" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="images/gallery_09.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 9 one on my Gallery</h4>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-6 co-xs-12 gal-item">
                            <div class="box">
                                <a href="#" data-toggle="modal" data-target="#13">
                                    <img src="images/gallery_10.jpg" alt="" />
                                </a>
                                <div class="modal fade" id="13" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                                            <div class="modal-body">
                                                <img src="images/gallery_10.jpg" alt="" />
                                            </div>
                                            <div class="col-md-12 description">
                                                <h4>This is the 10 one on my Gallery</h4>
                                            </div>
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

    <div id="blog" class="blog-main pad-top-100 pad-bottom-100 parallax">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <h2 class="block-title text-center">
					Our Blog 	
				</h2>
                    <div class="blog-box clearfix">
                        <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                            <div class="col-md-6 col-sm-6">
                                <div class="blog-block">
                                    <div class="blog-img-box">
                                        <img src="images/featured-image-01.jpg" alt="" />
                                        <div class="overlay">
                                            <a href=""><i class="fa fa-link" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                    <div class="blog-dit">
                                        <p><span>25 NOVEMBER, 2014</span></p>
                                        <h2>LATEST RECIPES JUST IN!</h2>
                                        <h5>BY John Doggett</h5>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                        </div>
                        <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                            <div class="col-md-6 col-sm-6">
                                <div class="blog-block">
                                    <div class="blog-img-box">
                                        <img src="images/featured-image-02.jpg" alt="" />
                                        <div class="overlay">
                                            <a href=""><i class="fa fa-link" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                    <div class="blog-dit">
                                        <p><span>2 NOVEMBER, 2014</span></p>
                                        <h2>NEW RECRUITS HAVE ARRIVED!</h2>
                                        <h5>BY Jeffrey Spender</h5>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                        </div>
                        <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                            <div class="col-md-6 col-sm-6">
                                <div class="blog-block">
                                    <div class="blog-img-box">
                                        <img src="images/featured-image-03.jpg" alt="" />
                                        <div class="overlay">
                                            <a href=""><i class="fa fa-link" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                    <div class="blog-dit">
                                        <p><span>4 NOVEMBER, 2014</span></p>
                                        <h2>BAKING TIPS FROM THE PROS</h2>
                                        <h5>BY Monica Reyes</h5>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                        </div>
                        <div class="wow fadeIn" data-wow-duration="1s" data-wow-delay="0.1s">
                            <div class="col-md-6 col-sm-6">
                                <div class="blog-block">
                                    <div class="blog-img-box">
                                        <img src="images/featured-image-04.jpg" alt="" />
                                        <div class="overlay">
                                            <a href=""><i class="fa fa-link" aria-hidden="true"></i></a>
                                        </div>
                                    </div>
                                    <div class="blog-dit">
                                        <p><span>12 NOVEMBER, 2014</span></p>
                                        <h2>ALL YOUR EGGS BELONG TO US</h2>
                                        <h5>BY John Doggett</h5>
                                    </div>
                                </div>
                            </div>
                            <!-- end col -->
                        </div>
                    </div>
                    <!-- end blog-box -->

                    <div class="blog-btn-v">
                        <a class="hvr-underline-from-center" href="#">View the Blog</a>
                    </div>

                </div>
                <!-- end col -->
            </div>
            <!-- end row -->
        </div>
        <!-- end container -->
    </div>
    <!-- end blog-main -->
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
        
    <!-- ALL JS FILES -->
    <script src="js/all.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
</body>
</html>
