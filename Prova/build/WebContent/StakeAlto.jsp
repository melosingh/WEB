<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <!-- Stile CSS Youtube -->
<style >
.youtube-container { 
display: block; 
margin: 20px auto; 
width: 100%; 
max-width: 600px; 
}

.youtube-player { 
display: block; 
width: 100%; /* assuming that the video has a 16:9 ratio */ 
padding-bottom: 56.25%; 
overflow: hidden; 
position: relative; 
width: 100%; 
height: 100%; 
cursor: hand; 
cursor: pointer; 
display: block; 
}

img.youtube-thumb { 
bottom: 0; 
display: block; 
left: 0; 
margin: auto; 
max-width: 100%; 
width: 100%; 
position: absolute; 
right: 0; 
top: 0; 
height: auto 
}

div.play-button { 
height: 72px; 
width: 72px; 
left: 50%; 
top: 50%; 
margin-left: -36px; 
margin-top: -36px; 
position: absolute; 
background: url("http://i.imgur.com/TxzC70f.png") no-repeat; 
}

#youtube-iframe { 
width: 100%; 
height: 100%; 
position: absolute; 
top: 0; 
left: 0; 
}
</style>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"

      integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"

      crossorigin="anonymous">
  </head>
    <!-- COMINCIO A CREARE LA NAV BAR IN ALTO-->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
    <div><img src="LogoGigi.jpg" alt="logo gigi"></div>
      <div   class="container"> <a class="navbar-brand" href="/Prova/Servlet?action=homePage">ScommettereComeGigi</a>
      </div>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"

        aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
         <li class="nav-item active ">
          <c:if test= "${Loggato !=true}" > 
            <form action="<%="/Prova/Servlet?action=login" %>" method="post" style="height: 84px; width: 513px">  
				<font color="white">Username</font> <input type="text" name="username"/>  <font color="white">Password</font><input type="password" name="userpass"/> 
				<input type="submit" value="login" formmethod="post"/>  
			</form>  </c:if>
			  <c:if test= "${Loggato ==true}" >
			   ${UtenteLoggato.getNome()}   ${UtenteLoggato.getCognome()}
			   </c:if>
			  
			  
		  </li>
          <li class="nav-item active"> <a class="nav-link" href="#">Home</a> </li>
          <li class="nav-item"> <a class="nav-link" href="#">Chi sono</a> </li>
          <li class="nav-item"> <a class="nav-link" href="https://www.instagram.com/scommetterecomegigi/?hl=it">Contatti</a> </li>
        </ul>
      </div>
    </nav>
    <!-- FINISCE LA NAV BAR -->
  <body>
  

 <div class="container">
  <div class="row">
    <div class="col"> <div class="col-lg-7">
  		
  			<h1>Stake Alto</h1>
  			<p>Ciao , qui trovi tutti i miei stake alti ...
  				Prova a dare un occhiata alle vecchie schedine per farti un idea di quello che gioco</p>
  			<c:if test= "${Loggato !=true}" > 
          <button onclick='registrati()' id=BottoneRegistrati class="btn btn-warning btn-lg" href="#">Registrati!</button>  </c:if>
        </div></div>
        
         <div class="col-lg-2"> 
