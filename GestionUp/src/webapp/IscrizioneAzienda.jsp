<%@page import="business.AziendaManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Iscrizione Azienda</title>
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
.centrato {
	text-align: center;
	font-family: arial;
}

.btn-logout {
	margin-left: 15px;
	color: white!important;
}
</style>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
</head>
<body background="sfondo.PNG">
<form action="/GestionUp/IscrizioneAziendaServlet" class = "centrato" method="post"><br>
	<h1> Iscrizione azienda</h1>
	
  <div class="form-group">
    <label for="formGroupExampleInput">Nome azienda</label>
    <input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci nome" name="nome" >
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput">Tipo azienda</label>
    <input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci tipo di azienda" name="tipo">
  </div>
  <div class="form-group">
    <label for="formGroupExampleInput">Capitale azienda</label>
    <input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci capitale azienda" name="capitale">
  </div>
  <br><br>
  <div class="form-group">
    <label for="formGroupExampleInput">Imposta username per il profilo</label>
    <input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci username" name="username">
  </div>
   <div class="form-group">
    <label for="formGroupExampleInput">Imposta password</label>
    <input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci password" name="password">
  </div>
	 <div class="form-group">
    <label for="formGroupExampleInput">Inserisci l'email</label>
    <input type="email" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci email" name="email">
  </div>
	<input type="submit"  class ="btn btn-primary" value="Invia dati"/>
	
	</form>

 
</body>
</html>