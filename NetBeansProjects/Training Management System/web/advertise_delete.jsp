<%@include file = "check_session.jsp" %>
<%@include file = "dbConnect.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String id = request.getParameter("id");    
    int i = 0;
    if(id != null)
    {
	try {
        	PreparedStatement register = null;
        	int updateQuery = 0;
                String queryString = "delete from courses where id = ?";
		register = con.prepareStatement(queryString);
		register.setString(1, id);
				
                i = register.executeUpdate();
	} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	}
    if (i > 0) {
            response.sendRedirect("course_view.jsp");
        } 
    }
%>
