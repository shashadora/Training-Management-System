<%@include file = "dbConnect.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Apply Job</title>
    </head>
    <body>
    </body>
</html>

<%
    PreparedStatement apply = null;
    String user = (String)session.getAttribute("name");
    
    int i = 0;
    String jobID = request.getParameter("JobID");
    String ID = "SELECT *FROM user where username = '"+user+"'";
    rs = queryStmt.executeQuery(ID);
                while (rs.next()) {
                String userID = rs.getString(1);
                
        if(jobID!=null)
            {//
                try
                {
                    String query = "INSERT INTO jobapplication(JobID, userID) VALUES (?,?)";
                    apply = con.prepareStatement(query);
                    apply.setString(1, jobID);
                    apply.setString(2, userID);
                    i = apply.executeUpdate();
                }
                
                catch(SQLException sqe)
                {
                    request.setAttribute("error", sqe);
                    out.println(sqe);
                }
            }
                if (i > 0) {
        
                    response.sendRedirect("ApplySuccess.jsp");
       
                } else {
                    response.sendRedirect("jobSearch.jsp");
                }
            }       
%>  

