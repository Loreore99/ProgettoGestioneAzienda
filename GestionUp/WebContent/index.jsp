<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <link rel='stylesheet' href='style.1.css'>
    <link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
    <meta charset="UTF-8">
    <title>Gestion Up </title>
   
</head>
<header>
    <nav >
        
        <div class="logo">
            <img src="logo.png" class="logoa">
            <img src="logo abb.png" class="logoabb">
            </div>
        
        
        <ul class="nav-links" >
            <li>
                <a href="#home">Home</a>
                
            </li>
            <li>
                <a href="#utenti" >Utenti</a>
                
            </li>
            <li>
                <a href="#sito" >Il sito</a>
                    
            </li>
            <li>
                <a href="#app" >L'app</a>
                    
            </li>
            <li>
                <a href="#utenti2" >I vantaggi</a>
                    
            </li>
            <li>
                    <a href="#iscriviti" >Iscriviti</a>
                    
                        
            </li>
            
        </ul>

          <div class="login">
                <button onclick="document.getElementById('id01').style.display='block'">

                         <img src="porcellino.png"class="login">LOGIN 
                 </button>
        </div>
        

        <div class="burger">
                <div class="line1"></div>
                <div class="line2"></div>
                <div class="line3"></div>
              </div>

    </nav>
    
    <div id="id01" class="modal">
           
    

          <form class="modal-content animate" method="post"  action="login">
            <div class="imgcontainer">
              <img src="porcellino.png" alt="Avatar" class="avatar">
            </div>
            <div class="container">
            <div class="container1">
              <label for="uname"><b>Username</b></label>
              <input type="text" placeholder=" Username" name="username" required>
        
              <label for="psw"><b>Password</b></label>
              <input type="password" placeholder=" Password" name="password" required>
              
              <div><button type="submit" value="Accedi">Login</button></div>
              <label>
                <input type="checkbox" checked="checked" name="remember"> Remember me
              </label>
            </div>
        
            <div class="container1" >
              <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">ESCI</button>
              <span class="psw">Forgot <a href="#">password?</a></span>
            </div>
            
    
        </div>
        
                												<!-- non è vero che la stringa vuota mi permetta di loggarmi --> 
	 <% if (request.getParameter("username") != null && !"".equals(request.getParameter("username"))) { 
		 if (request.getAttribute("esito") == null || !((boolean)request.getAttribute("esito"))) { %>
			<p> I dati che hai inserito sono errati </p> 
		<% } 
	  }%> 	
        
        
          </form>
        </div>



</header>

<body>
    
        <div class='color' id="home">

            </div>
        <div class='home'>
                
                <video width="2000" height="700" autoplay>
                        <source src="Composizione 1 (convert-video-online.com).mp4" type="video/mp4">
                        <source src="Composizione 1 (convert-video-online.com).mp4" type="video/mp4">
                        
                    Il browser non supporta il tag video
                    </video>
               
        </div>
        <div class='color1' id="utenti">

            </div>
        <div class='utenti' >
            <div class='dipendente'>
                <h1>DIPENDENTE</h1>
               <p>Timbratura istantanea, anche fuori sede.</p>
               <p>Segnalazione rimborsi, ferie, malattie.</p>
               <p>Contatto diretto con il cliente (senza chiamate o mail di troppo).</p>
            </div>
            <div class='azienda'>
                    <h1>AZIENDA</h1>
               <p>Resoconto sempre sotto mano, niente piu carta su sarta.</p>
               <p>Monitoraggio progetti e andamento lavoratori.</p>
               <p>Contatto diretto con il cliente.</p>
             </div>
            <div class='cliente'>
                  <h1>CLIENTE</h1>
                        <p>Tenere il proprio investimento sempre sotto controllo.</p>
                        <p>Creare feedback e proporre cambiamenti.</p>
                        <p>Evitare perdite di tempo.</p>
            </div>
        </div>
            <div class='color2' id="sito">

                </div>
        
         
         <div class='sito'>
             <div>
                 <img src="PC.png">
             </div>
             <div>
                 <p>
                        Gestion.up è un'app di scheda attività dei dipendenti moderna che funziona in un browser. Gestion.up semplifica la raccolta della scheda attività e l'analisi del tempo in modo da non dover più compilare, scansionare e archiviare fogli di lavoro cartacei.
                        Usando Gestion.up, non è più necessario fare affidamento su schede orari e schede di tempo fisiche tradizionali, sistemi di cronometraggio complessi, fogli di calcolo Excel o stime empiriche.
                        Gestion.up è super semplice e completamente gratuito, indipendentemente dalle dimensioni della squadra.
                        Come funziona? Un dipendente accede semplicemente con la propria email, seleziona la propria attività e compila i tempi. Quindi, puoi immediatamente vedere, analizzare ed esportare i dati nei rapporti.
                        Con Gestion.up, i dipendenti mensili e orari possono inserire le ore spese per progetti / attività specifici per tutta la settimana e rivederli quando necessario in modo che i dati dei rapporti siano coerenti.
                        Gestion.up può anche calcolare il costo del lavoro e calcolare automaticamente le ore fatturabili, in base alle tariffe orarie dei dipendenti.
                        
                 </p>
             </div>
        
        </div>
        <div class='color3' id="utenti2">

        </div>

    
    <div class='utenti2'>
        <div class='titolo' >   <h1>UTILIZZA I DATI PER:</h1></div>
        <div class='colonne' >
        <div >
            
           <p>Risorse umane e buste paga
                Traccia presenze, straordinari, chi ha lavorato su cosa e quando, e quanto dovrebbe essere pagato a tutti.</p>
           
        </div>
        <div >
                
           <p>Fatturazione del cliente
                Scopri quanto hai lavorato su un progetto, quanto hai bisogno di fatturare i clienti, impostare le tariffe fatturabili e aggiungere elementi narrativi alle voci 
                temporali in modo da poter giustificare le fatture in un secondo momento.</p>
           
        </div>
        <div >
              
                    <p>Report sullo stato del progetto
                            Stimare il tempo, tenere traccia del budget previsto per le attività in modo da poter effettuare il budget rispetto all'analisi effettiva, 
                            calcolare l'utilizzo delle risorse e identificare dove vengono impiegate le ore di lavoro.</p>
                   
        </div>
    </div>
    </div>
    <div class='appicon'id="app">
            
            <div>
                    <img src="ICONA 2.png">
            </div>
            
    
    </div>
        <div class='app'>
                <div>
                    
<h1>COME UTILIZZARE L'APP:</h1>
<h2>Passo 1</h2>
<p>Crea un account Gestion.up
Iscriviti gratis</p>

<h2>Passo 2</h2>
<p>Imposta progetti.
Crea clienti, progetti e attività in modo che i tuoi dipendenti possano classificare le loro voci di tempo.</p>

<h2>Passaggio 3</h2>
<p>Invita dipendenti.
Clockify è completamente gratuito, indipendentemente dal numero di dipendenti che hai.</p>

<h2>Passaggio 4</h2>
<p>I dipendenti riempiono i loro fogli di lavoro
 nel browser online o utilizzando un'app mobile (Android, iOS).<p>
                        
                    </div>
                <div>
                        <img src="mobile_app_screens-1.png">
                </div>
        
        </div>
    
        <div class='footer'>
       
      </form> 



        </div>
        
 
        
   
</body>
<script src="app.1.js"></script>

</html>