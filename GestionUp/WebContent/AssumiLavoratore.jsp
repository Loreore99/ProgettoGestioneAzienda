<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Assumi Dipendente</title>
<style>
.centrato{
	text-align:center;
	font-family: arial;
}
</style>

</head>
<body>
<form action="/GestionUp/AssumiLavoratoreServlet" class = "centrato" method="post">
<br><br><br>
	<h1> Inserisci i dati del nuovo dipendente</h1>
	<label>Inserisci matricola</label>
	<input type="text" name="matricola">
	<br><br>
	<label>Inserisci nome </label>
	<input type="text" name="nome">
	<br><br>
	<label>Inserisci cognome </label>
	<input type="text" name="cognome">
	<br><br>
	<label>Inserisci codice fiscale</label>
	<input type="text" name="codFiscale">
	<br><br><br><br>
	<label>Dai un username al dipendente</label>
	<input type="text" name="username">
	<br><br>
	<label>Dai una password al dipendente</label>
	<input type="password" name="password">
	<br><br>
	<input type="submit" value="Conferma dipendente">
	</form>
</body>
</html>