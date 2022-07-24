<%-- 
    Document   : add_course
    Created on : 4 May, 2022, 12:12:33 AM
    Author     : Radhe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <%@ page import = "java.sql.Connection" %>
        <%@ page import = "java.sql.DriverManager" %>
        <%@ page import = "java.sql.ResultSet" %>
        <%@ page import = "java.sql.SQLException" %>
        <%@ page import = "java.sql.PreparedStatement" %>
<%
String price = request.getParameter("price");
String course = request.getParameter("course");
String username = request.getParameter("username");
out.println(price);
out.println(course);
out.println(username);


            Class.forName("org.apache.derby.jdbc.ClientDriver");

                Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/javadatabase", "chirag", "chirag");
                String qry = "INSERT INTO COURSES (COURSES_NAME, PRICE, COURSES_DESC, USER_IDUSER, COURSE_TYPE_IDCOURSE_TYPE) VALUES (?,  ?, ?, 3, 2)";
                PreparedStatement ps;
                ps = con.prepareStatement(qry);
                ps.setString(1, course);
                ps.setString(2, price);
                ps.setString(3, username);
                ResultSet rs = ps.executeQuery();
                 rs.next();
                int count = rs.getInt(1);
                String link ="";


%>