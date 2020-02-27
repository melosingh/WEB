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
			 
	  
		  </li> 
		   <c:if test= "${Loggato ==true}" >
				<button onclick='account()' type="button" class="btn btn-primary btn-xs">Account</button>		   </c:if>
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
    <div class="col-lg-2"> 
<iframe id="webroundbuttonwidget2" file="webroundbuttonwidget" src="https://telegrambutton.com/webroundbuttonwidget.php?chat_id=Melo1908&showchatid=true&showmembercount=true&showmembercount=true&color=&pulse=true&textcolor=white&shadowval=z-depth-1&textval=join channel" border="1" style="border:20px;height: 100px;width: 100px;z-index:9999;position:fixed;bottom:0;right:0;"></iframe>      </div>
  
  
 <body bgcolor="#00ff00">
  
<!--  INIZIO DELLA DESCRIZIONE  -->

<div class="container">
  <div class="row" >
    <div class="col-12 " >
	
	<h1> Pagina dedicata agli Stake! </h1>
  		<p>	Ciao , qui trovi tutte mie giocate per i vari stake  ...
  				Prova a dare un occhiata alle vecchie schedine per farti un idea di quello che gioco	
  		</p>
  			<c:if test= "${Loggato !=true}" > 
          <button onclick='registrati()' id=BottoneRegistrati class="btn btn-warning btn-lg" href="#">Registrati! </button>  </c:if>
    </div>
  </div> 	
</div>


<div class="container">	 <!--  CONTAINER  -->
  <div class="row align-items-start">	<!-- RIGA CON ELEMENTI ALLINEATI -->
  
    <div class="col">  			<!--  INIZIO STAKE BASSO -->
    	<h4 class="card-header">Stake Basso </h4>
          <div class="card-body">	 </div>
            <p class="card-text">In questa sezione rientrano tutte le mie  giocate con difficoltà bassa ...</p>
             	
             	
             	
             	<img src='${imgStakeAlto.getPath() }' alt="..." class="img-fluid">
             	
             	
         				
    </div><!--  FINE STAKE BASSO -->
    
  
    <div class="col">		<!--  INIZIO STAKE MEDIO -->
    <h4 class="card-header">Stake Medio </h4>
          <div class="card-body">	</div>
            <p class="card-text">In questa sezione rientrano tutte le mie giocate con una difficoltà media</p>
             
             
             	<img src='${imgStakeMedio.getPath() }' alt="..." class="img-fluid">
             
     </div>		<!--  FINE STAKE MEDIO -->
     
     
    <div class="col">  <!--  INIZIO STAKE ALTO -->	
   		<h4 class="card-header">Stake Alto </h4>
          <div class="card-body"> 	</div>
            <p class="card-text">In questa sezione rientrano tutte le mie giocate con difficoltà</p>
            
            
          <img src='${imgStakeBasso.getPath() }' alt="..." class="img-fluid">
            
    </div>			<!--  FINE STAKE BASSO -->
    <div>
    <h1>Se non sai ancora come suddividere il tuo budget sui diversi stake lascia fare a me, inserisci il tuo budget e ti diro' quanto puntare</h1>
     <p id="Stake"> </p>
     <input type="number" name="CalcolaStake"  ><button onclick="calcola()">Calcola stake per budget</button>
 
   
    </div>
</div>	<!--  FINE RIGA CON ELEMENTI ALLINEATI -->
</div>
 <div class="card text-white bg-secondary my-4 text-center">
      <div class="card-body">
        <p class="text-white m-0"> GUARDA ANCHE </p>
      </div>
    </div>
<div class="container">
	<div class="row">
  		<div class="col-4 col-md-4">
  					
			 <div id="iamcalciosharingranking"><iframe src="https://sharing.iamcalcio.it/classifiche/3/serie-a/2019-2020/4.html"
			     border="0" scrolling="no" width="300" height="650" style="width: 300px; height: 650px; border: 0; overflow: hidden;"></iframe></div> 
			   
	    </div>
  		<div class="col-8 col-md-8">
  		
  			 <div class="col-sm" class="youtube-container">
			<!--  video preso a caso per mettere qualcosa -->
   			<div class="youtube-player" data-id="MYKhD5jRt68"></div> 
			</div>

		
		</div>
  	</div>
</div>
	
	<!--creo il footer !-->
	<footer class="sticky-top py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright@ScommettereComeGigi</p>
      </div>
	</footer>

</body>

<script>

function homePage(){
	window.location.href="/Prova/Servlet?action=homePage";
}

</script>

<script>
function calcola()
{
	 
	var budget= ${('input[name="CalcolaStake"]')}.val();
	 var cinquanta=budget/2;
	 var quaranta=(budget*40)/100;
	 var dieci=budget/10;
	 document.getElementById("Stake").innerHTML="Stake alto: "+cinquanta+"<br>"+"Stake medio: "+quaranta+"<br>"+"Stake basso: "+dieci+"<br>";
	console.log(cinquanta);
}

 

</script>



<script>

function homePage(){
	window.location.href="/Prova/Servlet?action=homePage";
}
function account()
{
window.location.href="/Prova/Servlet?action=account"}
</script>
<script>
function registrati(){
	 window.location.href = "/Prova/Servlet?action=reindirizza";
}
</script>


				
</html>













  