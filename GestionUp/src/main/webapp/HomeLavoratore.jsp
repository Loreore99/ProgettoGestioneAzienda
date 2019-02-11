<!DOCTYPE html>
<html>

<head>
    <link rel='stylesheet' href='style.lav.css'>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <meta charset="ISO-8859-1">
    <title>Gestion Up Home Lavoratore</title>
   
</head>
<header>
    <nav >
        
        <div class="logo">
            <img src="logo.png" class="logo">
        </div>
        
        <ul class="nav-links" >
            <li>
                <a href="#home">Home</a>
                <ul class="resp-links2 " >
                        <li>
                            <a href="#">Orari</a>
                        </li>
                        <li>
                            <a href="#" >Modifica Orari</a>
                        </li>
                        <li>
                            <a href="#" >Malattia</a>
                        </li>
                        <li>
                            <a href="#" >Report</a>
                        </li>
                        
                    </ul>
            </li>
                

            <li>
                <a href="#" >Progetti</a>
                <ul class="resp-links2 " >
                        <li>
                            <a href="#">Progetto</a>
                        </li>
                        <li>
                            <a href="#" >Feedback</a>
                        </li>
                        <li>
                            <a href="#" >Chat</a>
                        </li>
                        <li>
                            <a href="#" >Avvisi Modifiche </a>
                       </li>
                        <li>
                              <a href="#" >Rimborsi</a>
                         </li>
                        
                    </ul>
            </li>
            <li>
                <a href="#" >Calendario</a>
                    <ul class="resp-links3 " >
                            
                        </ul>
            </li>
            <li>
                    <a onclick="document.getElementById('id04').style.display='block'" >Messaggi</a>
                        <ul class="resp-links3 " >
                                
                                
                            </ul>
                </li>
               
        </ul>
        
        <div class="burger">
            <div class="line1"></div>
            <div class="line2"></div>
            <div class="line3"></div>
          </div>

          <div class="login">
            <img src="porcellino.png"class="login">PROFILO
        </div>
        
    </nav>
    



</header>

<body onload=display_ct();>
        <div class='page' id='home'>
                <ul class="sidenav-links " >
                        <li>
                            <a href="#home">Orari</a>
                        </li>
                        <li>
                                
                            <a onclick="document.getElementById('id01').style.display='block'" >Modifica Orari</a>
                        </li>
                        <li>
                            <a onclick="document.getElementById('id02').style.display='block'" >Malattia</a>
                        </li>
                        <li>
                            <a onclick="document.getElementById('id03').style.display='block'" >Report</a>
                        </li>
                    </ul>
                
               

                    <div class='content'>

                            <div class='orologio' >
                                    <span id='ct' ></span>
                            </div>
                                    
                         <div class='color1'>

                         </div>



                 
		 
		 
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
		
		<% if (request.getAttribute("oreLavorate") != null) { %>
		<h2 class ="centrato">Tempo lavorato: ${ oreLavorate } ore e ${ minutiLavorati} minuti</h2>
		<% } %>
		
		<p class = "centrato"> Ore correnti: </p>
		  <p class = "centrato" id="txt"></p>

                        

                        
                        <div class='tab-home'>
                                <table>
                                        <tr>
                                          <th>Ora Inizio</th>
                                          <th>Ora Fine</th>
                                          <th>Totale </th>
                                        </tr>
                                        <tr>
                                          <td>Alfreds Futterkiste</td>
                                          <td>Maria Anders</td>
                                          <td>Germany</td>
                                        </tr>
                                        <tr>
                                          <td>Centro comercial Moctezuma</td>
                                          <td>Francisco Chang</td>
                                          <td>Mexico</td>
                                        </tr>
                              </table>
                        </div>
                        
                        <div class='color2'>
                            

                        <div class='btn-homebot'>
                                <button class='inizia'>SETTIMANA</button>
                                <div></div>
                                <button class='finisci'>MESE</button>
                              </div>
                        </div>
        
                    </div>
        </div>


        <div id="id01" class="modal">
           
    

               <img src="modifica orari.png" width=100% height=200%>
<!--
                        <script src="https://code.highcharts.com/highcharts.js"></script>
                        <script src="https://code.highcharts.com/highcharts-more.js"></script>
                        
                        <script src="https://code.highcharts.com/modules/solid-gauge.js"></script>
                        
                        <div class="outer">
                          <div id="container-speed" class="chart-container"></div>
                          <div id="container-rpm" class="chart-container"></div>
                        </div>
        
                </div> -->
            </div>
            <div id="id02" class="modal">
           
    

               <img src="malattia.png" width=100% height=200%>
               </div>
               <div id="id03" class="modal">
           
    

               <img src="report.png" width=100% height=200%>
               </div>
               <div id="id04" class="modal">
           
    

               <img src="chat.png" width=100% height=200%>
               </div>
   
</body>
<script src="app.lav.js"></script>

</html>