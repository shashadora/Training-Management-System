
<%@include file= "header_admin.jsp" %>
<%@include file= "bootstrap.jsp" %>
<%@include  file="dbConnect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Certificate</title>
    </head>
    <%
        try
                {
   
                String sqlQuery = "SELECT * FROM participant WHERE attendance='true'";
                queryStmt = con.createStatement();
                rs = queryStmt.executeQuery(sqlQuery);
               
    %>  
    <body>
        <div class="container-fluid">
                     <table class="table table-striped table-advance table-hover">
	                  	  	  <h3><i class="fa fa-angle-right"></i>List Of Participant</h3>
	                  	  	  <hr>
                              <thead>
                              <tr>
                                  <th><i class="fa fa-bullhorn"></i> Index</th>
                                  <th class="hidden-phone"><i class="fa fa-user"></i> Name</th>
                                  <th class="hidden-phone"><i class="fa fa-question-circle"></i> Course</th>
                                  <th class="hidden-phone"><i class="fa fa-mortar-board">Generate Certificate</th>
                              </tr>
                              </thead>
                              <tbody>
                              
                               <% int index = 0;
        while (rs.next())
        {
            index++;
            String user = rs.getString("user_ID");
            
            String sql = "SELECT firstName, lastName FROM user WHERE ID ='"+user+"'";
                queryStmt = con.createStatement();
                ResultSet rs2=null;
                rs2 = queryStmt.executeQuery(sql);
                 while (rs2.next())
        {
                      
            String name = rs2.getString("firstName") + " "+ rs2.getString("lastName");
            String schedule = rs.getString("schedule_ID");
            String sql2 = "SELECT * FROM course_schedule WHERE ID ='"+schedule+"'";
                queryStmt = con.createStatement();
                ResultSet rs3=null;
                rs3 = queryStmt.executeQuery(sql2);
                 while (rs3.next())
        {
            String course = rs3.getString("course_ID");
            String sql3 = "SELECT * FROM courses WHERE id ='"+course+"'";
                queryStmt = con.createStatement();
                ResultSet rs4=null;
                rs4 = queryStmt.executeQuery(sql3);
                 while (rs4.next())
        {
            String title = rs4.getString("title");
        
        
                               
%>

<TR>
<TD><%=index %></TD>
<TD><%=name%></TD>
<TD><%=title%></TD>
<TD><button class="btn btn-social">
                                         <a href='certificate_generate.jsp?user_ID= + <%=user%> + '>
                                        <i class="fa fa-download"></i></button></TD>
</TR>
<% }
        }
        }}}
                catch(SQLException sqe)
                {
                    request.setAttribute("error", sqe);
                    out.println(sqe);
                }
        

%>
                              </tbody>
                          </table>
        </div>
    </body>
</html>
