<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Progetti in attesa</title>
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
<div class = "centrato">
<br>
	<h5> Clicca qui per vedere la lista dei progetti richiesti</h5>

 <button id = "bottone" onclick="caricaProgetti()"> Visualizza </button>
  </div>
 <ul id="listaProgetti" style="margin-left: 550px">
 </ul>
 
 <br>
 
 
 <div class = "centrato">
 <h5> Vuoi approvare un progetto?</h5>
 <h3> Inserisci il nome del progetto da approvare</h3>
 <input type="text" style="width: 300px; class="form-control"  name="approva" id="approva">
 <!--  id="formGroupExampleInput" -->
 
 <button id = "bottone" onclick="approvaProgetti()"> Approva </button>
 </div>
 <ul id="listaApprovati" style="margin-left: 550px">
 </ul>
 
 <script
  src="https://code.jquery.com/jquery-3.3.1.min.js"
  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
  crossorigin="anonymous"></script>
 <script>
 function caricaProgetti() {
	 $.ajax({
		 url: 'ProgettiInAttesaServlet',
		 method: 'get'
	 })
	 .done(progetti => {
		console.log(progetti); 
		progetti.forEach(p => {
			$('#listaProgetti').append('<li>' + p.nome + ': <strong>' + p.andamento + '</strong>'+ ' richiesto da --&gt; '+ p.cliente.username + '</li>');
		});
	 });
 }
 
 function approvaProgetti() {
	
	 $.ajax({
		 url: 'ApprovaProgettiServlet?approva=' + $('#approva').val(),
		 method: 'get'
	 })
	 .done(progetti => { 
		console.log(progetti); 
		progetti.forEach(p => {
			$('#listaApprovati').append('<li>' + p.nome + ': <strong>' + p.andamento + '</strong>'+ ' richiesto da --&gt; '+ p.cliente.username + '</li>');
		});
	 });
 }
 
 </script>
 
 
</body>
</html>