<iframe id="webroundbuttonwidget2" file="webroundbuttonwidget" src="https://telegrambutton.com/webroundbuttonwidget.php?chat_id=Melo1908&showchatid=true&showmembercount=true&showmembercount=true&color=&pulse=true&textcolor=white&shadowval=z-depth-1&textval=join channel" border="1" style="border:20px;height: 100px;width: 100px;z-index:9999;position:fixed;bottom:0;right:0;"></iframe>      </div>
    </div>
   
  </div>
   <div class="card text-white bg-secondary my-4 text-center">
      <div class="card-body">
        <p class="text-white m-0">IN PRIMO PIANO !</p>
      </div>
    </div>
    
    <div class="row">
      <div class="col-md-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header" id="stakealto">Stake Alto</h4>
          <div class="card-body">
            <p class="card-text">In questa sezione rientrano tutte le mie
              giocate più sicure ...</p>
              <img class="img-fluid rounded" src="stake_alto.jpg"> 
          </div>
          <div class="card-footer"> <a href='/Prova/Servlet?action=stakealto' id=BottoneStakeAlto class="btn btn-warning">Approfondisci </a>
          </div>
        </div>
      </div>
      <div class="col-md-4 mb-4">
        <div class="card h-100" >
          <h4 class="card-header">Stake Medio</h4>
          <div class="card-body">
            <p class="card-text">In questa sezione rientrano tutte le mie
              giocate con una difficoltà media ...</p>
              <img class="img-fluid rounded" src="stake_medio.jpg">
          </div>
          <div class="card-footer"> <a href='/Prova/Servlet?action=stakemedio' class="btn btn-warning">Approfondisci</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Stake Basso </h4>
          <div class="card-body">
            <p class="card-text">In questa sezione rientrano tutte le mie
             giocate con difficoltà bassa ...</p>
             <img class="img-fluid rounded" src="stake_basso.jpg">
          </div>
         <!-- <div class="card-footer"> <a href="#" class="btn btn-warning">Approfondisci</a> -->
        <div class="card-footer"> <a href='/Prova/Servlet?action=stakebasso' class="btn btn-warning">Approfondisci</a> 
        
          </div>
        </div> 
      </div>
    </div>
    
    
    <div class="row">
  <div class="col-6">	
  <!--  Parte fatta da Melo  -->
  <div class="row">
    <div class="col-sm"> '${immaginiMultipleCampionati.get(1).getQuota()}'</div>
    
    <div class="col">
  <!--    <input type="radio" name="op1" value="option 1"/>option 1<br>	  -->
        <button onclick='sinistra()' id=BottoneImmagini class="btn btn-warning btn-lg" href="#">Cambia Immagine!</button> 
    </div>
    
  <p id="x" > <img name="multipla" src= '${immaginiMultipleCampionati.get(1).getPath()}' class="img-fluid"> </p>
  
    
 <!--     <div class="col">3 di 3</div> </div> --!>
  <!--  Fino a qui  -->
   
   <div class="row">
   <p>		</p>
   <p>		</p>
   		<div>
     <button onclick='immIndietro()' id=BottoneImmAvanti class="btn btn-warning btn-lg" href="#">Indietro</button> 
      <button onclick='immIndietro()' id=BottoneImmAvanti class="btn btn-warning btn-lg" href="#">Avanti</button> 
      </div>
  </div>
    
    </div>
    </div>		
  
  <div class="col-6">
  
    <div class="col-sm" class="youtube-container">
		<!--  video preso a caso per mettere qualcosa -->
   		<div class="youtube-player" data-id="MYKhD5jRt68"></div> 
	</div>
  
  </div>
</div>





<div>
<p >			</p>
<p >			</p>
</div>


	<!--creo il footer !-->
<footer class="sticky-top py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright © ScommettereComeGigi</p>
      </div>
</footer>

<p>	</p>

</body>


<script>
function sinistra(){
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		console.log("responseTEXT: ", xhttp.responseText);
		document.getElementById("x").innerHTML = xhttp.responseText;
	};
	
	xhttp.open("post","/Prova/Servlet?action=scorrimento",true);
	xhttp.send();
}
</script>

<script>

function homePage(){
	window.location.href="/Prova/Servlet?action=homePage";
}

</script>

<script>
(function() {
    var v = document.getElementsByClassName("youtube-player");
    for (var n = 0; n < v.length; n++) {
        var p = document.createElement("div");
        p.innerHTML = labnolThumb(v[n].dataset.id);
        p.onclick = labnolIframe;
        v[n].appendChild(p);
    }
})();
 
function labnolThumb(id) {
    return '<img class="youtube-thumb" src="//i.ytimg.com/vi/' + id + '/hqdefault.jpg"><div class="play-button"></div>';
}
 
