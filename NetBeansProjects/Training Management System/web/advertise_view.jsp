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
        <title>Advertise Courses</title>
    </head>
    <body>
        <div class="container-fluid">
        <h1>Advertise Courses </h1>
        <table class="table table-striped table-advance table-hover">
            <thead>
                <tr>
                    <th class="hidden-phone"><i class="fa fa-barcode"></i>  Course Title</th>
                    <th class="hidden-phone"><i class="fa fa-calendar"></i>Start Date</th>
                    <th class="hidden-phone"><i class="fa fa-calendar"></i>  End Date</th>
                     <th class="hidden-phone"><i class="fa fa-building-o"></i>  Places</th>
                    <th></th>
                   
                </tr>
            </thead>
            <tbody>
<%
	try {               
        	//Connection con = DriverManager.getConnection(url, user, password);
        	PreparedStatement register = null;
        	int updateQuery = 0;

                String queryString = "select * from course_schedule";
                /* createStatement() is used for create statement object that is used for 
			 sending sql statements to the specified database. */
		register = con.prepareStatement(queryString);
                ResultSet courses_rs = register.executeQuery();
                while (courses_rs.next()) {
                    String id = courses_rs.getString("course_ID");
                    String query = "select * from courses where id='"+ id +"'";
                /* createStatement() is used for create statement object that is used for 
			 sending sql statements to the specified database. */
		PreparedStatement reg = con.prepareStatement(query);
                rs = reg.executeQuery();
                while (rs.next()) {
                    String title = rs.getString("title");
                    String ID = courses_rs.getString("ID");
                    out.println("<tr>");
                        out.println("<td>"+title+"</td>");
                        out.println("<td>"+ courses_rs.getString("start_date")+"</td>");
                        out.println("<td>"+ courses_rs.getString("end_date")+"</td>");
                        out.println("<td>"+ courses_rs.getString("place")+"</td>");
                        out.println("<td>");
                            out.println("<button class='btn btn-info'><i class='fa fa-edit'></i><a href='advertise_edit.jsp?id="+ID+"'>Edit</a></button>");
                            out.println("<button class='btn btn-warning'><i class='fa fa-trash-o'></i><a href='advertise_delete.jsp?id="+ID+"'>Delete</a></button>");
                        out.println("</td>");
                    out.println("</tr>");
                }
                }
                
	} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	} 
%>
            </tbody>
        </table>
        <a href="advertise_new.jsp"><button class="btn btn-primary"  type="submit">Advertise New Course </button></a>
        </div>    
            
                                   
    </body>
</html>
