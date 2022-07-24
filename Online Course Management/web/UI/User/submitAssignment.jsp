<%-- 
    Document   : submitAssignment
    Created on : 10 Apr, 2022, 12:33:55 AM
    Author     : Radhe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>submit Assignment</title>
        <%@include file="../General/links.html" %>

        <style>
            .course_title {
                text-align: center;
                font-size: 35px;
                font-weight: 400px;
            }
        </style> 
    </head>
    <body>
        <%@include file="../General/header.jsp" %>
        <div class="container jumbotron my-3">
            <p class="course_title">Course Assignements</p>
            <ol type="1" >
                <li>What is features of java ? </li>
                <li>What is class and objects java ? </li>
                <li>What is Polymorphism in java ? </li> 
                <li>What is Abstraction in java ? </li>
                <li>Types of inheritance  of java ? </li> 
                <li>Write a short note in servlet with example ? </li>
            </ol>
            <div class="col" style="text-align: center;margin-top: 25px;">
                <!--<p>Submit Assignments :</p>-->
                  <div class="">
                    <input class="btn-secondary" type="file">
                    <button class="btn-dark">Submit</button>
                </div>
                <div class="my-3" style="text-align: center;">
                <li>Please Ensure file should be in handwritten</li>
                <li>Please Ensure file should be in PDF format</li>
                </div>
            </div>

        </div>


        <%@include file="../General/footer.jsp" %>
    </body>
</html>    
