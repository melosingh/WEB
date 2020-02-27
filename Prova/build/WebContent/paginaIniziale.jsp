
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
				<font color="white">Email</font> <input type="text" name="username"/>  <font color="white">Password</font><input type="password" name="userpass"/> 
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
  <body>
  
    <div class="container">
      <div class="row my-4">
       
        <div class="col-lg-7">
          <h1>Scommettere come Gigi</h1>
          <p>Benvenuti ragazzi , sono un tipster e sto in questo campo da molto
            tempo , ho deciso di fare un sito web per tenere sempre aggiornati
            tutti i miei follower.... </p>
            
         <c:if test= "${Loggato !=true}" > 
          <button onclick='registrati()' id=BottoneRegistrati class="btn btn-warning btn-lg" href="#">Registrati!</button>  </c:if>
         
          
       </div>
       <div class="col-lg-4">
       
       <iframe class="z-depth-3" id="chatbox"  file="chatbox" src="https://telegrambutton.com/chatbox.php?chat_id=Melo1908canale&showchatid=true&showmembercount=true&showmembercount=true&color=blue-grey darken-4&pulse=false&textcolor=white&shadowval=&textval=join channel" 
       border="1" style="border:500px;" height="400px" width="400px"></iframe>
      
       </div>
       <div class="col-lg-2"> 
<iframe id="webroundbuttonwidget2" file="webroundbuttonwidget" src="https://telegrambutton.com/webroundbuttonwidget.php?chat_id=Melo1908&showchatid=true&showmembercount=true&showmembercount=true&color=&pulse=true&textcolor=white&shadowval=z-depth-1&textval=join channel" border="1" style="border:20px;height: 100px;width: 100px;z-index:9999;position:fixed;bottom:0;right:0;"></iframe>      </div>
    </div>
    
    
<div class="card text-white bg-secondary my-4 text-center">
      <div class="card-body">
        <p class="text-white m-0">VAI AGLI STAKE </p>
      </div>
    </div>
   		 <c:if test= "${Loggato !=true}" > 
         <button onclick='registrati()' id=BottoneRegistrati class="btn btn-warning btn-lg" href="#">Devi essere registrato!</button>  </c:if>
            <c:if test= "${Loggato ==true}" >
    	<div class="card-footer text-center"> <a href='/Prova/Servlet?action=stake' class="btn btn-warning">Approfondisci</a></c:if>
    	</div>

    <!-- creo il secondo separatore -->
    <div class="card text-white bg-secondary my-4 text-center">
      <div class="card-body">
        <p class="text-white m-0">RUBRICHE DI GIGI</p>
      </div>
    </div>
    <!--creo gli articoli delle analisi-->
    <div class="row">
      <div class="col-md-4 mb-4">
        <div class="card h-100">
        <script>console.log("${immagine.getPath()}") </script>
       
          <h4 class="card-header">Marcatori<img class="img-fluid rounded" src="marcatori.jpg" ></h4>
          
          <div class="card-body">
            <p class="card-text">Segui le analisi di Gigi sui marcatori ...</p>
          </div>
          <div class="card-footer"> <a href='/Prova/Servlet?action=marcatori' class="btn btn-warning">Approfondisci</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header ">Listoni<img class="img-fluid rounded" src="listone.jpg" class="rounded-circle"> </h4>
          <div class="card-body">
            <p class="card-text">Segui i listoni studiati da Gigi ...</p>
          </div>
          <div class="card-footer"> <a href='/Prova/Servlet?action=listoni' class="btn btn-warning">Approfondisci</a>
          </div>
        </div>
      </div>
      <div class="col-md-4 mb-4">
        <div class="card h-100">
          <h4 class="card-header">Multiple <img class="img-fluid rounded" src="005-22Febbraio2020-campionati.jpg" class="rounded-circle"></h4>
          <div class="card-body">
            <p class="card-text">Segui le multiple di Gigi ...</p>
          </div>
          <div class="card-footer"> <a  href='/Prova/Servlet?action=multiple' class="btn btn-warning">Approfondisci</a>
          </div>
        </div>
      </div>
      
     
      
    </div>
    
    </div>
    
  </body>
    
    <!--  HO PROVATO A SISTEMARLO 3 VOLTE  -->
 
    <!--creo il footer-->
    
      <div class="row ">
      	<div class= "col-12">
      		<footer class="sticky-top py-5 bg-dark">
      
        <p class="m-0 text-center text-white">Copyright © ScommettereComeGigi</p>
    <!--    <c:set var="log" scope="session" value="${UtenteLoggato.getNome()}"/>  
		<c:out value="${UtenteLoggato.getNome()}"></c:out>
       <c:if test= '${admin}'>  -->
        <button onclick="caricaImmagini()" id=BottoneCaricaImmagini class="btn btn-warning btn-lg" href="/Prova/Servlet/action?=caricaImmagini">CaricaImmagini</button>
     </c:if>
     	</footer>
     	</div>
      </div>
    


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"

crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"

integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"

crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"

integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"

crossorigin="anonymous"></script>
    
 

<script>
 function caricaImmagini()
 {
 window.location.href="/Prova/Servlet?action=caricaImmagini"}
 function account()
 {
 window.location.href="/Prova/Servlet?action=account"}
 
function registrati()
{
	 window.location.href = "/Prova/Servlet?action=reindirizza";
}

function homePage(){
	window.location.href="/Prova/Servlet?action=homePage";
}
function logIn()
{window.location.href="/Prova/Servlet?action=logIn";
	}
	
function stakealto()
{
	window.location.href="/Prova/Servlet?action=stakealto";
}

function logout()
{
	window.location.href="/Prova/Servlet?action=homePage";
	
}
	
	
	
	
</script>


</html>

