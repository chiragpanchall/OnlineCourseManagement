<%-- 
    Document   : loginOps
    Created on : 1 May, 2022, 1:04:21 PM
    Author     : Radhe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ page import = "java.sql.Connection" %>
    <%@ page import = "java.sql.DriverManager" %>
    <%@ page import = "java.sql.ResultSet" %>
    <%@ page import = "java.sql.SQLException" %>
    <%@ page import = "java.sql.PreparedStatement" %>

    <%
        String email = request.getParameter("username");
        String password = request.getParameter("password");
        out.print(email);
        out.print(password);
        String error = "No Error";
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/javadatabase", "chirag", "chirag");
        String qry = "Select * from users where email = ? and password = ? ";
        PreparedStatement ps;
        ps = con.prepareStatement(qry);
        ps.setString(1, email);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        //rs.next();
        //int count = rs.getInt(1);
        if (rs.next()) {
            session.setAttribute("uemail", email);
            if(rs.getInt(8) == 0)
                  response.sendRedirect("../../User/Homepage.jsp");
            else 
                response.sendRedirect("../../Tutor/index.jsp");
        } else {
            error = "No user found ..";
            session.setAttribute("error", error);
            response.sendRedirect("../login.jsp");
        }


    %>

</html>
