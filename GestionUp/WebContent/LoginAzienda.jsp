<%@page import="business.Login"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<title>Login Azienda</title>
<style>
.centrato{
	text-align:center;
	font-family: arial;
}
</style>
</head>
<body>
<form class = "centrato" method="post">
	<h1> Login azienda</h1>
	<label>Username: </label>
	<input type="text" name="username">
	<br><br>
	<label>Password: </label>
	<input type="password" name="password">
	<br><br>
	<input type="submit" value="Accedi">
	<br><br>		
												<!-- non è vero che la stringa vuota mi permetta di loggarmi --> 
	 <% if (request.getParameter("username") != null && !"".equals(request.getParameter("username"))) { 
		 if (Login.loginAzienda(request.getParameter("username"), request.getParameter("password")) == true) { %>
		 	 <a href ="HomeAzienda.jsp"> Dati corretti, puoi effettuare l'accesso </a> 

		<%} else {%>
			<p> I dati che hai inserito sono errati </p> 
		<% } 
	  }%>
	  <br><br>
</form>

<p class = "centrato"> Non sei ancora iscritto? Clicca su iscriviti   </p>

<p class = "centrato">
<input type="button"  value="Iscriviti" onclick="location.href='IscrizioneAzienda.jsp';" />
</p>





</body>
</html>