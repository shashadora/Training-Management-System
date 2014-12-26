
<%@page import="java.io.*" %>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="dbConnect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<%@include file="header_staff.jsp" %>
<%@include file = "bootstrap.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course History</title>
    </head>
    <body>
       <div class="container-fluid">
        <h1>Course History </h1>
        <table class="table table-striped table-advance table-hover">
            <thead>
                <tr>
                    <th class="hidden-phone"><i class="fa fa-barcode"></i> Course Title</th>
                    <th class="hidden-phone"><i class="fa fa-calendar"></i>Start Date</th>
                    <th class="hidden-phone"><i class="fa fa-calendar"></i>  End Date</th>
                     <th class="hidden-phone"><i class="fa fa-building-o"></i> Places</th>
                    <th></th>
                   
                </tr>
            </thead>
            <tbody>
<%
	try {               
        	//Connection con = DriverManager.getConnection(url, user, password);
        	PreparedStatement reg = null;
        	int updateQuery = 0;
                String user_ID =(String) session.getAttribute ("ID");   
                String queryString = "select * from participant where user_ID='"+user_ID+"'";
                /* createStatement() is used for create statement object that is used for 
			 sending sql statements to the specified database. */
                
		reg = con.prepareStatement(queryString);
                ResultSet courses_rs = reg.executeQuery();
                while (courses_rs.next()) {
                    String schedule_id = courses_rs.getString("schedule_ID");
                    String query = "select * from course_schedule where ID='"+ schedule_id +"'";
                
                reg = con.prepareStatement(query);
                rs = reg.executeQuery();
                while (rs.next()) {
                    String course_ID = rs.getString("course_ID");
                    String query2 = "select title from courses where id='"+ course_ID +"'";
               
                reg = con.prepareStatement(query2);
                ResultSet rs2 = reg.executeQuery();
                while (rs2.next()) {
                    
                        out.println("<tr>");
                        out.println("<td>"+ rs2.getString("title")+"</td>");
                        out.println("<td>"+ rs.getString("start_date")+"</td>");
                        out.println("<td>"+ rs.getString("end_date")+"</td>");
                        out.println("<td>"+ rs.getString("place")+"</td>");
                        out.println("<td>");
                       out.println("</td>");
                    out.println("</tr>");
                }
                }
                
	}} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	} 
%>
            </tbody>
        </table>
        
        </div>    
            
                                   
    </body>
</html>
