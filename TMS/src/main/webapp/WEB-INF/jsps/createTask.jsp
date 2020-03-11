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
      <a class="navbar-brand" href="dashboard">Dashboard/TASK MANAGEMENT SYSTEM</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link active" href="dashboard">Home <span class="sr-only">(current)</span></a>
          <a class="nav-item nav-link" href="registermember">Create Account |</a>
          <a class="nav-item nav-link" href="assignTask">Assign Task </a>
        </div>
      </div>
    </nav>
  </div>
</header>


<main>
<div class="container my-5">
       <div class="card-body text-center">
        <h4 class="card-title">Admin / Create Task</h4>
        <p class="card-text"></p>
  	   </div>
    
    
<form action= "createTask" method = "POST" name="tsk">
  <div class="form-group">
    <label for="exampleFormControlInput1">Title</label>
    <input type="text" class="form-control" name="title" >
  </div>
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Description</label>
    <textarea class="form-control" name="description" form="tsk" rows="3" placeholder=" Enter Description ....."></textarea>
  </div>
  <div class="form-group row">
  <label for="example-date-input" class="col-2 col-form-label">creationDate</label>
  <div class="col-10">
    <input class="form-control" type="date" name="creationDate" placeholder="dd/MM/YYYY">
  </div>
  </div>
  
  <div class="form-group row">
  <label for="example-date-input" class="col-2 col-form-label">DueDate</label>
  <div class="col-10">
    <input class="form-control" type="date" name="dueDate" placeholder="dd/MM/YY">
  </div>
  </div>
  <div class="form-group row">
    <label for="exampleFormControlInput1" class="col-2 col-form-label">Complete</label>
    <div class= "col-10">
    
    <select class="form-control" name="completed">
  		<option>0</option>
  		<option>1</option>
	</select>
  </div>
  </div>
  <button type="submit" class="btn btn-primary mb-4" name="tsk">
  submit
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