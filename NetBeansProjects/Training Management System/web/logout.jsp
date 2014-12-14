<%-- 
    Document   : logout
    Created on : Oct 16, 2014, 3:46:33 AM
    Author     : Dee Dee
--%>

<%
session.setAttribute("username", null);
session.invalidate();
response.sendRedirect("index.html");
%>
