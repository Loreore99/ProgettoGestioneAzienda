<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
#logo {
   background-position: center;
   position:absolute;
   width:100%;
   height:70%;
   border-bottom: 3px solid #000000;
}
</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<meta charset="ISO-8859-1">

<title>GestionUp</title>

</head>
<body style="background-color: aqua;">
<div id="logo" >
<img  height="100%" width="100%" src="sfondo.PNG" >
</div>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<table align = "center">
<tr>
<td><input type="button" align = "left" class="btn btn-danger btn-lg" value="Login Azienda" onclick="location.href='LoginAzienda.jsp';" />
<td><input type="button" align = "center" class="btn btn-danger btn-lg" value="Login Lavoratore" onclick="location.href='LoginLavoratore.jsp';" />
<td><input type="button" align = "right" class="btn btn-danger btn-lg" value="Login Cliente" onclick="location.href='LoginCliente.jsp';" />
</tr>
</table>



</body>
</html>