<%@include file = "check_session.jsp" %>
<%@include file="bootstrap.jsp" %>
<%@include file = "dbConnect.jsp" %>
<%@include file = "header_admin.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
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
        <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/tms"
     user="root"  password="root"/>
      <div class="container-fluid">
            <h3 align="center">Advertise Course</h3>
        <%
            String title = request.getParameter("course_code");    
            String start_date = request.getParameter("start_date");
            String end_date = request.getParameter("end_date");
            String place = request.getParameter("place");
            String course_ID ="";
             String query = "select * from courses where title='"+ title +"'";
                /* createStatement() is used for create statement object that is used for 
			 sending sql statements to the specified database. */
		PreparedStatement reg = con.prepareStatement(query);
                rs = reg.executeQuery();
                while (rs.next()) {
                    course_ID = rs.getString("id");
                }         
                
                
    if(course_ID != null && start_date != null && end_date !=null &&  place != null)
    {
        
	try {
        	PreparedStatement register = null;
        	int updateQuery = 0;
                
                String queryString = "INSERT INTO course_schedule(start_date, end_date, place, course_ID) VALUES (?,?, ?, ?)";
		register = con.prepareStatement(queryString);
		register.setString(1, start_date);
		register.setString(2, end_date);
                register.setString(3, place);
		register.setString(4, course_ID);
                
		 	
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
                    <label class="col-sm-2 control-label" for="course_code">Course Code</label>
                    <div class="col-sm-10">
      <sql:query var="course_code" dataSource="${snapshot}"> SELECT title FROM courses </sql:query>
        <select name="course_code" class="form-control">
                                                         
          <c:forEach var="row" items="${course_code.rowsByIndex}">
            <c:forEach var="column" items="${row}">
              <option value='<c:out value="${column}"/>'>
                <c:out value="${column}"/>
                </option>
            </c:forEach>
          </c:forEach>
        </select>
    </div>
                </div>
        <p> &nbsp; </p>
                <div class="form-group">
                  
                    <label class="col-sm-2 control-label" for="start_date">Start Date</label>
                    <div  class="col-sm-10">
                        <input class="form-control" id="from" name="start_date" type="text" required autofocus>
                    </div>
                </div>
          <p> &nbsp; </p>
                    <div class="form-group">
                     
                    <label class="col-sm-2 control-label" for="end_date">End Date</label>
                    <div  class="col-sm-10">
                       <input class="form-control" id="to" name="end_date" type="text" required autofocus>
                    </div>
                    </div>
            <p> &nbsp; </p>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="place">Place</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" name="place">
                    </div>
                </div>
              <p> &nbsp; </p>
                <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-primary pull-left">
                <input type="reset" name="reset" id="reset" value="Reset" class="btn btn-success pull-left">
            </div>
        </form>
        </div>
        </div>
        </div>
    </body>
</html>
