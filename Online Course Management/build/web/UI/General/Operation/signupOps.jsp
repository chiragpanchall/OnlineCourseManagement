<%-- 
    Document   : loginOp.jsp
    Created on : 1 May, 2022, 11:53:05 AM
    Author     : Radhe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%@ page import = "java.sql.Connection" %>
        <%@ page import = "java.sql.DriverManager" %>
        <%@ page import = "java.sql.ResultSet" %>
        <%@ page import = "java.sql.SQLException" %>
        <%@ page import = "java.sql.PreparedStatement" %>

        <%
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String cpassword = request.getParameter("cpassword");
            String type = request.getParameter("utype");
            String error = "null";

            if (password.equals(cpassword)) {
                Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/javadatabase", "chirag", "chirag");
                String qry = "Select count(*) from users where email = ? ";
                PreparedStatement ps;
                ps = con.prepareStatement(qry);
                ps.setString(1, email);
                ResultSet rs = ps.executeQuery();
                rs.next();
                int count = rs.getInt(1);
                String link ="";
                if (count > 0) {
                    error = "User already existed ..";
                    session.setAttribute("serror", error);
                        response.sendRedirect("../signup.jsp");                    
                } else {
                    if (type.equals("0")) {
                        qry = "insert into users(email,password,istutor) values(?,?,?)";
                        ps = con.prepareStatement(qry);
                        ps.setString(1, email);
                        ps.setString(2, password);
                        ps.setInt(3, 0);  //student
                        link = "../../User/Homepage.jsp";
                    } else {
                        qry = "insert into users(email,password,istutor)values(?,?,?)";
                        ps = con.prepareStatement(qry);
                        ps.setString(1, email);
                        ps.setString(2, password);
                        ps.setInt(3, 1);
                        link = "../../Tutor/index.jsp";
                    }
                    out.print(qry);
                    int cnt = ps.executeUpdate();
                    if (cnt > 0) {
                        error = "Data Added successfully ..";
                        session.setAttribute("uemail", email);
                        response.sendRedirect(link);
                        //session.getMaxInactiveInterval();
                        
                    } else {
                        error = "Failed to create user ..";
                        request.setAttribute("serror", error);
                          response.sendRedirect("../signup.jsp");
                    }
                }

            } 
            else {
                error = "password not match";
                session.setAttribute("serror", error);
                response.sendRedirect("../signup.jsp");
            }
        %>

    </head>

        <%
            out.println(error);
            out.println("type"+type+"'");            
            out.println("'"+email+"'");
            out.println("'"+password+"'");
            out.println("'"+cpassword+"'");
        %>

