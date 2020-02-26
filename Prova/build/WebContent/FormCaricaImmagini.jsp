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
 
      
    
 <form action= "<%="/Prova/Servlet?key=caricaimmagini" %>" method="post" >
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="validationCustom01">id</label>
      <input type="text" class="form-control" id="Id" name="Id"value="Id()" required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
   
    <div class="col-md-7 mb-3">
      <label for="validationCustom02">Img</label>
      <input type="file" class="form-control" id="Img" name="Img" placeholder="Img" value="seleziona immagine" required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
    <div class="bootstrap-select-wrapper">
  <label>Rubrica</label>
  <select title="rubrica" name="rubrica">
    <option value="" name="rubrica" title="rubrica" data-content="Annulla <span class='reset-label'></span>"></option>
    <option value="champions">champions</option>
    <option value="campionati">campionati</option>
    <option value="listoni">listoni</option>
    <option value="marcatori">marcatori</option>
  </select>
</div>
    <div class="col-md-4 mb-3">
      <label for="validationCustom01">Quota</label>
      <input type="text" class="form-control" id="Quota" name="Quota"value="Quota" required>
      <div class="valid-feedback">
        Looks good!
      </div>
    </div>
   
  </div>

  
 <input  type="submit" id="submitButton" class="btn btn-warning btn-lg" value="Carica Immgine">
</form>


</script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"

integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"

crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"

integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"

crossorigin="anonymous"></script>


  
 

</body>
</html>
<script>
var x=0;
function getId()
{
	
	return ++x;}
</script>