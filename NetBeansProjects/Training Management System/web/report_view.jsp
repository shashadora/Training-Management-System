<%@include file= "header_admin.jsp" %>
<%@include file= "bootstrap.jsp" %>
<%@include  file="dbConnect.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report</title>
    </head>
    <body>
<!--        <form>
            
        <div class="container-fluid">
            <h4>Month:
            <select>
                <option value="jan">January</option>
                <option value="feb">February</option>
                <option value="mar">March</option>
                <option value="apr">April</option>
                <option value="may">May</option>
                <option value="june">June</option>
                <option value="july">July</option>
                <option value="aug">August</option>
                <option value="sep">September</option>
                <option value="oct">October</option>
                <option value="nov">November</option>
                <option value="dis">Disember</option>
            </select> </h4>
            <button type="button" onclick="submit()" id="editButton" class="btn btn-warning">View</button>
            
            
        </div>
        </form>-->
<h1>Report by course</h1>
<table class="table table-striped table-advance table-hover">
    <tr>
        <td>
            Course
        </td>
        <td>
            Total
        </td>
    </tr>
<%
	try {               
        	//Connection con = DriverManager.getConnection(url, user, password);
        	PreparedStatement register = null;
        	int updateQuery = 0;

                String queryString = "select count(*) as jumlah, course from participant group by course";
                /* createStatement() is used for create statement object that is used for 
			 sending sql statements to the specified database. */
		register = con.prepareStatement(queryString);
                ResultSet courses_rs = register.executeQuery();
                while (courses_rs.next()) {
                    out.println("<tr>");
                        out.println("<td>"+ courses_rs.getString("course")+"</td>");
                        out.println("<td>"+ courses_rs.getString("jumlah")+"</td>");
                    out.println("</tr>");
                }
	} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	} 
%>
</table>
    </body>
</html>
