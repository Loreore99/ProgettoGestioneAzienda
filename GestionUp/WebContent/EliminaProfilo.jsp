<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
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
<meta charset="ISO-8859-1">
<title>Elimina profilo</title>
</head>
<body background="sfondo.PNG">
<br><br>
<h2 class ="centrato"> Vuoi eliminare il tuo profilo dall'applicazione? Se si inserisci il tuo username e clicca su Disiscriviti</h2><br>
<form action ="/GestionUp/DisiscrizioneAziendaServlet" class = "centrato" method="post">
	 <div class="form-group">
    <label for="formGroupExampleInput"></label>
    <input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci username" name="username" >
  </div>
 
<button type="submit" class="btn btn-primary" value="disiscriviti">Disiscriviti</button>

</body>
</html>