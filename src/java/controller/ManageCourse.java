/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import get.CourseGet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Time;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Course;

/**
 *
 * @author ACER
 */

public class ManageCourse extends HttpServlet{
   
    
   CourseGet courseGet = new CourseGet();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String command = request.getParameter("command");
        String url = "";
        String course_id = request.getParameter("course_id");
        try{
           
        switch(command){
            
      
         case "delete":
                      
                       courseGet.deleteCourse(Integer.parseInt(course_id));
                       url="/chuancommenau/admin/success.jsp";
                    break;
            }  
        }
        catch (Exception e) {
        }
        response.sendRedirect(url);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        
       
       
        

        String url = "", error = "";
        
       
        try {
            
                  int count=1;
                       for (Course r : courseGet.getListCourse()) {
                           r.getCourseId();
                           count++;
                       }

            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                            //lấy dữ liệu từ các trường nhập liệu tại form insert
                  
                      String namecourse = request.getParameter("namecourse");
                      int typecourse = Integer.parseInt(request.getParameter("typecourse"));
                      String addressCourse = request.getParameter("addressCourse");
                      int chefid = Integer.parseInt(request.getParameter("chef"));
                      String imagesclass = request.getParameter("imagesclass");
                      String introduction = request.getParameter("introduction");
                      int duration = Integer.parseInt(request.getParameter("duration"));
                      String informationcourse = request.getParameter("informationcourse");
                      String imagesclass1 = request.getParameter("imagesclass1");
                      String imagesclass2 = request.getParameter("imagesclass2");
                      String benifit = request.getParameter("benifit");
                              
                       
        
                      
                                 courseGet.insertCourse(new Course(count, namecourse, new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("datestart")), new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("datesfinish")), typecourse, addressCourse, chefid, imagesclass, introduction,(Time) new SimpleDateFormat("h:mm a").parse(request.getParameter("time")) ,duration, informationcourse, imagesclass1, imagesclass2, benifit));
                             url = "/chuancommenau/admin/success.jsp";
                             break;
                    case "update":
                        int courseid = Integer.parseInt(request.getParameter("courseid")); 
                        String namecoursex = request.getParameter("namecourse");
                        int typecoursex = Integer.parseInt(request.getParameter("typecourse"));
                        String addressCoursex = request.getParameter("addressCourse");
                        int chefidx = Integer.parseInt(request.getParameter("chef"));
                        String imagesclassx = request.getParameter("imagesclass");
                        String introductionx = request.getParameter("introduction");
                        int durationx = Integer.parseInt(request.getParameter("duration"));
                        String informationcoursex = request.getParameter("informationcourse");
                        String imagesclass1x = request.getParameter("imagesclass1");
                        String imagesclass2x = request.getParameter("imagesclass2");
                        String benifitx = request.getParameter("benifit");
                         courseGet.updateCourse(new Course(courseid, namecoursex, new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("datestart")), new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("datesfinish")), typecoursex, addressCoursex, chefidx, imagesclassx, introductionx,(Time) new SimpleDateFormat("h:mm a").parse(request.getParameter("time")), durationx, informationcoursex, imagesclass1x, imagesclass2x, benifitx));
                        url = "/chuancommenau/admin/success.jsp";
                        break;
                    
                    
                    
                }
            } else {
                url = "/chuancommenau/admin/insert_course.jsp";
            }
        } catch (Exception e) {
        }
        response.sendRedirect(url);
}
}

    