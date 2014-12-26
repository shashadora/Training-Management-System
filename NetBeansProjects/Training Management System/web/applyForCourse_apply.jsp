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
   String user_ID =(String) session.getAttribute ("ID");
    int i = 0;
    
    String schedule_ID = request.getParameter("id");
    
            
                   
        if(schedule_ID!=null)
            {// 
               
                try
                {
                    String query = "INSERT INTO participant(schedule_ID, user_ID) VALUES (?,?)";
                    apply = con.prepareStatement(query);
                    apply.setString(1, schedule_ID);
                    apply.setString(2, user_ID);
                    i = apply.executeUpdate();
                }
                
                catch(SQLException sqe)
                {
                    request.setAttribute("error", sqe);
                    out.println(sqe);
                }
            }
                if (i > 0) {
        
                    response.sendRedirect("applyForCourse_status.jsp");
       
                } else {
                    response.sendRedirect("applyForCourse_new.jsp");
                }
                 
%>  

