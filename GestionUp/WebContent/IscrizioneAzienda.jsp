<%@page import="business.AziendaManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Iscrizione Azienda</title>
<style>
.centrato{
	text-align:center;
	font-family: arial;
}

</style>
</head>
<body>
<form action="/GestionUp/IscrizioneAziendaServlet" class = "centrato" method="post">
	<h1> Iscrizione azienda</h1>
	<label>Inserisci il nome dell'azienda </label>
	<input type="text" name="nome">
	<br><br>
	<label>Inserisci il tipo di azienda </label>
	<input type="text" name="tipo">
	<br><br>
	<label>Inserisci il capitale dell'azienda </label>
	<input type="text" name="capitale">
	<br><br><br>
	<label>Inserisci username per il profilo </label>
	<input type="text" name="username">
	<br><br>
	<label>Inserisci password </label>
	<input type="password" name="password">
	<br><br>
	<label>Inserisci e-mail  </label>
	<input type="text" name="email">
	<br><br>
	<input type="submit" value="Invia dati">
	
	</form>

 
</body>
</html>