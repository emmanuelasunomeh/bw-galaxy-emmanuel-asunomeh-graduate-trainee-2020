<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Member - Login</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<!------ Include the above in your HEAD tag ---------->
</head>
<body>
	<div class="sidenav">
<br>
<br>
<br>
         <div class="login-main-text">
            <h2>  Task Management System<br> Login</h2>
            
         </div>
      </div>
      <div class="main">
         <div class="col-md-4 col-sm-10" >
            <div class="login-form">
               <form action="memberDashboard" method="post">
                  <div class="form-group">
                     <label>User Name</label>
                     <input type="text" class="form-control" name="username">
                  </div>
                  <div class="form-group">
                     <label>Password</label>
                     <input type="password" class="form-control" name="password">
                  </div>
                  <button type="submit" class="btn btn-black">Login</button>
                  ${msg}
               </form>
            </div>
         </div>
      </div>		
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</body>
</html>