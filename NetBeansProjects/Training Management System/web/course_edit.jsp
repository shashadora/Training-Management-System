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
        <%
        
            String id = request.getParameter("id");    
    ResultSet i;
    String title = "", code = "", module = "";
//    Blob module;
    title = request.getParameter("title");
    code = request.getParameter("code");
    module = request.getParameter("module");
    
    if (request.getParameter("title") != null){
            	PreparedStatement register = null;
                String queryString = "update courses set code=?,title=?,module=? where id=?";
		register = con.prepareStatement(queryString);
                register.setString(1, code);
                register.setString(2, title);
                register.setString(3, module);
                register.setString(4, id);
                
                int courses_rs = register.executeUpdate();
                if (courses_rs > 0){
                    out.println("<script>window.location = '/Training_Management_System/course_view.jsp'; </script>");
                }        
    }

    if(id != null)
    {
	try {
        	PreparedStatement register = null;
        	int updateQuery = 0;
                String queryString = "SELECT * FROM courses where id = ?";
		register = con.prepareStatement(queryString);
		register.setString(1, id);
				
                i = register.executeQuery();
                i.first();
           
                System.out.print(i.getString("title"));
                title = i.getString("title");
                code = i.getString("code");
                module = i.getString("module");
                %>
        <div class="container-fluid">
            <div class="row">
            <form action="">
                <input name="id" value="<% out.println(id); %>" type="hidden">
                <div class="col-lg-10">
                <div class="form-group">
                    <label for="code">Course Code</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="code" value="<% out.println(code); %>">
                    </div>
                </div>
                <div class="form-group">
                    <label for="title">Title</label>
                    <div class="input-group">
                        <textarea type="text" name="title"
                             style="width:200%;height:30px;"
                        ><% out.println(title); %></textarea>
                    </div>
                </div>
                <div class="form-group">
                     
                    <label for="code">Module</label>
                    <div class="input-group">
                        <textarea type="text" name="module"
                             style="width:200%;height:200px;"
                        ><% out.println(module); %></textarea>
                    </div>
                </div>
                <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-primary pull-left">
            </div>
        </form>
        </div>
        </div>
                    
                <%
	} catch (SQLException ex) {
		out.println("SQLException: " + ex.getMessage() );
	}
    }
        %>
    </body>
</html>
