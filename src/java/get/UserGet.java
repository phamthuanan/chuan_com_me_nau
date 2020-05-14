/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package get;

/**
 *
 * @author Tien Anh
 */
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

// Lấy dữ liệu từ database
public class UserGet {
    public ArrayList<User> getListUser() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM user";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<User> list = new ArrayList<>();
        while (rs.next()) {
            User user = new User();
           user.setUserId(rs.getInt("user_id"));
           user.setUserName(rs.getString("user_name"));
           user.setUserEmail(rs.getString("user_email"));
           user.setUserPass(rs.getString("user_pass"));
           user.setUserPhone(rs.getString("user_phone"));
           user.setUserAddress(rs.getString("user_address"));
           list.add(user);
        }
        return list;
    }
   
    // Kiểm tra email
    public boolean checkEmail(String name) throws SQLException{
    Connection connection = DBConnect.getConnection();
    String sql = "SELECT * FROM user WHERE user_name = '" + name + "'";
    PreparedStatement ps;
    try {
        ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        while(rs.next()){
            connection.close();
            return true;
        }
    } catch (SQLException ex) {
        Logger.getLogger(UserGet.class.getName()).log(Level.SEVERE,null, ex);
    }
    return false;
    }
    // phương thức thêm tài khoản
    public boolean insertUser(User u) {
        Connection connection = DBConnect.getConnection();
        String sql = "INSERT INTO user VALUES(?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setInt(1, u.getUserId());
            ps.setString(2, u.getUserName());
            ps.setString(3, u.getUserPass());
            ps.setString(4, u.getUserEmail());
            ps.setString(5, u.getUserPhone());
            ps.setString(6, u.getUserAddress());
 
           
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(UserGet.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    //Đăng nhập
     public User login(String name, String password) {
        Connection con = DBConnect.getConnection();
        String sql = "select * from user where user_name='" + name + "' and user_pass='" + password + "'";
        PreparedStatement ps;
        try {
            ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                User u = new User();
                u.setUserId(rs.getInt("user_id"));
                u.setUserName(rs.getString("user_name"));
                u.setUserPass(rs.getString("user_pass"));
                con.close();
                return u;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
     
     //Lấy dữ liệu user từ database
     public User getUser(int userID) throws SQLException {
     Connection connection = DBConnect.getConnection();
     String sql = "SELECT * FROM user WHERE user_id = '" + userID + "'";
     PreparedStatement ps = connection.prepareCall(sql);
     ResultSet rs = ps.executeQuery();
     User user = new User();
     while (rs.next()) {
         
           user.setUserId(rs.getInt("user_id"));
           user.setUserName(rs.getString("user_name"));
           user.setUserPass(rs.getString("user_pass"));
           user.setUserEmail(rs.getString("user_email"));
           user.setUserPhone(rs.getString("user_phone"));
           user.setUserAddress(rs.getString("user_address"));
       
     }
     return user;
}
     public boolean updateUser(User u) {
        
        Connection connection = DBConnect.getConnection();
        String sql = "UPDATE user SET user_id=?, user_name=?, user_pass=?, user_email=?, user_phone=?, user_address=? WHERE user_id = ?";
        
        try {
            PreparedStatement ps = connection.prepareCall(sql);
          ps.setInt(1, u.getUserId());
            ps.setString(2, u.getUserName());
            ps.setString(3, u.getUserPass());
            ps.setString(4, u.getUserEmail());
            ps.setString(5, u.getUserPhone());
            ps.setString(6, u.getUserAddress());
  
            return ps.executeUpdate() == 1;
        } catch (SQLException ex) {
           Logger.getLogger(UserGet.class.getName()).log(Level.SEVERE,null, ex);
        }
        return false;
    }
    
}