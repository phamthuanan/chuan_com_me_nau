<%-- 
    Document   : manage_product
    Created on : May 17, 2020, 9:14:47 PM
    Author     : ACER
--%>

<%@page import="model.Recipe"%>
<%@page import="get.RecipeGet"%>
<%@page import="get.CategoryGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý công thức</title>
    </head>
    <body>
         <% 
        RecipeGet recipeGet = new RecipeGet();  
        Recipe recipe = new Recipe();
        String recipeId = "";
        if (request.getParameter("recipeId") != null) {
          recipeId = request.getParameter("recipeId");
          recipe = recipeGet.getRecipe(Integer.parseInt(recipeId));
     }
    
            %>
    </body>
</html>
