<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Stato progetto</title>
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
<form action="/GestionUp/StatoProgettoServlet" class = "centrato" method="post"><br>
	<h1> Stato progetti </h1>
	
	 <div class="form-group">
    <label for="formGroupExampleInput">Inserisci il nome del progetto di cui vuoi vedere lo stato</label>
    <br>
    <input type="text" style="width: 500px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci progetto" name="nome" >
  </div>
<input type="submit"  class ="btn btn-primary" value="Visualizza stato"/>
<% if (request.getAttribute("progetto") != null) { 
modello.Progetto p = (modello.Progetto)request.getAttribute("progetto");%>
 <p>Lo stato del progetto è: <strong><%= p.getAndamento() %></strong></p>
<% }%>

<br><br>	
<a class="btn btn-secondary" href= "HomeCliente.jsp">Home</button>	
</body>
</html>