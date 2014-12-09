<%-- 
    Document   : verify
    Created on : Dec 9, 2014, 9:54:01 AM
    Author     : akob
--%>
<%@include file = "../dbConnect.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
        	PreparedStatement register = null;
                String queryString = "update courses set dean_approval= 1 where id = ?";
		register = con.prepareStatement(queryString);
                register.setString(1, request.getParameter("id"));
                int courses_rs = register.executeUpdate();
                if (courses_rs > 0){
                    out.println("<script>window.location = '/Training_Management_System/verify_module'; </script>");
                }
        %>
    </body>
</html>
