
<%@include file = "dbConnect.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Courses</title>
    </head>
    <body>
        <%
            String code = request.getParameter("code");    
            String title = request.getParameter("title");
            String module = request.getParameter("module");
    int i = 0;
    if(code != null && title != null && module !=null)
    {
	try {
        	PreparedStatement register = null;
        	int updateQuery = 0;
                String queryString = "INSERT INTO courses(code, title, module) VALUES (?, ?, ?)";
		register = con.prepareStatement(queryString);
		register.setString(1, code);
		register.setString(2, title);
		register.setString(3, module);
				
                i = register.executeUpdate();
	} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	}
    if (i > 0) {

       response.sendRedirect("courses.jsp");
    } 
    }
        %>
        <form action="">
            Course code : <input type="text" name="code"> <br>
            Title : <input type="text" name="title"> <br>
            Module : 
            <textarea type="text" name="module">

            </textarea>
 <br>
            <input type="submit" value="Save">
        </form>
    </body>
</html>
