<%-- 
    Document   : test
    Created on : Dec 15, 2014, 8:40:10 AM
    Author     : Yakob Abaidullah B13CS0001
--%>
<%! long loadTime = (new java.util.Date()).getTime(); %>
<%! private long millisAgo()  {  return (new java.util.Date()).getTime() - loadTime;  } %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>JSP Test</h1>
        <% if ( millisAgo() < 5000 )  { %>
        Loaded less than 5 seconds ago
        <%  } else { %>
        Loaded more than 5 seconds ago
        <% } %>
    </body>
</html>
