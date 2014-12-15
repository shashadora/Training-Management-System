<%@include file = "check_session.jsp" %>
<%@include file="bootstrap.jsp" %>
<%@include file = "dbConnect.jsp" %>
<%@include file = "header_admin.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        

<script language="javascript" type="text/javascript" src="js/datetimepicker.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Advertisment</title>
    </head>
    <body>
      <div class="container-fluid">
            <h3 align="center">Advertise New Course</h3>
        <%
            String course_code = request.getParameter("course_code");    
            String start_time = request.getParameter("start_time");
            String end_time = request.getParameter("end_time");
            String place = request.getParameter("place");
           
            out.println(start_time);
    int i = 0;
    if(course_code != null && start_time != null && end_time !=null &&  place != null)
    {
	try {
        	PreparedStatement register = null;
        	int updateQuery = 0;
                String queryString = "INSERT INTO course_schedule(course_code, start_time, end_time, place) VALUES (?, ?, ?)";
		register = con.prepareStatement(queryString);
		register.setString(1, course_code);
		register.setString(2, start_time);
		register.setString(3, end_time);
                register.setString(4, place);
		out.println(course_code);		
                i = register.executeUpdate();
                out.println(i);
	} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	}
    if (i > 0) {

       response.sendRedirect("advertise_view.jsp");
    } 
    }
        %>
        <div class="container-fluid">
    <div class="row">
            <form action="">
                <div class="col-lg-6">
                <div class="form-group">
                    <label for="course_code">Course Code</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="course_code">
                    </div>
                </div>
                
                <div class="form-group">
                     
                    <label for="start_time">Start Time</label>
                    <div class="input-group">
                       <input name="start_time" type="text" size="25"><a href="javascript:NewCal('start_time','ddmmmyyyy',true,12)"><img src="img/cal.gif" width="16" height="16" border="0"></a>
                    </div>
                </div>
                    <div class="form-group">
                     
                    <label for="end_time">End Time</label>
                    <div class="input-group">
                       <input name="end_time" type="text" size="25"><a href="javascript:NewCal('end_time','ddmmmyyyy',true,12)"><img src="img/cal.gif" width="16" height="16" border="0"></a>
                    </div>
                </div>
                <div class="form-group">
                    <label for="place">Place</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="place">
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
