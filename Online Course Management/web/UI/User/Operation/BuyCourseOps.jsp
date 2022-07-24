<%-- 
    Document   : BuyCourseOps
    Created on : 3 May, 2022, 6:45:56 PM
    Author     : Radhe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.PreparedStatement" %>

</head>

<body>

    <%

        String email = session.getAttribute("uemail").toString();
        if (email.equals(null)) {
            response.sendRedirect("../General/login.jsp");
        } else {

            String id = request.getParameter("id").toString();
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/javadatabase", "chirag", "chirag");
            String qry = "select * from users where email = '" + session.getAttribute("uemail") + "'";
            PreparedStatement ps;
            ps = con.prepareStatement(qry);
            ResultSet rs = ps.executeQuery();
            rs = ps.executeQuery();
            rs.next();
            int users = rs.getInt(1);

            qry = "update courses set user_iduser = " + users + "where idcourses =  " + id;
            ps = con.prepareStatement(qry);
            int cnt = ps.executeUpdate();
            if (cnt > 0) {
                response.sendRedirect("../Homepage.jsp");
            } else {
                response.sendRedirect("../BuyCourse.jsp");;
            }

        }
    %>