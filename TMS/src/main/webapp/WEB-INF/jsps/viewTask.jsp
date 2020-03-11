<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Create Task</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
<header>
  <div class="container bg-info p-5 ">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">Dashboard</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link active" href="index.html">Home <span class="sr-only">(current)</span></a>
          <a class="nav-item nav-link" href="#">Create Account</a>
          <a class="nav-item nav-link" href="#">Assign Task</a>
        </div>
      </div>
    </nav>
  </div>
</header>


<main>
<div class="container my-5">
       <div class="card-body text-center">
        <h4 class="card-title">Admin / Task details</h4>
        <p class="card-text"></p>
  	   </div>
    
    
<form action= "viewTask" method = "POST" name="tsk">

  <h3>Task, AssignTo, creationDate, dueDate, completeTask</h3>
  
  <button type="submit" class="btn btn-primary mb-4" name="Go Back" href="dashboard">
  Back to Dasboard
  </button>
  
  </form>
  
  
  </div>
  </main>
  
  <footer >
  <div class="container bg-info p-5">

	</div>
  </footer>
  <br>
</body>
</html>