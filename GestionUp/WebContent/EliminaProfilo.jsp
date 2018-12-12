<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.centrato{
	text-align:center;
	font-family: arial;
}
</style>
<meta charset="ISO-8859-1">
<title>Elimina profilo</title>
</head>
<body>
<h2 class ="centrato"> Vuoi eliminare il tuo profilo dall'applicazione? Se si inserisci il tuo username e clicca su Disiscriviti</h2>
<form action ="/GestionUp/DisiscrizioneAziendaServlet" class = "centrato" method="post">
	 <div class="form-group">
    <label for="formGroupExampleInput">Username</label>
    <input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci username" name="username" >
  </div>
  <br>
<button type="submit" class="btn btn-primary" value="disiscriviti">Disiscriviti</button>

</body>
</html>