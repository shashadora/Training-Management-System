<%@include file = "check_session.jsp" %>
<%@include file="bootstrap.jsp" %>
<%@include file = "dbConnect.jsp" %>
<%@include file = "header_trainer.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendance</title>
       
    </head>
<%
	try {               
        	//Connection con = DriverManager.getConnection(url, user, password);
        	PreparedStatement register = null;
        	int updateQuery = 0;

                String queryString = "select * from participant";
                /* createStatement() is used for create statement object that is used for 
			 sending sql statements to the specified database. */
		register = con.prepareStatement(queryString);
                rs = register.executeQuery();
%>
    <body>
        <div class="container-fluid">
            <h3>Record Attendance</h3>
            <form action="attendance_record.jsp">    
         <table class="table table-striped table-advance table-hover">
	                  	  	  
	                  	  	  <hr>
                              <thead>
                              <tr>
                                  <th><i class="fa fa-bullhorn"></i> Index</th>
                                  <th class="hidden-phone"><i class="fa fa-user"></i> Name</th>
                                  <th class="hidden-phone"><i class="fa fa-check-square-o"></i>Attendance</th>
                                  <th></th>
                              </tr>
                              </thead>
                              <tbody>
               <% int index =0;
                    while (rs.next()) {
                    index++;
                    out.println("<tr>");
                        out.println("<td>"+ index+"</td>");
                        out.println("<td>"+ rs.getString("FirstName") + " " +rs.getString("LastName")+"</td>");
                        
                        String id = rs.getString("ID");
               %>                     <td>
                                        <input type="checkbox" name="attendance" checked data-toggle="toggle" data-on="Yes" value-on="Yes" data-off="No" value-off="No" data-onstyle="primary" data-offstyle="danger">
                                      </td>
                                  
                              </tr>
                 <%} } catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	}             %>
                              </tbody>
                          </table>
                              
    <button class="btn btn-primary"  type="submit">Submit</button>
    </form>
            </div>
    </body>
 

</html>
