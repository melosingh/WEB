<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

  
</head>

<body>

  <button onclick="tutti()" > SUCA</button>
       

<script>
function tutti(){
	 $.ajax({
			url : 'Servlet',
			type : 'get',
			data : {
			action : "tutti"
			},
		success:function(){
			 alert("andata");
			 window.location.href = "/Prova/Servlet";
		},
		error:function(){
			alert("Errore");
		}
		})
}
		
</script>
 </body>	
</html>