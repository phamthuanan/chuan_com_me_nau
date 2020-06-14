<%-- 
    Document   : updateRecipe
    Created on : Jun 2, 2020, 9:14:22 PM
    Author     : ACER
--%>


<%@page import="model.Course"%>
<%@page import="java.util.ArrayList"%>
<%@page import="get.CourseGet"%>
<%@page import="model.Recipe"%>
<%@page import="get.RecipeGet"%>
<%@page import="model.Admin"%>
<%@page import="model.Category"%>
<%@page import="get.CategoryGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cập nhật khóa học</title>
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
        <link rel="stylesheet" href="css/style-dash.css" />
    </head>
    <body>
        
         <%
            Admin useradmin = (Admin) session.getAttribute("useradmin");
            if (useradmin == null) {
                response.sendRedirect("/chuancommenau/admin/login.jsp");
            }
        %>    <% 
            Course course = new Course();
        CourseGet courseGet = new CourseGet();  
        CategoryGet categoryGet = new CategoryGet();
        
        ArrayList<Course> listCourse = courseGet.getListCourse();
    
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
          <a class="navbar-brand"  href="/chuancommenau/index.jsp"><img src="img/logo3.png" ></a>
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
                <span class="text">Quản lý công thức</span>
              </a>
            </li>
            <li class="nav-item">
              <a href="manage_course.jsp" class="nav-link px-2">
                <i class="material-icons icon">
                  computer
                </i>
                <span class="text">Khóa học</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
      <div class="content" style="background-color: white;">
        <main>            
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <p></p>
            <div style="background-color: #2D4435">
                <h3  align="center" style="margin-top: 30px;background-color: white;"><b>CẬP NHẬT CÔNG THỨC</b></h3>
                <form  action="/chuancommenau/ManageCourse" method="post" >
                    <table width="100%" style="margin-left: 380px;background-color: #2D4435;color: white;">
                      <tr>
                            <td width="125px">
                                <b>Mã công thức</b>
                            </td>
                            <td>
                                <input type="text"  name="mamon1" value="<%=course.getCourseId() %>"/>
                            </td>
                        </tr>
                      
                        <tr>
                            <td width="125px">
                                <b>Tên công thức</b>
                                <br><br>
                            </td>
                            <td>
                                <input type="text" name="tenmon1" size="50" value="<%=course.getCourseName()%>"/>
                            <br><br>
                            </td>  
                        </tr>
                        <tr>
                            <td>
                                <b>Loại công thức</b>
                                <br><br>
                            </td>
                            <td>
                               <div>
                                    <span></span>
                                    <!--Lấy dữ liệu để hiển thị loại món  -->
                                    <select name="macongthuc1">
                                        <%
                                            for(Category c : categoryget.getListCategory()){ 
                                                
                                        %>
                                        <option value="<%=c.getCategoryId()%>">
                                            <%=c.getCategoryName()%>
                                            
                                        </option>
                                        <%}%>
                                    </select>
                                </div>
                                     <input type="hidden"  name="" />
                                     <br>
                            </td>
                            
                        </tr>
                     
                        <tr>
                            <td>
                                <b>Hình</b>
                                <br><br>
                            </td>
                            <td>
                                <img src="../images/<%=courseGet.getRecipeImage()%>" width="250" height="250" name="hinh1" />
                                <input type="file" name="hinh1" />
                            <br><br>
                            </td>
                          
                        </tr>
                        <tr>
                            <td>
                                <b>Lượt xem</b>
                                <br><br>
                            </td>
                            <td>
                                <input type="text"  name="view1" size="10" value="<%=course.getRecipeViews()%>"/>
                            <br><br>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <b>Số Calo</b>
                                <br><br>
                            </td>
                            <td>
                                <input type="text"  name="calo1" size="10" value="<%=course.getRecipeCalories()%>"/>
                            <br><br>
                            </td>
                        </tr>
                       
                        <tr>
                            <td>
                                <b>Tác giả</b>
                                <br><br>
                            </td>
                            <td>
                                <input type="text"  name="tacgia1" size="50" value="<%=course.getRecipeAuthor()%>"/>
                            <br><br>
                            </td>
                        </tr>
                       
                        <tr>
                            <td>
                                <b>Thành phần</b>
                                <br><br>
                            </td>
                            <td>
                                <p>Từng thành phần cách nhau bởi dấu "-"</p>
                                <textarea cols="100" rows="5" name="thanhphan1" ><%=course.getIngredientRecipe()%>" </textarea>
                            <br><br>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                <b>Dinh dưỡng</b>
                                <br><br>
                            </td>
                            <td>
                                <textarea cols="100" rows="5" name="dinhduong1" ><%=course.getNutritionIngredients()%>"</textarea>
                            <br><br>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>
                                <b>Cách làm</b>
                                <br><br>
                            </td>
                            <td>
                                <p>Từng bước làm cách nhau bởi dấu "-"</p>
                                <textarea cols="100" rows="5" name="cachlam1" ><%=course.getMaking()%>" </textarea>
                            <br><br>
                            </td>
                        </tr>
                       
                        <tr>
                            <td>
                                <b>Mô tả món ăn</b>
                                <br><br>
                            </td>
                            <td>
                                <textarea cols="100" rows="5" name="mota1" ><%=course.getDescriptionRecipe()%>"</textarea>
                            <br><br>
                            <br><br>
                            </td>
                        </tr>
                      <br><br>
                        <tr>
                            <td>
                                <b>Video hướng dẫn</b>
                                <br><br>
                            </td>
                            <td>
                                <input type="text" name="video1" size="50" value="<%=course.getVideo()%>"/>
                                <br>
                                <br>
                               
                            <br><br>
                            </td>
                            <tr><td></td><td>
                                    <input type="hidden" name="recipe_id" value="<%=request.getParameter("recipe_id")%>">
                                <button type="submit" value="update" name="command">Cập nhật</button>
                               
<!--                                <input type="hidden" name="command" value="insert">
                                <input type="submit" class="button" value="Thêm công thức" />-->
                                
                                <br><br>
                                
                            </td></tr>
                    </table>
                </form>    
              
            </div> 
            
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

