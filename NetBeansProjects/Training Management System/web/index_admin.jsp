<%@include file ="header_admin.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <div class="container-fluid">
            <h3 align="center">
                <%
                    out.println("Welcome ");
                    out.println( session.getAttribute( "name" ) + "! ");
                %>
            </h3>
        </div>
    </body>
</html>
