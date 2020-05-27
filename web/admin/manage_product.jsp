<%-- 
    Document   : manage_product
    Created on : May 17, 2020, 9:14:47 PM
    Author     : ACER
--%>

<%@page import="model.Admin"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Recipe" %>
<%@page import="get.RecipeGet"%>
<%@page import="model.Category"%>
<%@page import="get.CategoryGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet"  href="css/mos-style.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.min.css"
            integrity="sha256-L/W5Wfqfa0sdBNIKN9cG6QA5F2qx4qICmU2VgLruv9Y="
            crossorigin="anonymous"
          />

        <link
          rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/material-design-icons/3.0.1/iconfont/material-icons.min.css"
          integrity="sha256-x8PYmLKD83R9T/sYmJn1j3is/chhJdySyhet/JuHnfY="
          crossorigin="anonymous"
        />
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <link rel="stylesheet" href="css/style-dash.css" />
        <title>Quản lý công thức</title>
    </head>
    <body>
         <% 
        RecipeGet recipeGet = new RecipeGet();  
        CategoryGet categoryGet = new CategoryGet();
        
        ArrayList<Recipe> listRecipe = recipeGet.getListRecipe();
    
         %>
          <%
            Admin useradmin = (Admin) session.getAttribute("useradmin");
            if (useradmin == null) {
                response.sendRedirect("/chuancommenau/admin/login.jsp");
            }
        %>
            <nav class="navbar navbar-expand-lg navbar-dark bg-mattBlackLight fixed-top">
      <button class="navbar-toggler sideMenuToggler" type="button">
        <span class="navbar-toggler-icon"></span>
      </button>

                <a class="navbar-brand"  href="/chuancommenau/index.jsp"><img src="img/logo3.png" height="35px"></a>
      <button
        class="navbar-toggler"
        type="button"
        data-toggle="collapse"
        data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item dropdown">
            <a
              class="nav-link dropdown-toggle p-0"
              href="#"
              id="navbarDropdown"
              role="button"
              data-toggle="dropdown"
              aria-haspopup="true"
              aria-expanded="false"
            >
              <i class="material-icons icon">
                person
              </i>
              <span class="text"><%if(useradmin!=null){ %>Chào <%=useradmin.getAdminName()%> <% } %>
              </span>
            </a>
            <div
              class="dropdown-menu dropdown-menu-right"
              aria-labelledby="navbarDropdown"
            >
              <a class="dropdown-item" href="/chuancommenau/LogoutAdminServlet">Đăng xuất</a>
              
            </div>
          </li>
        </ul>
      </div>
    </nav>
    <div class="wrapper d-flex">
      <div class="sideMenu bg-mattBlackLight">
        <div class="sidebar">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a href="index.jsp" class="nav-link px-2">
                <i class="material-icons icon">
                  dashboard
                </i>
                  <span class="text">
                     Tổng quan
                  </span>
              </a>
            </li>
            <li class="nav-item">
              <a href="manage_product.jsp" class="nav-link px-2">
                <i class="material-icons icon">
                    pages
                </i>
                <span class="text" >Quản lý công thức</span>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link px-2">
                <i class="material-icons icon">
                  computer
                </i>
                <span class="text">Khóa học</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
      <div class="content">
        <main>            
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <h1 style="text-align: center;">QUẢN LÝ CÔNG THỨC</h1>
            <p style="text-align: center"><a href="/chuancommenau/admin/insert_recipe.jsp" >Thêm công thức</a></p>
            <table class="data" style="text-align: center" width="100%">
                <tr class="data">
                    <th class="data" width="10px" >STT</th>
                    <th class="data">Mã món</th>
                    <th class="data">Tên món</th>
                    <th class="data">Tên loại</th>
                    <th class="data">Hình ảnh</th>
                    <th class="data">Lượt xem</th>
                    <th class="data">Năng lượng</th>
                    <th class="data">Người đăng</th>
                    <th class="data" >Thành phần</th>
                    <th class="data">Chất dinh dưỡng</th>
                    <th class="data" >Cách làm</th>
                    <th class="data" >Mô tả món ăn</th>
                    <th class="data" width="50px">Link video</th>
                    
                    <th class="data" >Tùy chọn</th>
                </tr>
                <%
                    int count =0;
                    for(Recipe recipe : listRecipe){
                        count++;
                   
     
                                                       
                %>
                <tr class="data" style="text-align: left">
                    <td class="data" width="10px"><%=count%></td>
                    <td class="data"><%=recipe.getRecipeId()%></td>
                    <td class="data"><%=recipe.getRecipeName() %></td>
                    <td class="data"><%=categoryGet.getCategory(recipe.getCategoryId()).getCategoryName()%></td>
                    <td class="data"><%=recipe.getRecipeImage()%></td>
                    <td class="data"><%=recipe.getRecipeViews()%></td>
                    <td class="data"><%=recipe.getRecipeCalories()%></td>
                    <td class="data"><%=recipe.getRecipeAuthor()%></td>
                    <td class="data" ><%=recipe.getIngredientRecipe()%></td>
                    <td class="data" ><%=recipe.getNutritionIngredients()%></td>
                    <td class="data" ><%=recipe.getMaking()%></td>
                    <td class="data"><%=recipe.getDescriptionRecipe()%></td>
                    <td class="data" width="50px"><%=recipe.getVideo()%></td>
                    
                    <td class="data" width="75px">
                        <center>
                            <a href="/admin/update_recipe.jsp?command=update&recipe_id=<%=recipe.getRecipeId()%>">
                                Sửa
                            </a>&nbsp;| &nbsp;
                            <a href="/admin/ManageRecipeServlet?command=delete&recipe_id=<%=recipe.getRecipeId()%>">
                                Xóa
                            </a>
                        </center>
                    </td>
                  
                </tr>
                  <%  }%>
            </table>
             </main>
      </div>
    </div>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"
      integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.bundle.min.js"
      integrity="sha256-OUFW7hFO0/r5aEGTQOz9F/aXQOt+TwqI1Z4fbVvww04="
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jQuery-slimScroll/1.3.8/jquery.slimscroll.min.js"
      integrity="sha256-qE/6vdSYzQu9lgosKxhFplETvWvqAAlmAuR+yPh/0SI="
      crossorigin="anonymous"
    ></script>
    </body>
</html>
