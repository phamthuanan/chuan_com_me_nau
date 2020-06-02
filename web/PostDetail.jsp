<%-- 
    Document   : PostDetail
    Created on : Jun 2, 2020, 1:20:36 PM
    Author     : Duong Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bài viết chi tiết</title>
        <link rel="stylesheet" href="css/style_detail_dish.css">
        <link rel="stylesheet" href="css/style_review.css">
        <script src="js/modernizer.js"></script>
    </head>
    <body>
         <jsp:include page="header.jsp"></jsp:include>
        <div class="session-dish-detail">
        <div class="detail-dish">
            <div class="row">
                <br>
                <h3 style="color: white;"><a  href="index.jsp" style ="color:white;">Trang chủ</a> / <a href="Recipe.jsp"style ="color:white;">Cộng đồng</a> / </h3>
          <div class="leftcolumn">
            <div class="card">
                <div class="img-dish" ><iframe class="piture-dish" src="" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
              
                <h2 class="name-dish"><b></b></h2>
                <h4 class="name-athour">Tác giả: </h4>
              <p class="text-heading">Giới thiệu:</p>
              <p></p>
            </div>
            <div class="card">
              <h2 class="text-heading"><b>Nguyên liệu</b></h2>
              <h5 class="text-heading">Phần ăn cho 2 người</h5>
                <ul class="ingredients-food" style="list-style-image: url('images/farm.png')"> 
                    
                  <li> </li><br>
                 
                </ul>
            </div>
            <div class="card">
              <h2 class="text-heading"><b>Cách làm món ăn</b></h2>
              <hr>
                <ul class="list-to-do">
                    
                     <li>Bước </p></li>
                    
                </ul>
            </div>
            <div class="card">
                 
                    <h2 class="text-heading"><b>Bình luận</b></h2>
                    <form action="ReviewServlet" method="POST">
                         
                    <div>
                        <p style="color:red"></p>
                    </div>
                        
                        <input type="hidden" name="recipeId" value="">
                        <input type="hidden" name="userId" value="">
                    <textarea name="text-comment" id="text-comment" class="text-comment" cols="120" rows="3"></textarea>
                    <input type="submit" class="button_submit" value="Gửi bình luận">
                     </form>
                     
                    <h2 class="text-heading"><b>Hãy đăng nhập để bình luận! <span><a href="signup-signin.jsp"> Đăng nhập</a></span> </b></h2>
                   
            </div>
              <div class="card">
                  
                      <h2 class="mb-5"><b> bình luận</b></h2>
                    <ul class="comment-list">
                        
                      <li class="comment">
                        <div class="vcard bio">
                            <img src="images/" alt="Image placeholder">
                        </div>
                        <div class="comment-body">
                            <h3></h3>
                          <div class="meta"></div>
                          <p></p>
                        </div>
                      </li>
                            
                    </ul>
             
               </div>
          </div>
          <div class="rightcolumn">
            <div class="card">
              <h2 class="text-heading"><b>Thành phần dinh dưỡng</b></h2>
              <hr>
              <p>Calories: Kcal</p>
              <p>Bổ sung: </p>
            </div>
            <div class="card">
              <h2 class="text-heading"><b>Món liên quan</b></h2>
              <hr>
                 
              <div class="fakeimg">
                  <a href="CountViewsServlet?recipeId=&&views="><img src="images/" alt="ảnh món ăn" class="img-dish-add"></a>
                  <a href="CountViewsServlet?recipeId=&&views="class="link-dish"><b><p style="text-align: center;"></p></b><p></p></a>
              </div>
                 
             </div>
            </div>
          </div>
        </div> 
        </div>
      </div>
       <jsp:include page="footer.jsp"></jsp:include>
           <script src="js/all.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/custom.js"></script>
    </body>
</html>
