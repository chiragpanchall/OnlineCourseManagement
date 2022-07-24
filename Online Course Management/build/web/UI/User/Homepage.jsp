<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            img{
                max-width:100%;
                max-height:100%;
                height: auto;
            }
            .continue_box {
                border: 2px solid black;
                padding: 6px 8px;
                margin: 10px 2px;
            }
        </style>
        <%@ include file="../General/links.html"%>
        <%@ include file="../General/header.jsp"%>
        <%@ page import = "java.sql.Connection" %>
        <%@ page import = "java.sql.DriverManager" %>
        <%@ page import = "java.sql.ResultSet" %>
        <%@ page import = "java.sql.SQLException" %>
        <%@ page import = "java.sql.PreparedStatement" %>

        <%            String email = session.getAttribute("uemail").toString();
            if (email.equals(null)) {
                response.sendRedirect("../General/login.jsp");
            } else {

                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/javadatabase", "chirag", "chirag");
                String qry = "select iduser from users where email='" + email + "'";
                PreparedStatement ps;
                ps = con.prepareStatement(qry);
                ResultSet rs = ps.executeQuery();
                rs = ps.executeQuery();
                rs.next();
                int id = rs.getInt(1);


        %>





        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> jsp Page </title>
    </head>
    <body>


        <!-- Continue Learning division -->
        <div class="row my-1">
            <div class="container">
                <h2 style="margin:15px;"> <b>Continue Learning</b> </h2>

                <%                    qry = "select * from courses where courses.USER_IDUSER = " + id;
                    ps = con.prepareStatement(qry);
                    rs = ps.executeQuery();
                    int cnt = 1;
                %>

                <div class="row">
                    <% while (rs.next()) { %>
                    <% if (cnt == 5) { %>

                    <div class="row">

                        <% } %>

                        <div class="col-md-3">
                            <div class="continue_box" style="text-align: center;">
                                <img src="primary.jpg">
                                <p>
                                    <% out.println(rs.getString(2)); %>
                                </p>
                                <p>
                                    <% out.println(rs.getString(3));
                                        String url = "window.location.href = 'ViewCourse.jsp?id=" + rs.getString(1) + "'";
                                    %>

                                </p>
                                <button class="btn-primary" onclick=" <%out.println(url);%>">
                                    Goto course <b>
                                        <% // ₹out.println(rs.getString(4)); %>
                                    </b></button>
                            </div>
                        </div>
                        <%
                                cnt++;
                            }
                        %>
                    </div>
                </div>  
            </div>
        </div>  



        <!--<div class="row">-->
        <!--                    <div class="col-md-3">
                                <div class="continue_box" style="text-align: center;">
                                    <img src="primary.jpg">
                                    <p>Start with Advance java</p>
                                    <p><b>75% completed</b></p>
                                    <button class="btn-primary" onclick="window.location.href = 'ViewCourse.jsp'">Goto course</button>
                                </div>
                            </div>-->

        <!--                    <div class="col-md-3">
                                <div class="continue_box" style="text-align: center;">
                                    <img src="primary.jpg">
                                    <p>Start with Advance java</p>
                                    <p><b>75% completed</b></p>
                                    <button class="btn-primary">Goto course</button>
                                </div>
                            </div>-->
        <!--                    <div class="col-md-3">
                                <div class="continue_box" style="text-align: center;">
                                    <img src="primary.jpg">
                                    <p>Start with Advance java</p>
                                    <p><b>75% completed</b></p>
                                    <button class="btn-primary">Goto course</button>
                                </div>
                            </div>-->
        <!--                    <div class="col-md-3">
                                <div class="continue_box" style="text-align: center;">
                                    <img src="primary.jpg">
                                    <p>Start with Advance java</p>
                                    <p><b>75% completed</b></p>
                                    <button class="btn-primary">Goto course</button>
                                </div>
                            </div>-->
        <!--</div>-->                
        <!--            </div>
                </div>         -->

        <!-- recommended courses  -->



        <div class="row my-1">
            <div class="container">
                <h2 style="margin:15px;"> <b>Recommended  Learning</b> </h2>

                <%                    qry = "select * from courses";
                    ps = con.prepareStatement(qry);
                    rs = ps.executeQuery();
                    cnt = 1;
                %>

                <div class="row">
                    <% while (rs.next()) { %>
                    <% if (cnt == 5) { %>

                    <div class="row">

                        <% } %>

                        <div class="col-md-3">
                            <div class="continue_box" style="text-align: center;">
                                <img src="primary.jpg">
                                <p>
                                    <% out.println(rs.getString(2)); %>
                                </p>
                                <p>
                                    <% out.println(rs.getString(3));
                                        String url = "window.location.href = 'BuyCourse.jsp?id=" + rs.getString(1) + "'";

                                    %>
                                </p>
                                <button class="btn-primary" onclick="<%out.println(url);%>">
                                    Buy course <b>₹
                                        <% out.println(rs.getString(4)); %>
                                    </b></button>
                            </div>
                        </div>
                        <%
                                cnt++;
                            }
                        %>

                        <!--                <div class="row">
                                            <div class="col-md-3">
                                                <div class="continue_box" style="text-align: center;">
                                                    <img src="primary.jpg">
                                                    <p>
                        <% //out.println(rs.getString(2)); %>
                    </p>
                    <p>
                        <% //out.println(rs.getString(3)); %>
                    </p>
                    <button class="btn-primary" onclick="window.location.href = 'BuyCourse.jsp'">
                        Buy course <b>
                        <% //out.println(rs.getString(4)); %>
                    </b></button>
            </div>
        </div>
    </div>
             
                    
                    
          <div class="col-md-3">
            <div class="continue_box" style="text-align: center;">
                <img src="primary.jpg">
                <p>Start with Advance java</p>
                <p>By Sir Williams</p>
                <button class="btn-primary">Buy course <b>$500</b></button>
            </div>
        </div>
        <div class="col-md-3">
            <div class="continue_box" style="text-align: center;">
                <img src="primary.jpg">
                <p>Start with Advance java</p>
                <p>By Sir Williams</p>
                <button class="btn-primary">Buy course <b>$500</b></button>
            </div>
        </div>
        <div class="col-md-3">
            <div class="continue_box" style="text-align: center;">
                <img src="primary.jpg">
                <p>Start with Advance java</p>
                <p>By Sir Williams</p>
                <button class="btn-primary">Buy course <b>$500</b></button>
            </div>
        </div>                       
    </div>                
    </div>
    </div>         -->
                        

                        <!-- Top Courses courses  -->
                        <div class="row my-1">
                            <div class="container">
                                <h2 style="margin:15px;"> <b>Top Courses by Upgradify</b> </h2>

                                <%                    qry = "select * from courses order by courses_name";
                                    ps = con.prepareStatement(qry);
                                    rs = ps.executeQuery();
                                    cnt = 1;
                                %>

                                <div class="row">
                                    <% while (rs.next()) { %>
                                    <% if (cnt == 5) { %>

                                    <div class="row">

                                        <% } %>

                                        <div class="col-md-3">
                                            <div class="continue_box" style="text-align: center;">
                                                <img src="primary.jpg">
                                                <p>
                                                    <% out.println(rs.getString(2)); %>
                                                </p>
                                                <p>
                                                    <% out.println(rs.getString(3));
                                                        String url = "window.location.href = 'BuyCourse.jsp?id=" + rs.getString(1) + "'";
                                                    %>
                                                </p>
                                                <button class="btn-primary" onclick="<%out.println(url);%>">
                                                    Buy course <b>₹
                                                        <% out.println(rs.getString(4)); %>
                                                    </b></button>
                                            </div>
                                        </div>
                                        <%
                                                cnt++;
                                            }
                                        %>







                                        <!--                                <div class="row">
                                                                            <div class="col-md-3">
                                                                                <div class="continue_box" style="text-align: center;">
                                                                                    <img src="primary.jpg">
                                                                                    <p>Start with Advance java</p>
                                                                                    <p>By Sir Williams</p>
                                                                                    <p>400 students enrolled</p>      
                                                                                    <button class="btn-primary">Buy course <b>$500</b></button>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <div class="continue_box" style="text-align: center;">
                                                                                    <img src="primary.jpg">
                                                                                    <p>Start with Advance java</p>
                                                                                    <p>By Sir Williams</p>
                                                                                    <p>400 students enrolled</p>      
                                                                                    <button class="btn-primary">Buy course <b>$500</b></button>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <div class="continue_box" style="text-align: center;">
                                                                                    <img src="primary.jpg">
                                                                                    <p>Start with Advance java</p>
                                                                                    <p>By Sir Williams</p>
                                                                                    <p>400 students enrolled</p>      
                                                                                    <button class="btn-primary">Buy course <b>$500</b></button>
                                                                                </div>
                                                                            </div>
                                                                            <div class="col-md-3">
                                                                                <div class="continue_box" style="text-align: center;">
                                                                                    <img src="primary.jpg">
                                                                                    <p>Start with Advance java</p>
                                                                                    <p>By Sir Williams</p>
                                                                                    <p>400 students enrolled</p>      
                                                                                    <button class="btn-primary">Buy course <b>$500</b></button>
                                                                                </div>
                                                                            </div>                       
                                                                        </div>-->

                                    </div>
                                </div>         

                                <!<!-- Footer -->
                                <%@ include file="../General/footer.jsp"%>  
                                </body>
                                <%}%>
                                </html>

