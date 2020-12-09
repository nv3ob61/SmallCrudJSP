<%-- 
    Document   : adduserform
    Created on : Dec 7, 2020, 12:01:46 AM
    Author     : nv3ob61
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<html>  
  <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
    <title>Add User Form</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-CuOF+2SnTUfTwSZjCXf01h7uYhfOBuxIhGKPbfEJ3+FqH/s6cIFN9bGr1HmAg4fQ" crossorigin="anonymous">
  </head>  
  <body>  
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
          <a class="navbar-brand" href="index.html">Inicio</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon">Hoo</span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
              <!--                            <li class="nav-item">
                                              <a class="nav-link active" aria-current="page" href="#">Home</a>
                                          </li>-->
              <li class="nav-item">
                <a class="nav-link" href="adduserform.jsp">Add User</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="viewusers.jsp">View Users</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <jsp:include page="userform.html"></jsp:include>  

    </div>
  </body>  
</html>  
