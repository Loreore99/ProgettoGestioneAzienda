<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Richiedi progetto</title>
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
<form action="/GestionUp/RichiediProgettoServlet" class = "centrato" method="post"><br>
	<h1> Richiedi progetto</h1>
	
	 <div class="form-group">
    <label for="formGroupExampleInput">Che tipo di progetto vuoi richiedere all'azienda?</label>
    <br>
    <input type="text" style="width: 1000px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci progetto" name="nome" >
    <br><br>
    <label for="formGroupExampleInput">Inserisci il tuo username in modo tale che l'azienda sappia chi l'ha richiesto</label>
    <br>
     <input type="text" style="width: 500px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci username" name="username" >
  </div>
<input type="submit"  class ="btn btn-primary" value="Invia progetto"/>

<br><br>		
														
	
	<% 	if (request.getAttribute("esito") != null) { 
		if ((boolean)request.getAttribute("esito") == true) { %>
			<p> Progetto inviato con successo </p> 
		<% } else { %>
		<p> C'è stato un imprevisto, riprova </p> 
		<% }
		}%>
		
	
    <a class="btn btn-secondary" href= "HomeCliente.jsp">Home</button>
   
</body>
</html>