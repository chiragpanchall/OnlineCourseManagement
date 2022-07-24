/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/File.java to edit this template
 */
package UI.General;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Radhe
 */
public class DatabaseConn {

    public Connection GetConn() throws SQLException {
        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/javadatabase", "chirag", "chirag");
        return con;
    }
    public String get(){
       return "I am running";
    }
}  
//    public static void main(String args[]) throws SQLException {
//        TODO code application logic here
//        Connection con;
//        con = DriverManager.getConnection("jdbc:derby://localhost:9495/javadatabase", "chirag", "chirag");
//        Statement st;
//        String qry = "Select * from courses_type";
//        st = con.createStatement();
//        ResultSet rs;
//        rs = st.executeQuery(qry);
//        while(rs.next())
//        {
//              System.out.println(rs.getString(1));
//         }
  //  }
   
    
