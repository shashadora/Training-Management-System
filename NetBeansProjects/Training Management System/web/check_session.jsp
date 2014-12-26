<%
 if (session.getAttribute( "name" ) != null){
     
 } else {
     response.sendRedirect("index.jsp");
 }
%>
