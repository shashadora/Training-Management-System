<%-- 
    Document   : show
    Created on : Dec 9, 2014, 8:44:56 AM
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
        <h1>Course detail</h1>
        <table>
        <%
        	PreparedStatement register = null;
                String queryString = "select * from courses where id = ?";
		register = con.prepareStatement(queryString);
                register.setString(1, request.getParameter("id"));
                ResultSet courses_rs = register.executeQuery();
                if (courses_rs.first()){
                        out.println("<tr>"
                                + "<td valign=top>COURSE CODE</td> <td valign=top>:</td> <td>"+ courses_rs.getString("code")+"</td>"
                                + "</tr>");
                        out.println("<tr>"
                                + "<td valign=top>TITLE</td> <td valign=top>:</td>  <td>"+ courses_rs.getString("title")+"</td>"
                                + "</tr>");
                        out.println("<tr>"
                                + "<td valign=top>MODULE</td> <td valign=top>:</td> <td><pre>"+ courses_rs.getString("module") +" </pre></td>"
                                + "</tr>"
                                + "<tr> "
                                + "<td colspan=3> <a onClick=areYouSure();return; href='#'>Verify</a> </td>"
                                + "</tr>");                    
                }

        %>
        </table>
        
        <script>
            function areYouSure(){
                if (confirm("Are you sure you want to verify")){
                  window.location = 'verify.jsp?id=<% out.print(request.getParameter("id")); %>';  
                }
                return;
            }
        </script>
    </body>
</html>
