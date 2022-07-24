<%-- 
    Document   : ViewCourse
    Created on : 8 Apr, 2022, 2:24:46 PM
    Author     : Radhe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="../General/links.html" %>

        <style>
            .course_title {
                /*background-color: grey;*/
                padding: 2px 23px;
                font-weight: 500;
            }
            .course_mins {
                font-size: 10px;
                background-color: black;
                color: white;
                padding: 5px;
            }
            .sidebar{
                height: 400px;
                width: 150px;
                position: relative;
                font-size: 18px;
                /*background-color:black;*/
                padding:10px;
                overflow-y: scroll;
                overflow-x: scroll;
            }
            .sidebar a {
                color:black;
                text-decoration: none;
            }
            .sidebar p:hover {
                color:grey;
                background-color: orange;

            }
            .video_title {
                text-overflow: ellipsis;
                border-top: 2px solid;
                margin: 13px 6px;
                padding: 10px 5px;
            }
            .course_video {
                text-align: center;
            }
            .course_complete {
                text-align: center;
                padding: 7px;
                margin: 5px;
            }
        </style> 
    </head>
    <body>
        <%@include file="../General/header.jsp" %>
        <%@ page import = "java.sql.Connection" %>
        <%@ page import = "java.sql.DriverManager" %>
        <%@ page import = "java.sql.ResultSet" %>
        <%@ page import = "java.sql.SQLException" %>
        <%@ page import = "java.sql.PreparedStatement" %>
        <!-- Sidebar -->
        <div class="container-fluid jumbotron">
            <div class="row">
                <div class="col-md-5 sidebar">
                    <div class="">
                        <div class="Header">
                            <span class="course_title">Curriculum</span>
                        </div>
                        
                        <a href="#">
                            <!--<p class="video_title">-->
                        <%                            
                            String id = request.getParameter("id").toString();
                            Class.forName("org.apache.derby.jdbc.ClientDriver");
                            Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/javadatabase", "chirag", "chirag");
                            String qry = "select * from syllabus where courses_idcourses =" + id;
                            PreparedStatement ps = con.prepareStatement(qry);
                            ResultSet rs = ps.executeQuery();
                            while (rs.next()) {

                        %>
                            <p class="video_title">
                                <%out.println(rs.getString(2));%>
                            
                                <span class="course_mins"> 18.52 mins</span>
                            </p>  
                        </a>
 <% }%>

<!--                        <a href="ViewCourse.jsp">
                            <p class="video_title">What is variable
                                <span class="course_mins"> 8.52 mins</span>
                            </p>
                        </a>-->
<!--                        <a href="ViewCourse.jsp">
                            <p class="video_title">What is Try-catch variable
                                <span class="course_mins"> 5.52 mins</span>
                            </p>
                        </a>
                        <a href="ViewCourse.jsp">
                            <p class="video_title">Introduction to Programming language 
                                <span class="course_mins"> 18.52 mins</span>
                            </p>  

                        </a>
                        <a href="ViewCourse.jsp">
                            <p class="video_title">What is variable
                                <span class="course_mins"> 8.52 mins</span>
                            </p>
                        </a>
                        <a href="ViewCourse.jsp">
                            <p class="video_title">What is Try-catch variable
                                <span class="course_mins"> 5.52 mins</span>
                            </p>
                        </a>
                        <a href="ViewCourse.jsp">
                            <p class="video_title">Introduction to Programming language 
                                <span class="course_mins"> 18.52 mins</span>
                            </p>  

                        </a>
                        <a href="ViewCourse.jsp">
                            <p class="video_title">What is variable
                                <span class="course_mins"> 8.52 mins</span>
                            </p>
                        </a>
                        <a href="ViewCourse.jsp">
                            <p class="video_title">What is Try-catch variable
                                <span class="course_mins"> 5.52 mins</span>
                            </p>
                        </a><a href="ViewCourse.jsp">
                            <p class="video_title">Introduction to Programming language 
                                <span class="course_mins"> 18.52 mins</span>
                            </p>  

                        </a>
                        <a href="ViewCourse.jsp">
                            <p class="video_title">What is variable
                                <span class="course_mins"> 8.52 mins</span>
                            </p>
                        </a>
                        <a href="ViewCourse.jsp">
                            <p class="video_title">What is Try-catch variable
                                <span class="course_mins"> 5.52 mins</span>
                            </p>
                        </a>-->

                        <!-- Course completed button for assignment  -->
                        <div class="course_complete">
                            <btn class="btn-primary course_complete" onclick="window.location.href = 'submitAssignment.jsp'">Complete Assignment</btn>
                             <btn class="btn-primary course_complete" onclick="window.location.href = 'certificate.jsp'">View Certificate</btn>
                        </div>
                    </div>
                </div>
                <div class="col-md-7">
                    <!-- Video format -->
                    <div class="course_video">
                        <div class="">  <!-- video title -->
                            <iframe width="560" height="315" src="https://www.youtube.com/embed/GoXwIVyNvX0" 
                                    title="YouTube video player" 
                                    frameborder="0" 
                                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                                    allowfullscreen></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <%@include file="../General/footer.jsp" %>
    </body>
</html>    

