<%-- 
    Document   : deleteuser
    Created on : Dec 7, 2020, 12:12:45 AM
    Author     : nv3ob61
--%>

<%@page import="org.monmo.negocio.UserNegocio"%>  
<jsp:useBean id="u" class="org.monmo.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%
  UserNegocio.delete(u);
  response.sendRedirect("viewusers.jsp");
%>  