<%@include file="header_staff.jsp" %>
<%@include file = "bootstrap.jsp" %>
<%@include file = "dbConnect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Apply Course Form</title>
</head>
<body>
    
           <div class="container-fluid">
        <h1>Course Information </h1>
        <table class="table table-striped table-advance table-hover">
            <thead>
                <tr>
                    <th class="hidden-phone"><i class="fa fa-barcode"></i>  Course Code</th>
                    <th class="hidden-phone"><i class="fa fa-calendar"></i>  Date</th>
                    <th class="hidden-phone"><i class="fa fa-clock-o"></i>  Start Time</th>
                    <th class="hidden-phone"><i class="fa fa-clock-o"></i>  End Time</th>
                     <th class="hidden-phone"><i class="fa fa-building-o"></i>  Places</th>
                    <th></th>
                   
                </tr>
            </thead>
            <tbody>
<%
	try {               
        	//Connection con = DriverManager.getConnection(url, user, password);
        	PreparedStatement register = null;
        	int updateQuery = 0;

                String queryString = "select * from course_schedule";
                /* createStatement() is used for create statement object that is used for 
			 sending sql statements to the specified database. */
		register = con.prepareStatement(queryString);
                ResultSet courses_rs = register.executeQuery();
                while (courses_rs.next()) {
                    out.println("<tr>");
                        out.println("<td>"+ courses_rs.getString("course_code")+"</td>");
                        out.println("<td>"+ courses_rs.getString("date")+"</td>");
                        out.println("<td>"+ courses_rs.getString("place")+"</td>");
                        out.println("<td>"+ courses_rs.getString("start_time")+"</td>");
                        out.println("<td>"+ courses_rs.getString("end_time")+"</td>");
                        String course_id = courses_rs.getString("id");
                        out.println("<td>");
                            out.println("<button class='btn btn-info'><i class='fa fa-pencil'></i><a href='applyForCourse_apply.jsp?id="+course_id+"'>Apply</a></button>");
                        out.println("</td>");
                    out.println("</tr>");
                }
	} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	} 
%>
</html>
