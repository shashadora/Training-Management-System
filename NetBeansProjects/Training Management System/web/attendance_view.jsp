
<%@include file= "header_trainer.jsp" %>
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
                                  
                              </tr>
                              </thead>
                              <tbody>
                              
                               <% int index = 0;
        while (rs.next())
        {
            index++;
            String ID = rs.getString("ID");
            
            String name = rs.getString("name");
            String IC = rs.getString("IC");
            String course = rs.getString("course");
                               
%>

<TR>
<TD><%=index %></TD>
<TD><%=name%></TD>
<TD><%=course%></TD>
</TR>
<% } }
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
