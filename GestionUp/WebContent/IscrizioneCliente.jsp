<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Iscrizione Cliente</title>
<style>
.centrato{
	text-align:center;
	font-family: arial;
}
</style>

</head>
<body>
<form action="/GestionUp/IscrizioneClienteServlet" class = "centrato" method="post">
	<h1> Iscrizione cliente</h1>
	<label>Inserisci nome </label>
	<input type="text" name="nome">
	<br><br>
	<label>Inserisci cognome </label>
	<input type="text" name="cognome">
	<br><br>
	<label>Inserisci codice fiscale</label>
	<input type="text" name="codFiscale">
	<br><br>
	<label>Inserisci partita Iva</label>
	<input type="text" name="partitaIva">
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