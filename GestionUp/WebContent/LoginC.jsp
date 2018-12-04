<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {background-color: grey;color: PaleGreen}
div {width: 200px;height: 75px;margin: 0 auto;text-align: center;}
h1 {text-align: center;}
h2 {text-align: left;}
h3 {text-align: left;}
h4 {text-align: left;}
h5 {text-align: center;}
button {width: 100px;height: 25px;margin: 0 auto;align: center}
</style>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<header></header>
<body>
<h1>Login</h1>
<div>
<h2>Nome utente</h2>
<input name="Utente" type="text" placeholder="nome utente"  size="30" maxlength="200" />
</div>
<div>
<h3>Password</h3>
<input name="Password" type="text" placeholder="password" size="30" maxlength="200" />
</div>
<div>
<input type="button" value="Login">
</div>
<div>
<h5>Non sei ancora registrato?</h5>
<input type="button" value="Registrati">
</div>
</body>
</html>