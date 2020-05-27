/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import get.CategoryGet;
import get.RecipeGet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;
import model.Recipe;
/**
 *
 * @author ACER
 */
public class ManageRecipeServlet extends HttpServlet{
    RecipeGet recipeGet = new RecipeGet();
    
      @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
       //lấy dữ liệu từ các trường nhập liệu tại form insert
     int view =0;
     String recipe_id = request.getParameter("recipe_id");
     String tenmon = request.getParameter("tenmon");
     int mact = Integer.parseInt(request.getParameter("macongthuc"));
     int calo = Integer.parseInt(request.getParameter("calo"));
     String tacgia = request.getParameter("tacgia");
     String video = request.getParameter("video");
     String dinhduong= request.getParameter("dinhduong");
     String thanhphan = request.getParameter("thanhphan");
     String motamon = request.getParameter("mota");
     String cachlam = request.getParameter("cachlam");
     int userid =0;

        String url = "";
        try {
            switch (command) {

                case "delete":
                    recipeGet.deleteRecipe(Integer.parseInt(recipe_id));
                    url = "/admin/manage_product.jsp";
                    break;
                    
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        
        String tenmon = request.getParameter("tenmon");
       
        

        String url = "", error = "";
        if (tenmon.equals("")) {
            error = "Vui lòng nhập tên món ăn!";
            request.setAttribute("error", error);
        }

        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                            //lấy dữ liệu từ các trường nhập liệu tại form insert
                       int recipe_id = Integer.parseInt(request.getParameter("recipe_id"));
                       int view =0;
                       int mact = Integer.parseInt(request.getParameter("macongthuc"));
                       int calo = Integer.parseInt(request.getParameter("calo"));
                       String tacgia = request.getParameter("tacgia");
                       String video = request.getParameter("video");
                       String dinhduong= request.getParameter("dinhduong");
                       String thanhphan = request.getParameter("thanhphan");
                       String motamon = request.getParameter("mota");
                       String cachlam = request.getParameter("cachlam");
                       String hinh = request.getParameter("hinh");
                       int userid =0;
                             recipeGet.insertProduct(new Recipe(recipe_id, tenmon, mact, hinh, view, calo, tacgia, thanhphan, dinhduong, cachlam, motamon, video, userid));
                             url = "/admin/manage_product.jsp";
                             break;
                    case "update":
               
                        recipeGet.updateProduct(new Recipe(new Date().getTime(), tenmon, mact, hinh, view, calo, tacgia, thanhphan, dinhduong, cachlam, motamon, video, userid));
                        url = "/admin/manage_product.jsp";
                        break;
                    
                    
                }
            } else {
                url = "/admin/insert_recipe.jsp";
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
}
}

    
