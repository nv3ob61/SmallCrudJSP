<%-- 
    Document   : edituser
    Created on : Dec 7, 2020, 12:12:14 AM
    Author     : nv3ob61
--%>

<%@page import="org.monmo.negocio.UserNegocio"%>  
<jsp:useBean id="u" class="org.monmo.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%
  int i = UserNegocio.update(u);
  response.sendRedirect("viewusers.jsp");
%>  
