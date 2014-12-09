<%-- 
    Document   : index
    Created on : Dec 9, 2014, 8:41:56 AM
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
        <h1>Verify module</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Course Code</th>
                    <th>Title</th>
                    <th>Dean Approval</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
<%
	try {               
        	//Connection con = DriverManager.getConnection(url, user, password);
        	PreparedStatement register = null;
        	int updateQuery = 0;

                String queryString = "select * from courses";
                /* createStatement() is used for create statement object that is used for 
			 sending sql statements to the specified database. */
		register = con.prepareStatement(queryString);
                ResultSet courses_rs = register.executeQuery();
                while (courses_rs.next()) {
                    out.println("<tr>");
                        out.println("<td>"+ courses_rs.getString("code")+"</td>");
                        out.println("<td>"+ courses_rs.getString("title")+"</td>");
                        String dean_approval = "";
                        if (courses_rs.getString("dean_approval") == null) {
                            dean_approval = "Pending approval";
                        }else if (courses_rs.getString("dean_approval").equals("1")){
                            dean_approval = "Approved";
                        }
                        out.println("<td>"+ dean_approval +"</td>");
                        String course_id = courses_rs.getString("id");
                        out.println("<td>");
                            out.println("<a href='show.jsp?id="+course_id+"'>View</a>");
                        out.println("</td>");
                    out.println("</tr>");
                }
	} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	} 
%>
            </tbody>
        </table>
    </body>
</html>
