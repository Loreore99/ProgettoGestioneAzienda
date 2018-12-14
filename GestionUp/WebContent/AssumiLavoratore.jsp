<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Assumi Dipendente</title>
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
<form action="/GestionUp/AssumiLavoratoreServlet" class = "centrato" method="post">
<br><br><br>
	<h1> Inserisci i dati del nuovo dipendente</h1>
	<div class="form-group">
    <label for="formGroupExampleInput"></label>
    <input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci matricola" name="matricola" >
 	</div>
	<div class="form-group">
    <label for="formGroupExampleInput"></label>
    <input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci nome" name="nome" >
 	</div>
	<div class="form-group">
    <label for="formGroupExampleInput"></label>
    <input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci cognome" name="cognome" >
 	</div>
	<div class="form-group">
    <label for="formGroupExampleInput"></label>
    <input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci codice fiscale" name="codFiscale" >
 	</div>
 	<br>
 	<h5> Dai uno username e una password al dipendente</h5>
 	<div class="form-group">
    <label for="formGroupExampleInput"></label>
    <input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci username" name="username" >
 	</div>
 	<div class="form-group">
    <label for="formGroupExampleInput"></label>
    <input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci password" name="password" >
 	</div>
 	
	<input type="submit" class="btn btn-primary" value="Conferma dipendente">

	</form>
</body>
</html>