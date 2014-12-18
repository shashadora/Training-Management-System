<%@include file = "bootstrap.jsp" %>
<%@include file = "header_headOfDepartment.jsp" %>
<%@include file = "dbConnect.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-fluid">
        <h1>Verify module</h1>
         <table class="table table-striped table-advance table-hover">    
             <thead>
                <tr>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i>Course Code</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i>Title</th>
                    <th class="hidden-phone"><i class="fa fa-question-circle"></i>Dean Approval</th>
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
                            out.println("<button class='btn btn-info'><a href='module_show.jsp?id="+course_id+"'>View</a></button>");
                        out.println("</td>");
                    out.println("</tr>");
                }
	} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	} 
%>
            </tbody>
        </table>
        </div>    
    </body>
</html>
