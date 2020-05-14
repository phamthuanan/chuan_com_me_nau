<%-- 
    Document   : RecipeDetail
    Created on : May 12, 2020, 2:22:48 PM
    Author     : Pham An
--%>

<%@page import="java.util.StringTokenizer"%>
<%@page import="model.Recipe"%>
<%@page import="get.RecipeGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Công thức chi tiết</title>
        <link rel="stylesheet" href="css/style_detail_dish.css">
        <script src="js/modernizer.js"></script>
    </head>
    <body>
         <jsp:include page="header.jsp"></jsp:include>
        <% 
        RecipeGet recipeGet = new RecipeGet();  
        Recipe recipe = new Recipe();
    String recipeId = "";
     if (request.getParameter("recipeId") != null) {
          recipeId = request.getParameter("recipeId");
          recipe = recipeGet.getRecipe(Integer.parseInt(recipeId));
     }
    
            %>
        <div class="session-dish-detail">
        <div class="detail-dish">
            <div class="row">
                <br>
                <h3 style="color: white;"><a  href="index.jsp" style ="color:white;">Trang chủ</a> / <a href="Recipe.jsp"style ="color:white;">Công thức</a> / <%=recipe.getRecipeName()%></h3>
          <div class="leftcolumn">
            <div class="card">
                <div class="img-dish" ><iframe class="piture-dish" src="<%=recipe.getVideo() %>" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></div>
              
                <h2 class="name-dish"><b><%= recipe.getRecipeName()%></b></h2>
                <h4 class="name-athour">Tác giả: <%= recipe.getRecipeAuthor()%></h4>
              <p class="text-heading">Giới thiệu:</p>
              <p><%= recipe.getDescriptionRecipe()%></p>
            </div>
            <div class="card">
              <h2 class="text-heading"><b>Nguyên liệu</b></h2>
              <h5 class="text-heading">Phần ăn cho 2 người</h5>
                <ul class="ingredients-food" style="list-style-image: url('images/farm.png')"> 
                    <%
                        String ingredientRecipe = recipe.getIngredientRecipe();
                        StringTokenizer token = new StringTokenizer(ingredientRecipe, "-");
                        while (token.hasMoreTokens()) {
                            
                     %>  
                  <li> <%=token.nextToken()%></li><br>
                 <%}%>
                </ul>
            </div>
            <div class="card">
              <h2 class="text-heading"><b>Cách làm món ăn</b></h2>
              <hr>
                <ul class="list-to-do">
                    <%
                        String making = recipe.getMaking();
                        int step=1;
                        StringTokenizer token1 = new StringTokenizer(making, "-");
                        while (token1.hasMoreTokens()) {
                            
                     %>  
                     <li>Bước <%=step%><p><%=token1.nextToken()%></p></li>
                    <%step++;}%>
                </ul>
            </div>
            <div class="card">
              <h2 class="text-heading"><b>Bình luận</b></h2>
              <textarea name="text-comment" id="text-comment" class="text-comment" cols="97" rows="2"></textarea>
              
            </div>
          </div>
          <div class="rightcolumn">
            <div class="card">
              <h2 class="text-heading"><b>Thành phần dinh dưỡng</b></h2>
              <hr>
              <p>Calories: <%=recipe.getRecipeCalories()%>Kcal</p>
              <p>Bổ sung: <%=recipe.getNutritionIngredients()%></p>
            </div>
            <div class="card">
              <h2 class="text-heading"><b>Món liên quan</b></h2>
              <hr>
              <%
                  int categoryId= recipe.getCategoryId();
                  for (Recipe r : recipeGet.getListRecipeRelated(categoryId,Integer.parseInt(recipeId))){
                %>      
              <div class="fakeimg">
                  <a href="RecipeDetail.jsp?recipeId=<%=r.getRecipeId()%>"><img src="images/<%=r.getRecipeImage()%>" alt="ảnh món ăn" class="img-dish-add"></a>
                  <a href="RecipeDetail.jsp?recipeId=<%=r.getRecipeId()%>"class="link-dish"><b><p style="text-align: center;"><%=r.getRecipeName()%></p></b><p></p></a>
              </div>
                 <% }%>
              
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
