<%-- 
    Document   : adduser
    Created on : Dec 7, 2020, 12:03:10 AM
    Author     : nv3ob61
--%>

<%@page import="org.monmo.negocio.UserNegocio"%>
<%@page import="org.monmo.bean.User"%>
<jsp:useBean id="u" class="org.monmo.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
  int i = UserNegocio.save(u);
  if (i > 0) {
    response.sendRedirect("adduser-success.jsp");
  } else {
    response.sendRedirect("adduser-error.jsp");
  }
%> 
