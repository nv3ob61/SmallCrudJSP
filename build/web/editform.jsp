<%-- 
    Document   : editform
    Created on : Dec 7, 2020, 12:10:46 AM
    Author     : nv3ob61
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>  
<html>  
  <head>  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
    <title>Edit Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-CuOF+2SnTUfTwSZjCXf01h7uYhfOBuxIhGKPbfEJ3+FqH/s6cIFN9bGr1HmAg4fQ" crossorigin="anonymous">
  </head>  
  <body>  
    <%@page import="org.monmo.negocio.UserNegocio,org.monmo.bean.User"%>  

    <%
      String id = request.getParameter("id");
      User u = UserNegocio.getRecordById(Integer.parseInt(id));
    %>  
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <div class="container-fluid">
          <a class="navbar-brand" href="index.html">Inicio</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
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
      <h1>Edit Form</h1>  
      <form action="edituser.jsp" method="post">  
        <input type="hidden" name="id" value="<%=u.getId()%>"/>  
        <table>  
          <tr><td>Name:</td><td>  
              <input type="text" name="name" value="<%= u.getName()%>"/></td></tr>  
          <tr><td>Password:</td><td>  
              <input type="password" name="password" value="<%= u.getPassword()%>"/></td></tr>  
          <tr><td>Email:</td><td>  
              <input type="email" name="email" value="<%= u.getEmail()%>"/></td></tr>  
          <tr><td>Sex:</td><td>  
              <input type="radio" name="sex" value="male"/>Male   
              <input type="radio" name="sex" value="female"/>Female </td></tr>  
          <tr><td>Country:</td><td>  
              <select name="country">  
                <option>India</option>  
                <option>Pakistan</option>  
                <option>Afghanistan</option>  
                <option>Berma</option>  
                <option>Other</option>  
              </select>  
            </td></tr>  
          <tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
        </table>  
      </form>  

    </div>
  </body>  
</html>  
