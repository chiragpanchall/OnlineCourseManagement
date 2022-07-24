<%-- 
    Document   : SetProfile
    Created on : 10 Apr, 2022, 4:55:01 PM
    Author     : Radhe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "java.sql.PreparedStatement" %>

<%
    
    String email = session.getAttribute("uemail").toString();
    if (email.equals("null")) {
        response.sendRedirect("../General/login.jsp");
    } else {

        Class.forName("org.apache.derby.jdbc.ClientDriver");
        Connection con = DriverManager.getConnection("jdbc:derby://localhost:1527/javadatabase", "chirag", "chirag");
        String qry = "Select * from users where email = ? ";
        PreparedStatement ps;
        ps = con.prepareStatement(qry);
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();
        rs.next();
   
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile setting</title>
        <%@include file="../General/links.html" %>
    </head>
    <body>
        <%@include file="../General/header.jsp" %>


        <div class="container jumbotron my-3">
            <div class="row" >
                <div class='col-md-12'>
                    <p style="text-align: center;font-size: 30px;font-weight: 600;"> Profile</p>
                </div>
            </div>
            <form action="Operation/setprofileOps.jsp" method="post">
            <div class="my-3" style="text-align: right">
                <div class="col-md-12 justify-content-center">
                    <input type="submit" class="btn btn-success" value="Submit"> 
                          <!--< onClick="window.location.href = 'Homepage.jsp';">-->
                    <!--Save</button>-->
                   
                </div> 
            </div>

            <div class="row justify-content-center">
                <div class="col-md-4">
                    <p class="signup-text">Email</p>
                </div>
                <div class="col-md-4">
                    <input type="text" class="form-control" disabled aria-describedby="inputGroup-sizing-default"
                           value="<%out.println(session.getAttribute("uemail"));%>"   
                           >  
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-md-4">
                    <p class="signup-text">Username</p>
                </div>
                <div class="col-md-4">
                    <input type="text" name="username" required="true" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">  
                </div>
            </div>


            <div class="row justify-content-center">
                <div class="col-md-4">
                    <p class="signup-text">Password</p>
                </div>
                <div class="col-md-4">
                    <input type="text" class="form-control" name="password" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
                           value="<% out.println(rs.getString(4));%>" >  
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-md-4">
                    <p class="signup-text">School / organization</p>
                </div>
                <div class="col-md-4">
                    <input type="text" required="true" name="school" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">  
                </div>
            </div> 

            <div class="row justify-content-center">
                <div class="col-md-4">
                    <p class="signup-text">Age</p>
                </div>
                <div class="col-md-4">
                    <input type="text" name="age" required="true" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">  
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-md-4">
                    <p class="signup-text">Phone Number</p>
                </div>
                <div class="col-md-4">
                    <input type="text" name="phone" required="true" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">  
                    <p style="color: red">
                        <%
//                            if(session.getAttribute("serror").toString().isEmpty()) { out.print("No Error");}
//                            else {out.print(session.getAttribute("serror").toString());}
                        %>
                    </p>
                </div>
            </div>
                
            </form>
<!--            <div>
                <p style="text-align: left;font-size: 22px;font-weight: 600;">Intrested Courses</p>

                <div class="row">
                    <div class="col-md-3">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="check1" name="option1" value="something" checked>
                            <label class="form-check-label">Computer Science</label>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="check1" name="option1" value="something" checked>
                            <label class="form-check-label">Management</label>
                        </div>
                    </div> 
                    <div class="col-md-3">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="check1" name="option1" value="something" checked>
                            <label class="form-check-label">Software</label>
                        </div>
                    </div> 
                    <div class="col-md-3">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="check1" name="option1" value="something" checked>
                            <label class="form-check-label">Marketing</label>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-3">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="check1" name="option1" value="something" checked>
                            <label class="form-check-label">Health</label>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="check1" name="option1" value="something" checked>
                            <label class="form-check-label">Arts and huminities</label>
                        </div>
                    </div> 
                    <div class="col-md-3">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="check1" name="option1" value="something" checked>
                            <label class="form-check-label">Language Learning</label>
                        </div>
                    </div> 
                    <div class="col-md-3">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="check1" name="option1" value="something" checked>
                            <label class="form-check-label">Personality Development</label>
                        </div>
                    </div>
                </div>
            </div>-->

                               
            <div>
                <p class="my-3" style="text-align: left;font-size: 22px;font-weight: 600;">Enrolled Courses</p>
                <div class="row my-2">
                    <div class="col-md-6" style="font-weight: 400;">Advance Java</div>
                    <div class="col-md-2">$450</div>
                    <div class="col-md-4">
                        <button class="btn-danger">Leave courses</button>
                        <button class="btn-danger" disabled="">View Certificate</button>
                    </div>
                </div>
                <div class="row my-2">
                    <div class="col-md-6" style="font-weight: 400;">Advance Java</div>
                    <div class="col-md-2">$450</div>
                    <div class="col-md-4">
                        <button class="btn-danger" disabled="">Leave courses</button>
                        <button class="btn-danger" onclick="window.location.href = 'certificate.jsp'">View Certificate</button>
                    </div>
                </div>

            </div>

        </div>





        <%@include file="../General/footer.jsp" %>
    </body>
</html>

<%  } %>