<%@include file="header_staff.jsp" %>
<%@include file = "bootstrap.jsp" %>
<%@include file = "dbConnect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Apply Course</title>
    </head>
    <body>
    </body>
</html>

<%
    PreparedStatement apply = null;
   String name =(String) session.getAttribute ("name");
    int i = 0;
    
    String course = request.getParameter("id");
    String ID = "SELECT *FROM courses where title = '"+course+"'";
     
    rs = queryStmt.executeQuery(ID);
                while (rs.next()) {
                     out.println(course);  
                String userID = rs.getString(1);
            
        if(course!=null)
            {//
                try
                {
                        String query = "INSERT INTO participant(course, name) VALUES (?,?)";
                    apply = con.prepareStatement(query);
                    apply.setString(1, course);
                    apply.setString(2, name);
                    
                    i = apply.executeUpdate();
                }
                
                catch(SQLException sqe)
                {
                    request.setAttribute("error", sqe);
                    out.println(sqe);
                }
            }
                if (i > 0) {
        
                    response.sendRedirect("index_staff.jsp");
       
                } else {
                    response.sendRedirect("applyForCourse_new.jsp");
                }
            }       
%>  

