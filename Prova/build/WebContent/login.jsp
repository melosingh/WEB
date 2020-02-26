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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
      
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
          <li class="nav-item"> <a class="nav-link" >Contatti </li>
        </ul>
      </div>
    </nav>
 
      
    
 <form action= "<%="/Prova/Servlet" %>" method="post" >
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
     <div class="col-md-4 mb-3">
      <label for="validationCustom02">Email</label>
      <input type="text" class="form-control" id="Email" name="Email" placeholder="Email" value="esmpio@email.it" required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="col-md-4 mb-3">
      <label for="validationCustomUsername">Username</label>
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text" id="inputGroupPrepend">@</span>
        </div>
        <input type="text" class="form-control" id="Username"  name="Username" placeholder="Username" aria-describedby="inputGroupPrepend" required>
        <div class="invalid-feedback">
         Scegli uno username.
        </div>
      </div>
    </div>
  </div>
  <div class="form-row">
    <div class="col-md-6 mb-3">
      <label for="validationCustom03">Password'</label>
      <input type="text" class="form-control" id="Password"  name="Password" placeholder="Citta" required>
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


<div>
  <div class="avatar size-xs">
    <img src="https://randomuser.me/api/portraits/men/46.jpg" alt="Mario Rossi">
  </div>
  
</div>  
 

</body>
</html>