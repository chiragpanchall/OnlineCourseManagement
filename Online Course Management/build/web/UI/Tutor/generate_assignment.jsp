<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Courses</title>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous"> 
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
        <style>
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #696969;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #909090;
  color: white;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 800px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
.btn-primary{height:40px;
        width:150px;
        border-radius:10%;
        }

.btn-danger{height:40px;
        width:150px;
        border-radius:10%;
}
</style>
</head>
<body>
    <%@ include file="../General/links.html"%>
    <%@ include file="../General/header.jsp"%>


<div class="sidebar">
        <a class="active" href="#home">Home</a>
        <a href="view_courses.jsp">View Courses</a>
        <a href="edit_courses.jsp">Edit Courses</a>
        <a href="upload_courses.jsp">Upload Course</a>
        <a href="upload_courses.jsp">Upload Video</a>
        <a href="generate_assignment.jsp">Generate Assignment</a>
        <a href="#">View Assignment</a>
        <a href="#">Generate Report</a>
    </div>

<div class="content">
    <div style="margin-top:30px;">
    <h2 align="center">Want to Generate New Assignment ? </h2>           
    
    <div class="row" style="margin-top:50px;">
        <div class="col-sm-4">
        <h4 style="margin-left:100px;">Select Department<h4>
        </div>
        <div class="col-sm-4" style="margin-left:50px;">
            <select name="department">
                <option value="cse">CSE</option>
                <option value="law">LAW</option>
                <option value="IT">IT</option>
                <option value="computer_science">Computer Science</option>
                </select>
        </div>
        <div class="col-sm-4">
        </div>
    </div>
        <div class="row" style="margin-top:10px;">
        <div class="col-sm-4">
        <h4 style="margin-left:100px;">Select Course<h4>
        </div>
        <div class="col-sm-4" style="margin-left:50px;">
            <select name="department">
                <option value="java">Java</option>
                <option value="python">Python</option>
                <option value="c++">C++</option>
            </select>
        </div>
        <div class="col-sm-4">
        </div>
    </div>
    <div class="row" style="margin-top:10px;">
        <div class="col-sm-4">
        <h4 style="margin-left:100px;">Choose File<h4>
        </div>
        <div class="col-sm-4" style="margin-left:50px;">
            <input type="file" name="assignment">
        </div>
        <div class="col-sm-4">
        </div>
    </div>
    
    <div class="row" style="margin-top:40px;">
        <div class="col-sm-4">
       
        </div>
        <div class="col-sm-4" style="margin-left:50px;">
           <h3 align="center">------OR-------</h3>
        </div>
        <div class="col-sm-4">
        </div>
    </div>
      <div class="row" style="margin-top:60px;">
        <div class="col-sm-4">
        <h4 style="margin-left:100px;">Give Assignment Description<h4>
        </div>
        <div class="col-sm-7" style="margin-left:50px;">
            <textArea style="width:400px; height:100px;" name="assignment_text"></textarea>
        </div>
    </div>
</div>

<div class="row" style="margin-top:100px;">
    <div class="col-sm-4">
        
    </div>
    <div class="col-sm-4">
        <button class="btn-primary">Save</button>
        <a href="index.jsp"><button class="btn-danger"style="margin-left:30px;">Back To Home</button></a>
    </div>
     <div class="col-sm-4">
        
    </div>
</div>

</div>
    
        <%@ include file="../General/footer.jsp"%>

</body>
</html>
