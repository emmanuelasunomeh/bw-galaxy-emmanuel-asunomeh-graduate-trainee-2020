<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin - AssignTask</title>
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
          
        </div>
      </div>
    </nav>
  </div>
</header>
<!---->
<main>
<div class="container my-5">
       <div class="card-body text-center">
    <h4 class="card-title">Admin Page/ Assign Tasks</h4>
    <p class="card-text"></p>
  </div>
    <div class="card">
        <table class="table table-hover" id="tsk">
            <thead>
              <tr>
                <th scope="col">ID</th>
                <th scope="col"> Title</th>
                <th scope="col">Description</th>
                <th scope="col">assingTo </th>
                
              </tr>
            </thead>
            <tbody class= >
              
            
            
            <%
					String databaseURL = "jdbc:mysql://localhost:3306/tmsdb?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
					String user = "root";
					String password = "emmanuel10";
					
					try(Connection connection = DriverManager.getConnection(databaseURL, user, password)) {
						String sql = "SELECT * FROM tasks ";
						Statement statement = connection.createStatement();
						ResultSet result = statement.executeQuery(sql);
						
						while(result.next()) {
							%> 
								<tbody>
										<td><%=result.getInt("id") %></td>
										<td><%=result.getString("title") %></td>
										<td><%=result.getString("description") %></td>
										<td>
					<div class="form-group">
					    <label for="exampleFormControlInput1"></label>
						    <select name=Member.member class="form-control">
				<option>-Select-</option>
					<%
					
					try(Connection connectionz = DriverManager.getConnection(databaseURL, user, password)) {
						String sqlz = "SELECT * FROM member";
						Statement statementz = connectionz.createStatement();
						ResultSet resultz = statementz.executeQuery(sqlz);
						
						while(resultz.next()) {
							%><option value="<%=resultz.getInt("id") %>"><%=resultz.getString("username") %></option> <%
						}
					} 		catch(SQLException ex) {
						ex.printStackTrace();
						throw ex;
					}
		
					%>
			</select>
				    </div>    
				</td>
				 <td><button type="submit" class="btn btn-primary mb-2" id="tsk">Confirm</button></td>
			
							<%
						}
					} 		catch(SQLException ex) {
						ex.printStackTrace();
						throw ex;
					}
		
					%>
            
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