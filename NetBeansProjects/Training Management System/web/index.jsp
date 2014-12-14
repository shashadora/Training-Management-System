<%@include file = "staffHeader.jsp" %>
<%@ include file = "bootstrap.jsp" %>
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="container-fluid">    
        
        <jsp:useBean id="user" class="coreservlets.loginBean">
            
        </jsp:useBean>
        <jsp:setProperty name="user" property="*"></jsp:setProperty>
        <CENTER>
            <h3>Welcome <jsp:getProperty name="user" property="uname"></jsp:getProperty> <BR/>
            </h3>
        </CENTER>

        </div>
    
    </body>
</html>
