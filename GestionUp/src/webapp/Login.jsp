<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords"
          content="unique login form,leamug login form,boostrap login form,responsive login form,free css html login form,download login form">
    <meta name="author" content="leamug">
    <title>Login</title>
    <link href="style.css" rel="stylesheet" id="style">
    <!-- Bootstrap core Library -->
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet">
    <!-- Font Awesome-->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
<style>

.centrato{
 margin: 0 auto;
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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<body background="sfondo.PNG">

<div class="container" >
    <div class="row">
        <div class="col-md-offset-5 col-md-4 text-center centrato" >
                    <div class="form-login"></br>
                    <form  method="post"  action="login">
                <h2>Login</h2>
                </br>
                <input type="text" id="userName" class="form-control input-sm chat-input" placeholder="Username" name="username"/>
                </br></br>
                <input type="password" id="userPassword" class="form-control input-sm chat-input" placeholder="Password" name="password"/>
                </br></br>
                <div class="wrapper">
                        <span class="group-btn">
                             <button  type="submit" class="btn btn-primary" value="Accedi">Accedi</button>
                        </span>
                </div>
                
                <br><br>		
													<!-- non è vero che la stringa vuota mi permetta di loggarmi --> 
	 <% if (request.getParameter("username") != null && !"".equals(request.getParameter("username"))) { 
		 if (request.getAttribute("esito") == null || !((boolean)request.getAttribute("esito"))) { %>
			<p> I dati che hai inserito sono errati </p> 
		<% } 
	  }%> 	
                </form>
                
                <h3> Non sei ancora iscritto?    </h3>

<p >
<input type="button" class="btn btn-primary" value="Iscrizione cliente" onclick="location.href='IscrizioneCliente.jsp';" />
<input type="button" class="btn btn-primary" value="Iscrizione azienda" onclick="location.href='IscrizioneAzienda.jsp';" />
</p>
            </div>
        </div>
    </div>
    </br></br>
    <!--footer-->
    <div class="footer text-white text-center" >
       <p> <font color="black"> © 2018 Unique Login Form. All rights reserved | Design by <a href="https://leamug.com" rel="dofollow">Leamug</a></font></p>
    </div>
    <!--//footer-->
</div>
</body>
</html>