function labnolIframe() {
    var iframe = document.createElement("iframe");
    iframe.setAttribute("src", "//www.youtube.com/embed/" + this.parentNode.dataset.id + "?autoplay=1&autohide=2&border=0&wmode=opaque&enablejsapi=1&controls=0&showinfo=0");
    iframe.setAttribute("frameborder", "0");
    iframe.setAttribute("id", "youtube-iframe");
    this.parentNode.replaceChild(iframe, this);
}
</script>






				<!-- Stile CSS Youtube -->
				<style >
				.youtube-container { 
				display: block; 
				margin: 20px auto; 
				width: 100%; 
				max-width: 600px; 
				}
				
				.youtube-player { 
				display: block; 
				width: 100%; /* assuming that the video has a 16:9 ratio */ 
				padding-bottom: 56.25%; 
				overflow: hidden; 
				position: relative; 
				width: 100%; 
				height: 100%; 
				cursor: hand; 
				cursor: pointer; 
				display: block; 
				}
				
				img.youtube-thumb { 
				bottom: 0; 
				display: block; 
				left: 0; 
				margin: auto; 
				max-width: 100%; 
				width: 100%; 
				position: absolute; 
				right: 0; 
				top: 0; 
				height: auto 
				}
				
				div.play-button { 
				height: 72px; 
				width: 72px; 
				left: 50%; 
				top: 50%; 
				margin-left: -36px; 
				margin-top: -36px; 
				position: absolute; 
				background: url("http://i.imgur.com/TxzC70f.png") no-repeat; 
				}
				
				#youtube-iframe { 
				width: 100%; 
				height: 100%; 
				position: absolute; 
				top: 0; 
				left: 0; 
				}
				</style>





<script>

function homePage(){
	window.location.href="/Prova/Servlet?action=homePage";
}

</script>



<script>
(function() {
    var v = document.getElementsByClassName("youtube-player");
    for (var n = 0; n < v.length; n++) {
        var p = document.createElement("div");
        p.innerHTML = labnolThumb(v[n].dataset.id);
        p.onclick = labnolIframe;
        v[n].appendChild(p);
    }
})();
 
function labnolThumb(id) {
    return '<img class="youtube-thumb" src="//i.ytimg.com/vi/' + id + '/hqdefault.jpg"><div class="play-button"></div>';
}
 
function labnolIframe() {
    var iframe = document.createElement("iframe");
    iframe.setAttribute("src", "//www.youtube.com/embed/" + this.parentNode.dataset.id + "?autoplay=1&autohide=2&border=0&wmode=opaque&enablejsapi=1&controls=0&showinfo=0");
    iframe.setAttribute("frameborder", "0");
    iframe.setAttribute("id", "youtube-iframe");
    this.parentNode.replaceChild(iframe, this);
}
</script>






				<!-- Stile CSS Youtube -->
				<style >
				.youtube-container { 
				display: block; 
				margin: 20px auto; 
				width: 100%; 
				max-width: 600px; 
				}
				
				.youtube-player { 
				display: block; 
				width: 100%; /* assuming that the video has a 16:9 ratio */ 
				padding-bottom: 56.25%; 
				overflow: hidden; 
				position: relative; 
				width: 100%; 
				height: 100%; 
				cursor: hand; 
				cursor: pointer; 
				display: block; 
				}
				
				img.youtube-thumb { 
				bottom: 0; 
				display: block; 
				left: 0; 
				margin: auto; 
				max-width: 100%; 
				width: 100%; 
				position: absolute; 
				right: 0; 
				top: 0; 
				height: auto 
				}
				
				div.play-button { 
				height: 72px; 
				width: 72px; 
				left: 50%; 
				top: 50%; 
				margin-left: -36px; 
				margin-top: -36px; 
				position: absolute; 
				background: url("http://i.imgur.com/TxzC70f.png") no-repeat; 
				}
				
				#youtube-iframe { 
				width: 100%; 
				height: 100%; 
				position: absolute; 
				top: 0; 
				left: 0; 
				}
				</style>
</html>
