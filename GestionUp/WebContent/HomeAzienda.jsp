<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body background="sfondo.PNG">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand"><img src = "sfondo.PNG" height="50px" width="85px"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<!-- menu a tendina che spunta quando rimpicciolisco lo schermo -->

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link">Home</a></li>

				<li class="nav-item"><a class="nav-link dropdown-toggle"
					href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Info Dipendenti </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="http://localhost:8080/GestionUp/AssumiLavoratore.jsp">Assumi	dipendente</a>
					    <a class="dropdown-item" href="http://localhost:8080/GestionUp/LicenziaLavoratore.jsp">Licenzia dipendente</a> 
					    <a class="dropdown-item" href="#">Modifica dipendente</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Visualizza ore lavorative</a>
					</div></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Progetti </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="http://localhost:8080/GestionUp/ProgettiInAttesa.jsp">Progetti in attesa</a> 
						<a class="dropdown-item" href="#">Progetti attivi</a>
						<a class="dropdown-item" href="#">Visualizza andamento del progetto</a>
						<a class="dropdown-item" href="#">Assegna progetto</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li>
					
					<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Info profilo </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="http://localhost:8080/GestionUp/EliminaProfilo.jsp">Elimina profilo</a> <a
							class="dropdown-item" href="http://localhost:8080/GestionUp/ModificaProfilo.jsp">Modifica dati personali</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>
					</div></li>

				<li class="nav-item active"><a class="nav-link"
					href="http://localhost:8080/GestionUp/InfoAzienda.jsp">Info
						azienda <span class="sr-only">(current)</span>
				</a></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				<button class="btn btn-outline-primary my-2 my-sm-0 btn-logout" type="submit"><a href="Home.jsp">Logout</a></button>
			</form>
			
		</div>
	</nav>
	


	<br>
	<br>
	<br>
	<h2 class="centrato">Progetti attivi al momento...</h2>
	<form name="casellaTesto" class="centrato" > <!-- method="post" action="pagina2.asp" -->
   <input type="text" name="nomeCasella" value="Contenuto" size="50">

</form>
	<h3 class="centrato">I dipendenti che ci stanno lavorando sono...</h3>

	<!--  per il menu a tendina  -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>