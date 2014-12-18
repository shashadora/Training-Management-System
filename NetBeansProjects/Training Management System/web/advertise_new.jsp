<%@include file = "check_session.jsp" %>
<%@include file="bootstrap.jsp" %>
<%@include file = "dbConnect.jsp" %>
<%@include file = "header_admin.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
  <script src="js/jquery-1.11.0.js"></script>
  <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
    $( "#from" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      numberOfMonths: 1,
      onClose: function( selectedDate ) {
        $( "#to" ).datepicker( "option", "minDate", selectedDate );
      }
    });
    $( "#to" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      numberOfMonths: 1,
      onClose: function( selectedDate ) {
        $( "#from" ).datepicker( "option", "maxDate", selectedDate );
      }
    });
  });
  </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Advertisment</title>
    </head>
    <body>
      <div class="container-fluid">
            <h3 align="center">Advertise New Course</h3>
        <%
            String course_code = request.getParameter("course_code");    
            String start_date = request.getParameter("start_date");
            String end_date = request.getParameter("end_date");
            String place = request.getParameter("place");

    if(course_code != null && start_date != null && end_date !=null &&  place != null)
    {
        
	try {
        	PreparedStatement register = null;
        	int updateQuery = 0;
                
                String queryString = "INSERT INTO course_schedule(course_code, place, start_date, end_date) VALUES (?,?, ?, ?)";
		register = con.prepareStatement(queryString);
		register.setString(1, course_code);
		register.setString(2, place);
                register.setString(3, start_date);
		register.setString(4, end_date);
                
				
               int i = register.executeUpdate();
                out.println(place);
                    if (i > 0) {

                response.sendRedirect("advertise_view.jsp");
            } 
	} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
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
                     
                    <label for="start_date">Start Date</label>
                    <div class="input-group">
                        <input class="form-control" id="from" name="start_date" type="text" required autofocus>
                    </div>
                </div>
                    <div class="form-group">
                     
                    <label for="end_date">End Date</label>
                    <div class="input-group">
                       <input class="form-control" id="to" name="end_date" type="text" required autofocus>
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
