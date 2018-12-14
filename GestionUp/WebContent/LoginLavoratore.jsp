<%@page import="business.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Lavoratore</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<style>
.centrato{
	text-align:center;
	font-family: arial;
}
body{
background-repeat: no-repeat;
background-attachment: fixed;
background-position: center;
background-size: contain;
position: absolute;
height: 100%;
width: 100%;
}
</style>
</head>

<body background="sfondo.PNG">
<br><br><br><br>
<form class = "centrato" method="post">
	<h1> Login lavoratore</h1>
	 <div class="form-group">
    <label for="formGroupExampleInput">Username</label>
    <input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci username" name="username" >
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Password</label>
    <input type="password" style="width: 300px; class="form-control" id="formGroupExampleInput2" placeholder="Inserisci password" name="password">
     <small class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  </div>
  <button type="submit" class="btn btn-primary" value="Accedi">Accedi</button>
	<br><br>		
														<!-- non è vero che la stringa vuota mi permetta di loggarmi --> 
	 <% if (request.getParameter("username") != null && !"".equals(request.getParameter("username"))) { 
		 if (Login.loginLavoratore(request.getParameter("username"), request.getParameter("password")) == true) { %>
		 	<a href ="HomeLavoratore.jsp"> Dati corretti, puoi effettuare l'accesso </a> 

		<%} else {%>
			<p> I dati che hai inserito sono errati </p> 
		<% } 
	  }%>
</form>

</body>
</html>