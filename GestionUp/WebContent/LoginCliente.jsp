<%@page import="business.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Login Cliente</title>
<style>
body{
background-repeat: no-repeat;
background-attachment: fixed;
background-position: center;
background-size: contain;
position: absolute;
height: 100%;
width: 100%;
}
.centrato{
	text-align:center;
	font-family: arial;
}
</style>
</head>
<body background="sfondo.PNG">
<form class = "centrato" method="post">
<br><br><br><br>	
	<h1> Login Cliente</h1>
	 <div class="form-group">
    <label for="formGroupExampleInput">Username</label>
    <input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci username" name="username" >
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput2">Password</label>
    <input type="password" style="width: 300px; class="form-control" id="formGroupExampleInput2" placeholder="Inserisci password" name="password">
     <small class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  
  <button type="submit" class="btn btn-primary" value="Accedi">Accedi</button>
	<br><br>		
														<!-- non è vero che la stringa vuota mi permetta di loggarmi --> 
	 <% if (request.getParameter("username") != null && !"".equals(request.getParameter("username"))) { 
		 if (Login.loginCliente(request.getParameter("username"), request.getParameter("password")) == true) { %>
		 	 <a href ="HomeCliente.jsp"> Dati corretti, puoi effettuare l'accesso </a>

		<%} else {%>
			<p> I dati che hai inserito sono errati </p> 
		<% } 
	  }%>
	  <br><br>
</form>

<h3 class = "centrato"> Non sei ancora iscritto? Clicca su iscriviti   </h3>

<p class = "centrato">
<input type="button" class="btn btn-primary" value="Iscriviti" onclick="location.href='IscrizioneCliente.jsp';" />
</p>
</body>
</html>