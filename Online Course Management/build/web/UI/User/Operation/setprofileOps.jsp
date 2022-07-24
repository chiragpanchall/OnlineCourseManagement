<%-- 
    Document   : setprofileOps.jsp
    Created on : 1 May, 2022, 4:52:19 PM
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
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    String email = session.getAttribute("uemail").toString();
    String age = request.getParameter("age").trim().toString();
    String password = request.getParameter("password").trim().toString();
    String school = request.getParameter("school").trim().toString();
    String username = request.getParameter("username").trim().toString();
    String phone = request.getParameter("phone").trim().toString();
    String error = "null";

    if (!(age.isEmpty() || password.isEmpty() || school.isEmpty() || username.isEmpty() || phone.isEmpty())) {
        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/javadatabase", "chirag", "chirag");
        String qry = "update users set age = ? ,password = ?, organization = ? ,username = ? , mob = ? where email = ? ";
        PreparedStatement ps;
        ps = con.prepareStatement(qry);
        ps.setInt(1, Integer.parseInt(age));
        ps.setString(2, password);
        ps.setString(3, school);
        ps.setString(4, username);
        ps.setInt(5, Integer.parseInt(phone));
        ps.setString(6, email);
        int count = ps.executeUpdate();
        if (count > 0) {
            out.println("Data Updated");
            session.setAttribute("serror", error);
            response.sendRedirect("../Homepage.jsp");
        } else {
            out.println("Data not Updated");
        //    session.setAttribute("perror", "Data Not updated");
            response.sendRedirect("../SetProfile.jsp");
        }

    } else {
        out.println("Please fill all data");
        session.setAttribute("serror", "Data Not updated");
        response.sendRedirect("../SetProfile.jsp");
    }

//                    if (type.equals("0")) {
//                        qry = "insert into users(email,password,istutor) values(?,?,?)";
//                        ps = con.prepareStatement(qry);
//                        ps.setString(1, email);
//                        ps.setString(2, password);
//                        ps.setInt(3, 0);  //student
//                    } else {
//                        qry = "insert into users(email,password,istutor)values(?,?,?)";
//                        ps = con.prepareStatement(qry);
//                        ps.setString(1, email);
//                        ps.setString(2, password);
//                        ps.setInt(3, 1);
//                    }
//                    out.print(qry);
//                    int cnt = ps.executeUpdate();
//                    if (cnt > 0) {
//                        error = "Data Added successfully ..";
//                        session.setAttribute("uemail", email);
//                        response.sendRedirect("../../User/SetProfile.jsp");
//                        //session.getMaxInactiveInterval();
//                        
//                    } else {
//                        error = "Failed to create user ..";
//                        request.setAttribute("serror", error);
//                          response.sendRedirect("../signup.jsp");
//                    }
//                }
//
//            } 
//            else {
//                error = "password not match";
//                session.setAttribute("serror", error);
//                response.sendRedirect("../signup.jsp");
//            }

%>

</head>


