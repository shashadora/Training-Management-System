<%@include file = "check_session.jsp" %>
<%@include file="bootstrap.jsp" %>
<%@include file = "dbConnect.jsp" %>
<%@include file = "header_admin.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Courses</title>
    </head>
    <body>
        <div class="container-fluid">
        <h1>Courses </h1>
        <table class="table table-striped table-advance table-hover">
            <thead>
                <tr>
                    <th class="hidden-phone"><i class="fa fa fa-barcode"></i>  Course Code</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i>  Title</th>
                    <th class="hidden-phone"><i class="fa fa-check-square-o"></i>  Dean Approval</th>
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
                            out.println("<button class='btn btn-info'><i class='fa fa-edit'></i><a href='course_edit.jsp?id="+course_id+"'>Edit</a></button>");
                            out.println("<button class='btn btn-warning'><i class='fa fa-trash-o'></i><a href='course_delete.jsp?id="+course_id+"'>Delete</a></button>");
                        out.println("</td>");
                    out.println("</tr>");
                }
	} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	} 
%>
            </tbody>
        </table>
        <a href="course_new.jsp"><button class="btn btn-primary"  type="submit">Add New Course </button></a>
        </div>    
            
                                   
    </body>
</html>
