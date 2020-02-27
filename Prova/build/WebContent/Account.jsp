
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
				<div <font color="white"> Username</font> <input type="text" name="username"/>>  </div>  
				<div <font color="white"> Password</font> <input type="password" name="userpass"/>>  </div>
				 <input type="submit"   value="login" formmethod="post"/>  </a> 
			</form>  </c:if>
			  <c:if test= "${Loggato == true}" >
			 <!--     ${UtenteLoggato.getNome()}   ${UtenteLoggato.getCognome()} FUNZIONA-->
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

	<div class="container">
     	<div class="row my-4">
       		<div class="col-lg-7">
       			
       		<font  size="8">Account :</font><br />
       		<font  size="6">Nome: </font>
       		<font  size="6">${UtenteLoggato.getNome() }</font><br />
       		<font  size="6">Cognome: </font>
       		<font  size="6">${UtenteLoggato.getCognome() }</font><br />
       		<font  size="6">Email: </font>
       		<font  size="6">${UtenteLoggato.getEmail() }</font><br />
       		<font  size="6">Passowrd: </font>
       		<font  size="6">${UtenteLoggato.getPassword() }</font><br />
       	
       		</div>
		 </div>
	
	 </div> 

</div>


    

 
    <!--creo il footer-->
    
      <div class="row ">
      	<div class= "col-12">
      		<footer class="fixed-bottom py-5 bg-dark">
      
        <p class="m-0 text-center text-white">Copyright © ScommettereComeGigi</p>
    
       <c:if test= '${admin}'>  
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

