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
        <title>Edit Advertisment</title>
    </head>
    <body>
          <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/tms"
     user="root"  password="root"/>
        <%
        
            String id = request.getParameter("id");   
            
            
           
            String start_date = "", end_date = "", place="";
            
            try
            {
                String sqlQuery = "SELECT * FROM course_schedule where ID ='"+id+"'";
                rs = queryStmt.executeQuery(sqlQuery);
            out.println(id);
            while (rs.next()) 
            {

                start_date = rs.getString("start_date");
                
                end_date = rs.getString("end_date");
                place = rs.getString("place");
                
            }
        }
        catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	}

            
   if (request.getParameter("course_code")!=null) 
   {
       String title = request.getParameter("course_code");
            out.println("title");
            String course_ID="";
            String query = "select * from courses where title='"+ title +"'";
               PreparedStatement reg = con.prepareStatement(query);
                rs = reg.executeQuery();
                while (rs.next()) {
                    course_ID = rs.getString("id");
                }         
    start_date = request.getParameter("start_date");
    end_date = request.getParameter("end_date");
    place = request.getParameter("place");
    
    if(course_ID != null && start_date != null && end_date !=null &&  place != null)
    {
            	PreparedStatement register = null;
                String queryString = "update course_schedule set course_ID=?,start_date=?,end_date=?, place=? where ID=?";
		register = con.prepareStatement(queryString);
                try {
                    register.setString(1, course_ID);
                register.setString(2, start_date);
                register.setString(3, end_date);
                register.setString(4, place);
                register.setString(5, id);
                
                int courses_rs = register.executeUpdate();
                if (courses_rs > 0){
                    out.println("<script>window.location = 'http://localhost:8080/Training_Management_System/advertise_view.jsp'; </script>");
                }        
    

    

    } catch (SQLException ex) {
		out.println("SQLException: " + ex.getMessage() );
	}
    }
   }
        %>
        <div class="container-fluid">
            <h1>Edit Advertisment </h1>
            <div class="row">
            <form action="advertise_edit.jsp">
                <input name="id" value="<% out.println(id); %>" type="hidden">
                <div class="col-lg-6">
                <div class="form-group">
                    <label  class="col-sm-2 control-label" for="course_code">Course Code</label>
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
                <div class="form-group">
                    <label for="start_date">Start Date</label>
                     <div class="input-group">
                       <input class="form-control" id="from" name="start_date" type="text" required autofocus value="<% out.println(start_date); %>">
                    </div>
                </div>
              <div class="form-group">
                    <label for="end_date">End Date</label>
                     <div class="input-group">
                         <input class="form-control" id="to" name="end_date" type="text" required autofocus value="<% out.println(end_date); %>">
                    </div>
                </div>
                    <div class="form-group">
                    <label for="place">Place</label>
                     <div class="input-group">
                        <input type="text" class="form-control" name="place" value="<% out.println(place); %>">
                    </div>
                </div>
                <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-primary pull-left">
            </div>
        </form>
        </div>
        </div>
                    
    </body>
</html>
