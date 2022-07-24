<%-- 
    Document   : certificate
    Created on : 10 Apr, 2022, 5:52:18 PM
    Author     : Radhe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="../General/links.html" %>
        <%@include file="../General/header.jsp" %>
        <style>
            .logo {
                font-family: 'Lobster',cursive;
            }
        </style>
            <%@ page import = "java.sql.Connection" %>
        <%@ page import = "java.sql.DriverManager" %>
        <%@ page import = "java.sql.ResultSet" %>
        <%@ page import = "java.sql.SQLException" %>
        <%@ page import = "java.sql.PreparedStatement" %>
        
                    <%                            
//                            String id = request.getParameter("id").toString();
//                            Class.forName("org.apache.derby.jdbc.ClientDriver");
//                            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/javadatabase", "chirag", "chirag");
//                            String qry = "select * from syllabus where courses_idcourses =" + id;
//                            PreparedStatement ps = con.prepareStatement(qry);
//                            ResultSet rs = ps.executeQuery();
//                            rs.next();
%>
    </head>
    <body>
        <!-- Certificate -->
        <div class="container jumbotron my-3">
            <center>
                <div style="width:800px; height:600px; padding:20px; text-align:center; border: 10px solid #787878">
                    <div style="width:750px; height:550px; padding:20px; text-align:center; border: 5px solid #787878">
                        <span style="font-size:50px; font-weight:bold">Certificate of Completion</span>
                        <br><br>
                        <span style="font-size:25px"><i>This is to certify that</i></span>
                        <br><br>
                        <span style="font-size:30px"><b>Chirag Panchal</b></span><br/><br/>
                        <span style="font-size:25px"><i>has completed the course</i></span> <br/><br/>
                        <span style="font-size:30px">Advance Java by Williams</span> <br/><br/>
                        <span style="font-size:25px"><i>dated</i></span><br>
                        <span style="font-size:20px"><i>24th,feb 2022</i> </span></br> </br>
                        <span class="logo" style="font-size:30px;text-align: left;">Upgradify</span>
                    </div>
                </div>
            </center> 
        </div>


        <%@include file="../General/footer.jsp" %>
    </body>
</html>
