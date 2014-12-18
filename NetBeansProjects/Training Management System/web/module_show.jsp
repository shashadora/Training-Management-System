
<%@include file = "header_headOfDepartment.jsp" %>
<%@include file = "dbConnect.jsp" %>
<%@include file="bootstrap.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Module Details</title>
    </head>
    <body>
        <div class="container-fluid">
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
                                + "<td colspan=3><button class='btn btn-info'><a onClick=areYouSure();return; href='#'>Verify</a></button></td>"
                                + "</tr>");                    
                }

        %>
        </table>
        </div>
        <script>
            function areYouSure(){
                if (confirm("Are you sure you want to verify")){
                  window.location = 'module_verify.jsp?id=<% out.print(request.getParameter("id")); %>';  
                }
                return;
            }
        </script>
    </body>
</html>
