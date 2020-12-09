<%-- 
    Document   : viewusers
    Created on : Dec 7, 2020, 12:10:23 AM
    Author     : nv3ob61
--%>

<%@page import="org.monmo.negocio.UserNegocio"%>
<%@page import="org.monmo.bean.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>  

<html>  
  <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
    <title>View Users</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-CuOF+2SnTUfTwSZjCXf01h7uYhfOBuxIhGKPbfEJ3+FqH/s6cIFN9bGr1HmAg4fQ" crossorigin="anonymous">
  </head>  
  <body>  
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
          <a class="navbar-brand" href="index.html">Inicio</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
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
      <%@page import="org.monmo.negocio.UserNegocio,org.monmo.bean.*,java.util.*"%>  
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

      <h1>Users List</h1>  

      <%
        List<User> list = UserNegocio.getAllRecords();
        request.setAttribute("list", list);
      %>  

      <table border="1" width="90%" class="table table-striped">  
        <tr><th>Id</th><th>Name</th><th>Password</th><th>Email</th>  
          <th>Sex</th><th>Country</th><th>Edit</th><th>Delete</th></tr>  
            <c:forEach items="${list}" var="u">  
          <tr><td>${u.getId()}</td><td>${u.getName()}</td><td>${u.getPassword()}</td>  
            <td>${u.getEmail()}</td><td>${u.getSex()}</td><td>${u.getCountry()}</td>  
            <td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  
            <td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
          </c:forEach>  
      </table>  
      <br/><a href="adduserform.jsp">Add New User</a>  
    </div>

  </body>  
</html>  
