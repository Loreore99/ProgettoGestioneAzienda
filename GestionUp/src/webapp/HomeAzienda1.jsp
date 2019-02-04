<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
<link href="navbar.css" rel="stylesheet" id="style">
<meta charset="ISO-8859-1">
<title>Home azienda</title>
</head>
<body style="background-color: #ECF0F1;">


<script>


var maxHeight = 400;

$(function(){

    $(".dropdown > li").hover(function() {
    
         var $container = $(this),
             $list = $container.find("ul"),
             $anchor = $container.find("a"),
             height = $list.height() * 1.1,       // make sure there is enough room at the bottom
             multiplier = height / maxHeight;     // needs to move faster if list is taller
        
        // need to save height here so it can revert on mouseout            
        $container.data("origHeight", $container.height());
        
        // so it can retain it's rollover color all the while the dropdown is open
        $anchor.addClass("hover");
        
        // make sure dropdown appears directly below parent list item    
        $list
            .show()
            .css({
                paddingTop: $container.data("origHeight")
            });
        
        // don't do any animation if list shorter than max
        if (multiplier > 1) {
            $container
                .css({
                    height: maxHeight,
                    overflow: "hidden"
                })
                .mousemove(function(e) {
                    var offset = $container.offset();
                    var relativeY = ((e.pageY - offset.top) * multiplier) - ($container.data("origHeight") * multiplier);
                    if (relativeY > $container.data("origHeight")) {
                        $list.css("top", -relativeY + $container.data("origHeight"));
                    };
                });
        }
        
    }, function() {
    
        var $el = $(this);
        
        // put things back to normal
        $el
            .height($(this).data("origHeight"))
            .find("ul")
            .css({ top: 0 })
            .hide()
            .end()
            .find("a")
            .removeClass("hover");
    
    });  
    
});

</script>


<div class="container">
	
<nav>
<ul class="dropdown" class="navbar-inner">
        	<li class="drop"><a href="#">Info dipendenti</a>
        		<ul class="sub_menu">
							<li><a href="http://localhost:8080/GestionUp/AssumiLavoratore.jsp">Assumi dipendente</a></li>
							<li><a href="http://localhost:8080/GestionUp/LicenziaLavoratore.jsp">Licenzia dipendente</a></li>
							<li><a href="#">Modifica dipendente</a></li>
							<li><a href="#">Visualizza ore lavorative</a></li>
        		</ul>
        	</li>
        	<li class="drop"><a href="#">Progetti</a>
        		<ul class="sub_menu">
        			<li><a href="http://localhost:8080/GestionUp/ProgettiInAttesa.jsp">Progetti in attesa</a></li>
							<li><a href="#">Progetti attivi</a></li>
							<li><a href="#">Visualizza andamento del progetto</a></li>
							<li><a href="#">Assegna progetto</a></li>
        		</ul>
        	</li>
        	<li class="drop"><a href="#">Average Menu</a>
        		<ul class="sub_menu">
        			<li><a href="#">Lorem</a></li>
							<li><a href="#">Ipsum</a></li>
							<li><a href="#">Dolor</a></li>
							<li><a href="#">Lipsum</a></li>
							<li><a href="#">Consectetur </a></li>
        		</ul>
        	</li>
        	
        	<li >
        	<button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-log-out"></span> Log out
        </button>
        	</li>
       
        
       
        
</nav> 
</div>
<!--  
<div class='page'>
     <div class='section2'>
          <div class=' side-menu'>
               
              <a href="#home">Home</a>
              <a href="#news">News</a>
              <a href="#contact">Contact</a>
              <a href="#about">About</a>
              
              
         </div>
         <div class='content'>
                <canvas id="canvas" width="400" height="400"
                style="background-color:#d7e0de">
                </canvas>

         </div>
     </div>
     
</div> 
-->

	
</body>
</html>