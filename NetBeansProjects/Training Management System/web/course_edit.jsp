<%@include file = "check_session.jsp" %>
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
        <form action="">
            <input name="id" value="<% out.println(id); %>" type="hidden">
            Course code : <input type="text" name="code" value="<% out.println(code); %>"> <br>
            Title : <input type="text" name="title" value="<% out.println(title); %>"> <br>
            Module : 
            <textarea type="text" name="module"
                      style="width:100%;height:300px;"
                      ><% out.println(module); %></textarea>
 <br>
            <input type="submit" value="Save">
        </form>      
                <%
	} catch (SQLException ex) {
		out.println("SQLException: " + ex.getMessage() );
	}
    }
        %>
    </body>
</html>
