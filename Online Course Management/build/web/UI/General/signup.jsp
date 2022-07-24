<%-- 
    Document   : login
    Created on : 3 Apr, 2022, 4:09:49 PM
    Author     : Radhe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign up</title>
        <%@ include file="links.html" %>

    </head>

    <style>
        .navbar-brand {
            font-family: 'Lobster',cursive;
            font-size: 2.5vw;
        }
        .header-menu {
            font-size: 1.5vw;
        }
        .courses {
            border: 2px solid black;
            padding: 10px;
            text-align: center;
            font-weight: 700;
        }
        .header-btn {
            position:absolute;
            right:0;
        }
        .signup-head {
            font-size: 2rem;
            text-align: center;

        }
        .signup-text
        {
            font-size: 1.3rem;
            text-align: right;
        }
    </style>   
    <body>
        <!-- Header -->
        <nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
            <a class="navbar-brand" href="#">Upgradify</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <form class="form-inline my-2 my-lg-0 header-btn">
                    <ul class="navbar-nav mr-auto header-menu">
                        <li class="nav-item">
                            <a class="nav-link" href="login.jsp">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Sign up</a>
                        </li>
                    </ul>
                </form>
            </div>
        </nav>


    <center class="my-3">
        <div class="container my-3">
            <div class="jumbotron my-3">
                <div class="row justify-content-center my-3">
                    <div class="col-md-auto">
                        <p class="signup-head">Sign Up</p>  
                    </div>
                </div>
                <form action="Operation/signupOps.jsp" method="post">
                    <div class="row justify-content-center">
                        <div class="col-md-4">
                            <p class="signup-text">Email</p>
                        </div>

                        <div class="col-md-4">
                            <input type="text" name="email" value="abc@gmail.com" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">  
                        </div>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-md-4">
                            <p class="signup-text">Password </p>  
                        </div>
                        <div class="col-md-4">
                            <input type="password" value="111" name="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">  
                        </div>
                    </div>

                    <div class="row justify-content-center">
                        <div class="col-md-4">
                            <p class="signup-text">Confirm Password </p>  
                        </div>
                        <div class="col-md-4">
                            <input type="password" value="111" name="cpassword" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">  
                            I am  <b>Student</b> 
                            <input type="radio" name="utype" value="0" checked>
                            <b>Tutor</b> 
                            <input type="radio"   name="utype" value="1">
                        </div>
                    </div>

                    <div class="row my-3">

                        <div class="col-md-12 justify-content-center">
                                <p style="color:red;"> 
                                    <%  
                                        if (request.getAttribute("serror") != "null")
                                             out.println(session.getAttribute("serror"));
                                        else 
                                             out.println("No Error");
                                    %>
                                </p>
                            <!--<button type="button" class="btn btn-success" onClick="window.location.href = '../User/SetProfile.jsp';">Sign up</button>-->
                            <input type="submit"  class="btn btn-success"> 
                        </div>
                        <div class="col-md-12 justify-content-center">
                            <button type="button" class="btn btn-link" onClick="window.location.href = 'login.jsp';">Already registered ?</button>
                        </div>
                    </div>
                </form>
            </div>          
        </div>
    </center>     


    <!<!-- Footer -->
    <%@ include file="footer.jsp"%>
</body>
</html>
