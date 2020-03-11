<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome </title>
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
          <a class="nav-item nav-link active" href="dashboard">Home | <span class="sr-only">(current)</span></a>
          <a class="nav-item nav-link" href="registermember">Create Account |</a>
          <a class="nav-item nav-link" href="assignTask">Assign Task </a>
        </div>
      </div>
    </nav>
  </div>
</header>
<!---->
<main>
<div class="container my-5">
       <div class="card-body text-center">
        <h4 class="card-title">Admin Page</h4>
        <p class="card-text"></p>
  	   </div>
    <div class="card">
        <a href="createTask" ><button id="add__new__list" type="button" class="btn btn-success position-absolute" data-toggle="modal" data-target=".bd-example-modal-lg" >addTask</button></a>
        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">ID</th>
                <th scope="col"> Title</th>
                <th scope="col">Deadline</th>
                <th scope="col">View Task</th>
              </tr>
            </thead>
            <%
					String databaseURL = "jdbc:mysql://localhost:3306/tmsdb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
					String user = "root";
					String password = "emmanuel10";
					
					try(Connection connection = DriverManager.getConnection(databaseURL, user, password)) {
						String sql = "SELECT * FROM tasks";
						Statement statement = connection.createStatement();
						ResultSet result = statement.executeQuery(sql);
						
						while(result.next()) {
							%> 
								<tbody>
										<td><%=result.getInt("id") %></td>
										<td><%=result.getString("title") %></td>
										<td><%=result.getDate("dueDate") %></td>
			
                						<td><a class="btn btn-sm btn-info" href="viewTask?taskid=${task.id}"><i class="fas fa-info-circle"></i> Details</a> </td>
										
									</tbody>
							<%
						}
					} 		catch(SQLException ex) {
						ex.printStackTrace();
						throw ex;
					}
		
					%>
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