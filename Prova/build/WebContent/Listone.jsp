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
  
<!--  INIZIO DELLA DESCRIZIONE  -->

<div class="container">
  <div class="row" >
    <div class="col-6 " >
	
	<h1> Listoni </h1>
  		<p>	Ciao , qui trovi tutti i miei listoni   ...
  				Prova a dare un occhiata alle vecchie schedine per farti un idea di quello che gioco	
  		</p>
  			<c:if test= "${Loggato !=true}" > 
          <button onclick='registrati()' id=BottoneRegistrati class="btn btn-warning btn-lg" href="#">Registrati! </button>  </c:if>
    </div>
    
    <div class="col-6">
    	<img class="img-fluid rounded" src="listone1.jpg">
    </div>
  </div> 	
</div>

  <div class="card text-white bg-secondary my-4 text-center">
      <div class="card-body">
        <p class="text-white m-0">RUBRICHE DI GIGI</p>
      </div>
    </div>
<div class="container">	 <!--  CONTAINER  -->
  <div class="row align-items-start">	<!-- RIGA CON ELEMENTI ALLINEATI -->
  
    <div class="col">  			<!--  INIZIO STAKE BASSO -->
    <h3>Ciao , qui troverai tutti i listoni che desideri, ti basta scorrere 
        a sinistra o a destra per scoprire cosa ti aspetta!!!</h3>
    	<p id="x"><img class="img-fluid rounded" src='${immaginiListoni.get(0).getPath() }'></p>
    	<button onclick='sinistra()' type="button" class="btn btn-warning btn-lg">Indietro</button>
		<button onclick='destra()' type="button" class="btn btn-warning btn-lg">Avanti</button>
   </div><!--  FINE IMG DAL DB -->
    
   <div class="col h-100" >  <!--  INIZIO YOUTUBE -->	
   		<h3><h3>Ti consiglio questo video per un analisi delle partite migliore</h3>
   		<br><br></h3>
          <div class="col-sm" class="youtube-container">
			<!--  video preso a caso per mettere qualcosa -->
   			<div class="youtube-player" data-id="EzW6m45PDnQ"></div> 
			</div>
            
            <!--  TI LASCIO LO SPAZIO PER INSERIRE -->
            
    </div>			<!--  FINE YOUTUBE -->
</div>	<!--  FINE RIGA CON ELEMENTI ALLINEATI -->
</div>

<div class="card text-white bg-secondary my-4 text-center">
      <div class="card-body">
        <p class="text-white m-0">NEWS DI GIGI</p>
      </div>
    </div>


<!--  INIZIO SEZIONE NEWS -->
<div class="container">
	<div class="row">
  <div class="col-12 col-lg-4">
    <!--start card-->
    <div class="card-wrapper">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">	TITOLO DELLA NEWS 1 </h5>
          <p class="card-text">	TESTO DELLA NEWS 1</p>
        </div>
      </div>
    </div>
    <!--end card-->
  </div>
  <div class="col-12 col-lg-4">
    <!--start card-->
    <div class="card-wrapper">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title"> TITOLO DELLA NEWS 2 </h5>
          <p class="card-text">TESTO DELLA NEWS 3	</p>
        </div>
      </div>
    </div>
    <!--end card-->
  </div>
  <div class="col-12 col-lg-4">
    <!--start card-->
    <div class="card-wrapper">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">TESTO DELLA NEWS 3</h5>
          <p class="card-text"> TESTO DELLA NEWS 3 </p>
        </div>
      </div>
    </div>
    <!--end card-->
  </div>
</div>					
</div>

	
	<!--creo il footer !-->
	<footer class="sticky-top py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright © ScommettereComeGigi</p>
      </div>
	</footer>

</body>

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
function destra(){
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		console.log("responseTEXT: ", xhttp.responseText);
		document.getElementById("x").innerHTML = xhttp.responseText;
	};
	
	xhttp.open("post","/Prova/Servlet?action=scorrimentoListoniD",true);
	xhttp.send();
}
</script>
<script>
function sinistra(){
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		console.log("responseTEXT: ", xhttp.responseText);
		document.getElementById("x").innerHTML = xhttp.responseText;
	};
	
	xhttp.open("post","/Prova/Servlet?action=scorrimentoListoniS",true);
	xhttp.send();
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


</html>











  