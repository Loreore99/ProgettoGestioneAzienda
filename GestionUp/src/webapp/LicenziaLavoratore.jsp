<%@page import="business.LavoratoreManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Licenzia lavoratore</title>
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
<br><br>
<form action = "/GestionUp/LicenziaLavoratoreServlet" class = "centrato" method="post">
	<h1> Inserisci username del dipendente da licenziare</h1>
	 <div class="form-group">
    <label for="formGroupExampleInput"></label>
    <input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci username" name="username" >
  </div>
	
	<input type="submit" class="btn btn-primary" value="Conferma licenziamento">
	
	</form>
	
</body>
</html>