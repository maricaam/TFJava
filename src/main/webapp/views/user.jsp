<%-- 
    Document   : user
    Created on : 1 dic. 2021, 21:32:36
    Author     : monir
--%>

<%@page import="database.userDAO"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <!-- Bootstrap CSS -->
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            boolean exists = (boolean) session.getAttribute("exists");
            if (exists) {
            %> 
        
        
            <h1 class="m-5 text-success" >Acceso garantizado</h1> 
            <h2 class="text-dark" >Bienvenido al Sistema</h2> 
            
         <%
            } else {
        
         %> 
                
            <h1 class="m-5 text-danger" >Acceso denegado</h1> 
            <a href="../" class="text-primary">Volver al login </a>

          <%  }
                    
        %> 
     
    </body>
</html>
