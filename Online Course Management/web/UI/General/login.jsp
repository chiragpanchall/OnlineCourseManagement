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
        <title>Login</title>
        <%@ include file="links.html"%>

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
        .login-head {
            font-size: 2rem;
            text-align: center;

        }
        .login-text
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
                            <a class="nav-link" href="#">Login</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="signup.jsp">Signup</a>
                        </li>
                    </ul>
                </form>
            </div>
        </nav>


        <!-- Loggin -->
        <form action="Operation/loginOps.jsp" method="post">
            <center class="my-3">
                <div class="container my-3">
                    <div class="jumbotron my-3">
                        <div class="row justify-content-center my-3">
                            <div class="col-md-auto">
                                <p class="login-head">Login</p>  
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-md-auto">
                                <p class="login-text">Username</p>
                            </div>
                            <div class="col-md-4">
                                <input type="text" name="username" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
                                       value="abc@gmail.com"     
                                       >  
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-md-auto">
                                <p class="login-text">Password </p>  
                            </div>
                            <div class="col-md-4">
                                <input type="password" name="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">  
                                <p style="color:red;"> 
                                    <%
                                        if (request.getAttribute("error") != "null")
                                            out.println(session.getAttribute("error"));
                                      else
                                          out.println("No Error");%>
                                </p>
                            </div>
                        </div>

                        <div class="row my-3">
                            <div class="col-md-12 justify-content-center">
                                <input type="submit" class="btn btn-success">
                                <!--</button>-->
                            </div>
                            <div class="col-md-12 justify-content-center">
                                <button type="button" class="btn btn-link">Forgot password</button>
                            </div>
                        </div>
                    </div>          
                </div>
            </center>     
        </form>
        <!<!-- Footer -->
        <%@ include file="footer.jsp"%>

    </body>
</html>

