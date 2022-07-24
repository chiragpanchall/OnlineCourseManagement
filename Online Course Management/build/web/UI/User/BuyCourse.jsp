<%-- 
    Document   : BuyCourse
    Created on : 10 Apr, 2022, 9:54:04 AM
    Author     : Radhe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Buy Course</title>
        <%@include file="../General/links.html" %>  
        <style>
            .cdiv {
                text-align: center;
            }
            .header_text {
                font-size: 32px;
                font-weight: 800;
                text-align: center;
            }
            .view_course {
                margin: 10px;
                padding: 10px;
            }
            li {
                margin: 0;
                padding: 0;
            }
        </style> 
        <%@ include file="../General/links.html"%>
        <%@include file="../General/header.jsp" %>
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
                String qry = "select * from courses where courses.IDCOURSES = "+id;
                PreparedStatement ps;
                ps = con.prepareStatement(qry);
                ResultSet rs = ps.executeQuery();
                rs = ps.executeQuery();
                rs.next();
             
        %>
        <div class="my-3 container jumbotron">
            <p class="cdiv header_text">
                
                <%out.print(rs.getString(2)); %>
            
            </p>
            <div class="cdiv"> 
                <div class="view_course"> 
                    <iframe width="560" height="315" src="https://www.youtube.com/embed/GoXwIVyNvX0" 
                            title="YouTube video player" 
                            frameborder="0" 
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen></iframe
                </div>
                <div class="col">
                    <p> 
                        <span style="font-weight: 600;">
                            <%out.print(rs.getInt(6)); %>
                        </span>
                        Students enrolled
                    </p>
                    <%  
                      String url = "window.location.href = 'Operation/BuyCourseOps.jsp?id=" + rs.getString(1) + "'";
                     %>
                    <button class="btn-warning"  style="font-weight: 800;padding: 10px;" onclick ="<%out.println(url);%>">
                                  
                        ₹<%out.print(rs.getInt(4));  %>
                                   
                    </button>
                </div>

            </div>
        </div>
        <div>
            <ul class="list-group">
                <li class="list-group-item active" style="font-size: 26px;font-weight: 600;">Course Curriculum</li>
                <%
                 qry = "select * from syllabus where courses_idcourses ="+id;
                // out.println(qry);
                 ps = con.prepareStatement(qry);
                 rs = ps.executeQuery();
                while(rs.next())
                {
                     
                %>
                <li class="list-group-item"> <%out.println(rs.getString(2));%>  </li>
                <% } %>
<!--                <li class="list-group-item">  Advanced Java Training Course Prerequisite  </li> 
                <li class="list-group-item"> Advanced Java Training Course Objective </li>
                <li class="list-group-item"> Advanced Java Training Course Objective </li>
                <li class="list-group-item"> Advanced Java Training Course Objective </li>   -->
            
            </ul>
        </div>


        <!-- Feedback -->


        <div class="container" style="margin:0px;">
            
            <p class="header_text my-3"> Feedback </p>
            <!-- comment -->
            <div style="border:2px solid black; padding: 12px;">   
                <div class="row">
                    <div class="col-md-12" style="text-align: center;font-size: 23px; ">course is really nice</div>
                </div> 
                <div class="row">
                    <div class="col-md-6" style="text-align: left;font-weight: 500;">
                        <p>17/5/2022 </p>
                    </div>
                    <div class="col-md-6" style="text-align: right;font-weight: 500;">
                        <p> Andry </p>
                    </div>
                </div>
            </div>
            
            

            
        </div>




    </div> 


</body>
<%}%>
<%@include file="../General/footer.jsp" %>
</html>
