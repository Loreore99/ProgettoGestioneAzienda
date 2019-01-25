<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
		function startTime()
		{
		var today=new Date();
		var h=today.getHours();
		var m=today.getMinutes();
		var s=today.getSeconds();
		// add a zero in front of numbers<10
		
		m=checkTime(m);
		s=checkTime(s);
		document.getElementById('txt').innerHTML=h+":"+m+":"+s;
		t=setTimeout('startTime()',500);
		}
		function checkTime(i)
		{
		if (i<10)
		{
		i="0" + i;
		}
		return i;
		}
		
		</script>
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
<body background="sfondo.PNG" onload="startTime()">

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
					aria-haspopup="true" aria-expanded="false"> Info ore lavorative </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Visualizza ore lavorate</a>
					    <a class="dropdown-item" href="#">Visualizza permessi</a> 
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Visualizza ferie</a>
					</div></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Richieste dai clienti </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="VisualizzaRichieste.jsp">Visualizza richieste</a> <a
							class="dropdown-item" href="">Visualizza dati cliente</a>
					</div></li>
				
				
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Sviluppo progetti  </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Cambia lo stato del progetto</a>
						<a class="dropdown-item" href="#">Dai feedback al cliente</a> <a
							class="dropdown-item" href="#">Consegna progetto</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Chat con il cliente</a>
						<a class="dropdown-item" href="#">Visualizza pagamento</a>
					</div></li>
					
					<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Info profilo </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="http://localhost:8080/GestionUp/EliminaProfilo.jsp">Elimina profilo</a> <a
							class="dropdown-item" href="http://localhost:8080/GestionUp/ModificaProfilo.jsp">Modifica dati personali</a>
					</div></li>

				<li class="nav-item active"><a class="nav-link"
					href="#">Info
						lavoratore <span class="sr-only">(current)</span>
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
		<br><br>
		
		<!-- form di inizio lavoro -->
		<form class = "centrato" method="get"  action="inizio">
		<h8> Inserisci il tuo username e clicca su "Inizio lavoro" per iniziare a lavorare</h8>
		<br>
		<input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci username" name="username" >
		 <button type="submit" id = "bottone" class="btn btn-primary" value="OraInizio"  >Inizio lavoro</button>
		 </form>
		 
		 
		 <br><br>
		 <!-- form di fine lavoro -->
		 <form class = "centrato" method="get"  action="fine">
		<h8> Inserisci il tuo username e clicca su "Fine lavoro" per finire di lavorare    </h8>
		<br>
		<input type="text" style="width: 300px; class="form-control" id="formGroupExampleInput" placeholder="Inserisci username" name="username" >
		  <button type="submit" id = "bottone" class="btn btn-primary" value="OraFine" >Fine lavoro</button>
		  <br><br><br>
		</form>
		
		
		<p class = "centrato"> Ore correnti: </p>
		  <p class = "centrato" id="txt"></p>
		
	
	
	

		
		

</body>
</html>