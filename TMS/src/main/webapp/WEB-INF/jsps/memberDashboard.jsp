<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Member - Dashboard</title>
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
        </div>
      </div>
    </nav>
  </div>
</header>
<!---->
<main>
<div class="container my-5">
       <div class="card-body text-center">
    <h4 class="card-title">Member Page/ View Tasks</h4>
    <p class="card-text"></p>
  </div>
    <div class="card">
        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">ID</th>
                <th scope="col"> Title</th>
                <th scope="col">Deadline</th>
                <th scope="col">completeTask </th>
                
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>Otto</td>
                <td>
                    <a class="btn btn-sm btn-success" href="#"><i class="far fa-edit"></i> True</a>
                    <a class="btn btn-sm btn-danger" href="#"><i class="fas fa-trash-alt"></i> False</a>     
                </td>
                <td><i class="fas fa-info-circle"></i> Complete </td>
              </tr>
            </tbody>
          </table>
    </div>
    <!-- Large modal -->



</div>
</main>
<!---->

<!---->
<footer >
  <div class="container bg-info p-5">

	</div>
</footer>
</body>
</html>