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
            <h3 align="center">Add New Course</h3>
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
        <div class="container">
    <div class="row">
            <form action="">
                <div class="col-lg-6">
                <div class="form-group">
                    <label for="code">Course Code</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="code">
                    </div>
                </div>
                <div class="form-group">
                    <label for="title">Title</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="title">
                    </div>
                </div>
                <div class="form-group">
                    <label for="code">Module</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="module">
                    </div>
                </div>
                <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-primary pull-left">
                <input type="reset" name="reset" id="reset" value="Reset" class="btn btn-success pull-left">
            </div>
        </form>
        </div>
        </div>
        </div>
    </body>
</html>
