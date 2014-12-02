<%-- 
    Document   : courses
    Created on : Dec 2, 2014, 9:35:36 AM
    Author     : akob
--%>
<%@include file = "../dbConnect.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Courses</title>
    </head>
    <body>
        <h1>Courses </h1>
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
                        out.println("<td>"+ courses_rs.getString("dean_approval")+"</td>");
                        String course_id = courses_rs.getString("id");
                        out.println("<td>");
                            out.println("<a href='delete.jsp?id="+course_id+"'>Delete</a>");
                            out.println("<a href='edit.jsp?id="+course_id+"'>Edit</a>");
                        out.println("</td>");
                    out.println("</tr>");
                }
	} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	} 
%>
            </tbody>
        </table>
            <a href="new.jsp">Add new</a>
    </body>
</html>
