
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
   <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
     integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"

      crossorigin="anonymous">
<title>Multiple Champions</title>

    <style>
      .red
      {
        color: white;
        background-color: red;
      }

      .green
      {
        color: white;
        background-color: green;
      }

      .blue
      {
        color: white;
        background-color: blue;
      }
      div#carusello {
width: 200px;
height: 200px;
background: #25FF00;
position: absolute;
top: 50%;
left: 50%;
margin-top: -100px;
margin-left: -100px;
}
    </style>
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
            <form action="<%="/Prova/Servlet" %>" method="post" style="height: 84px; width: 513px">  
				Name:<input type="text" name="username"/>  Password:<input type="password" name="userpass"/> 
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
	<div class="row my-4">
       
        <div class="col-lg-7">
  		
  			<h1>Sezione Multiple Champions League</h1>
  			<p>Ciao , qui trovi tutte le multiple che ho publicato sulla Champions League ...
  				Prova a dare un occhiata alle vecchie schedine per farti un idea di quello che gioco</p>
  			<c:if test= "${Loggato !=true}" > 
          <button onclick='registrati()' id=BottoneRegistrati class="btn btn-warning btn-lg" href="#">Registrati!</button>  </c:if>
        </div>
         
 		<div class="col-lg-4">
 	 		<iframe class="z-depth-3" id="chatbox"  file="chatbox" src="https://telegrambutton.com/chatbox.php?chat_id=Melo1908canale&showchatid=true&showmembercount=true&showmembercount=true&color=blue-grey darken-4&pulse=false&textcolor=white&shadowval=&textval=join channel" 
       			border="1" style="border:500px;" height="400px" width="400px"></iframe>
      	</div>
   </div>
    <div class="card text-white bg-secondary my-4 text-center">
      <div class="card-body">
        <p class="text-white m-0">IN PRIMO PIANO !</p>
      </div>
    </div>
    
     <div class="container">
  <div class="row">
    <div class="col-sm">
     <c:forEach var = 'schedina' items ='${immaginiMultipleChampions }'>
     <img src="${schedina.getPath()}" alt="NON TROVATA" } >
     </c:forEach> 
     </div>
    
  <!--   <div class="col-sm">Una di tre colonne</div>	 -->
  </div>
</div>
        
     
   
  
 
   
    <!-- jQuery first, then Bootstrap JS. -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://cdn.rawgit.com/twbs/bootstrap/v4-dev/dist/js/bootstrap.js"></script>
</body>

<!--creo il footer !-->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright © ScommettereComeGigi</p>
      </div>
</footer> 

</html>
<script>
 

  
 

</script>