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
  <body>
  
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
      <div class="container"> <a class="navbar-brand" href="#">ScommettereComeGigi</a>
      </div>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"

        aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span> </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active"> <a class="nav-link" href="#">Home</a> </li>
          <li class="nav-item"> <a class="nav-link" href="#">Chi sono</a> </li>
          <li class="nav-item"> <a class="nav-link" href="https://www.instagram.com/scommetterecomegigi/?hl=it">Contatti</a> </li>
        </ul>
      </div>
    </nav>
    <div class="container">
      <div class="row my-4">
        <div class="col-lg-8"> <img class="img-fluid rounded" src="/WebContent/WEB-INF/img/soldi_schedineVinte.jpg"

            alt="ScommettereComeGigi"> </div>
 
      
    
 <form action= "<%="/Prova/Servlet?key=registrati" %>" method="post" >
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="validationCustom01">Nome</label>
      <input type="text" class="form-control" id="Nome" name="Nome"placeholder="Nome" value="Mario" required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationCustom02">Cognome</label>
      <input type="text" class="form-control" id="Cognome" name="Cognome" placeholder="Cognome" value="Rossi" required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-7 mb-3">
      <label for="validationCustom02">Email</label>
      <input type="text" class="form-control" id="Email" name="Email" placeholder="Email" value="Rossi" required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
   
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationCustom03">Password'</label>
      <input type="text" class="form-control" id="Password"  name="Password" placeholder="Password" required>
      <div class="invalid-feedback">
        Scegli una citta' valida.
      </div>
    </div>
    
  </div>
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required>
      <label class="form-check-label" for="invalidCheck">
       Accetta termini e condizioni.
      </label>
      <div class="invalid-feedback">
        Devi accettare prima di proseguire.
      </div>
    </div>
  </div>
 <input  type="submit" id="submitButton" class="btn btn-warning btn-lg" value="Compila Form">
</form>


 <div class="col-lg-2"> 
<iframe id="webroundbuttonwidget2" file="webroundbuttonwidget" src="https://telegrambutton.com/webroundbuttonwidget.php?chat_id=Melo1908&showchatid=true&showmembercount=true&showmembercount=true&color=&pulse=true&textcolor=white&shadowval=z-depth-1&textval=join channel" border="1" style="border:20px;height: 100px;width: 100px;z-index:9999;position:fixed;bottom:0;right:0;"></iframe>      </div>
    </div>

</script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"

integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"

crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"

integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"

crossorigin="anonymous"></script>


  
 

</body>
</html>