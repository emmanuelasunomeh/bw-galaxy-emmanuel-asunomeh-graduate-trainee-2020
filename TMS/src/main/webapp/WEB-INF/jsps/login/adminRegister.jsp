<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>
		Register Administrator
	</title>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
<br>	
	<div class="sidenav">
<br>
<br><br>
         <div class="login-main-text">
            <h2>  Task Management System<br>   Register</h2>
            
         </div>
      </div>
      <div class="main">
         <div class="col-md-4 col-sm-10" >
            <div class="login-form">
               <form action="login" method="post">
                  <div class="form-group">
                     <label>User Name</label>
                     <input type="text" class="form-control" name="username">
                  </div>
                  <div class="form-group">
                     <label>Password</label>
                     <input type="password" class="form-control" name="password">
                  </div>
                  <div class="form-group">
                     <label> Confirm Password</label>
                     <input type="password" class="form-control" name="confirmPassword">
                  </div>
                  <button type="submit" class="btn btn-black">Register</button>
                  ${msg}
               </form>
            </div>
         </div>
      </div>

</body>
</html>