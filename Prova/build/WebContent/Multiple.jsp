 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

   
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
    	<div><img src="LogoGigi.jpg" alt="logo gigi"> </div>
        <div   class="container"> <a class="navbar-brand" href="/Prova/Servlet?action=homePage">ScommettereComeGigi</a> </div>
     	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"  aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
         <c:if test= "${Loggato !=true}" > 
            <form action="<%="/Prova/Servlet?action=login" %>" method="post" style="height: 84px; width: 513px">  
				<font color="white">Username</font> <input type="text" name="username"/>  <font color="white">Password</font><input type="password" name="userpass"/> 
				<input type="submit" value="login" formmethod="post"/>  
			</form>  </c:if>
			  <c:if test= "${Loggato ==true}" >
			   ${UtenteLoggato.getNome()}   ${UtenteLoggato.getCognome()}
			   </c:if>
	  
		  </li> 
		  
		  <c:if test= "${Loggato ==true}" >
		  <li class="nav.item>">
		  <form action= "<%="/Prova/Servlet?key=logOut" %>" method="post" > 
		  	 
		  		<input  type="submit" id="submitButton" class="btn btn-warning btn-lg" value="LogOut">
         <!-- 		<button onclick='logout()' id=BottoneRegistrati class="btn btn-warning btn-lg" href="#">LogOut!</button>  	 -->
         	  
          </form>
          <li>
          </c:if>
         	
          <li class="nav-item active"> <a class="nav-link" href="#">Home</a> </li>
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
	
	<h1> Sezione Multiple </h1>
  		<p>	Ciao , qui trovi tutte mie multiple  ...
  				Prova a dare un occhiata alle vecchie schedine per farti un idea di quello che gioco	
  		</p>
  			<c:if test= "${Loggato !=true}" > 
          <button onclick='registrati()' id=BottoneRegistrati class="btn btn-warning btn-lg" href="#">Registrati!</button>  </c:if>
    </div>
    
    <div class="col-6">
    	<img class="img-fluid rounded" src="imgMultiple.jpeg">
    </div>
  </div> 	
</div>

<div class="col-lg-2"> 
<iframe id="webroundbuttonwidget2" file="webroundbuttonwidget" src="https://telegrambutton.com/webroundbuttonwidget.php?chat_id=Melo1908&showchatid=true&showmembercount=true&showmembercount=true&color=&pulse=true&textcolor=white&shadowval=z-depth-1&textval=join channel" border="1" style="border:20px;height: 100px;width: 100px;z-index:9999;position:fixed;bottom:0;right:0;"></iframe>      </div>
<div class="card text-white bg-secondary my-4 text-center">
      <div class="card-body">
        <p class="text-white m-0"> GIGI TIPS </p>
      </div>
    </div>

<div class="container">	 <!--  CONTAINER  -->
  <div class="row align-items-start">	<!-- RIGA CON ELEMENTI ALLINEATI -->
  
    <div class="col">  			<!--  INIZIO STAKE BASSO -->
    <h3>Ciao , qui troverai tutte le multiple che desideri, ti basta scorrere 
        a sinistra o a destra per scoprire cosa ti aspetta!!!</h3>
    	<p id="x"><img class="img-fluid rounded" src='${immaginiMultiple.get(0).getPath() }'></p>
    	<button onclick='sinistra()' type="button" class="btn btn-warning btn-lg">Indietro</button>
		<button onclick='destra()'   type="button" class="btn btn-warning btn-lg">Avanti</button>
     
   </div><!--  FINE STAKE BASSO -->

     
     
    <div class="col">  <!--  INIZIO YOUTUBE -->	
   		<h3>Ti consiglio questo video per un analisi delle partite migliore</h3>
   		<br><br>
          <iframe width="560" height="315" src="https://www.youtube.com/embed/RFkHzD-8KW8" 
          frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            
            <!--  TI LASCIO LO SPAZIO PER INSERIRE -->
            
    </div>			<!--  FINE YOUTUBE -->
</div>	<!--  FINE RIGA CON ELEMENTI ALLINEATI -->
</div>
<div class="card text-white bg-secondary my-4 text-center">
      <div class="card-body">
        <p class="text-white m-0">SEGUI ANCHE </p>
      </div>
    </div>

<!--  INIZIO SEZIONE NEWS -->

<div class="container">
	<div class="row">
	<div class="col-8">
 		<rssapp-list id="QsGhzCuUjDpvjSTn"></rssapp-list><script src="https://widget.rss.app/v1/list.js" 
 		type="text/javascript" async></script></div>
 	<div class="col-4">
 	<iframe width="600" height="700" src="https://rss.app/embed/v1/xb4NaHpeS9tPM82O" frameBorder="0" ></iframe>
 	</div>
 		
    </div>
    <!--end card-->
  </div>
 


</body>
	
	<!--creo il footer !-->
	<footer class="sticky-top py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright © ScommettereComeGigi</p>
      </div>
	</footer>



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
	
	xhttp.open("post","/Prova/Servlet?action=scorrimentoMultipleD",true);
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
	
	xhttp.open("post","/Prova/Servlet?action=scorrimentoMultipleS",true);
	xhttp.send();
}
</script>

<script>
function registrati()
{
	 window.location.href = "/Prova/Servlet?action=reindirizza";
}
</script>



</html>











  