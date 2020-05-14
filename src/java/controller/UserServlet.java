/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import get.UserGet;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialException;
import model.User;

/**
 *
 * @author Tien Anh
 */
public class UserServlet extends HttpServlet{
    UserGet userGet = new UserGet();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }
    
    @Override
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        //Biến lưu trữ chức năng chèn hay update...
        String command = request.getParameter("command");
        
        String url = "";
        User users = new User();
        HttpSession session = request.getSession();
        switch(command){
            case "insert":
                users.setUserId((int) new java.util.Date().getTime());
                users.setUserName(request.getParameter("name"));
                users.setUserEmail(request.getParameter("email"));
                users.setUserPass(request.getParameter("pass"));
                users.setUserPhone(request.getParameter("phone"));
                users.setUserAddress(request.getParameter("address"));
          
                userGet.insertUser(users);
                session.setAttribute("user",users);
                url = "chuancommenau/index.jsp";
                break;
               
            case "update":
                int user_id = Integer.parseInt(request.getParameter("user_id"));
                String username = request.getParameter("user_name");
                String useremail = request.getParameter("user_email");
                String password = request.getParameter("user_pass");
                String phone = request.getParameter("user_phone");
                String address = request.getParameter("user_address");
            
                userGet.updateUser(new User(user_id, username, useremail, password, phone, address));
                url = "/myaccount.jsp";
                break;
             
            case "login":
                users = userGet.login(request.getParameter("name"), (request.getParameter("password")));
                if (users != null){
                    session.setAttribute("user", users);
                    url = "chuancommenau/index.jsp";
                }
               else{
                    request.setAttribute("error", "Lỗi tên đăng nhập hoặc mật khẩu");
                    url = "/signup-signin.jsp";
                }
                break;
    }
        response.sendRedirect(url);
   }
}
