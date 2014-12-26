<%@include file = "bootstrap.jsp" %>
<%@include file = "dbConnect.jsp" %>
<%@page import="java.sql.PreparedStatement"%>

<%@ include file = "bootstrap.jsp" %>
<html>
    <head>
        <title>Training Management System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
<%
//        user level according to user.level column
//        0 = admin
//        1 = HOD
//        2 = Trainer
//        3 = staff
        
            if (request.getParameter("username") != null){
                     	PreparedStatement register = null;
                String queryString = "select * from user where userName = ? and password = ?";
		register = con.prepareStatement(queryString);
                register.setString(1, request.getParameter("username"));
                register.setString(2, request.getParameter("password"));
                ResultSet courses_rs = register.executeQuery();
                if (courses_rs.first()){
                    out.println("Welcome ");
                    session.setAttribute( "name", courses_rs.getString("firstName") + " " + courses_rs.getString("lastName") );
                    session.setAttribute( "level", courses_rs.getString("level") );
                    session.setAttribute( "ID", courses_rs.getString("ID") );
                    session.setAttribute( "firstName", courses_rs.getString("firstName") );
                    switch ( Integer.parseInt( session.getAttribute("level").toString() ) ){
                        case 0: // Admin
                            response.sendRedirect("course_view.jsp");
                            break;
                        case 1: // HOD
                            response.sendRedirect("module.jsp");
                            break;
                        case 2: 
                            response.sendRedirect("attendance_record.jsp");
                            break;                            
                        case 3:
                            response.sendRedirect("index_staff.jsp");
                            break;                            
                     }
                    out.println( session.getAttribute( "name" ) + "! ");
                } else {
                    out.println("no password match");
                }   
            }
            %>
<body>           
<div class="container-fluid"><div class="navbar navbar-default">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-inverse-collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#">TMS</a>
  </div>
  <div class="navbar-collapse collapse navbar-inverse-collapse">
    <ul class="nav navbar-nav">
        <li><a href="index.jsp">Home</a></li>
    </ul>
    
  </div>
</div>
</div>

	<div id="login-page">
	  	
	   <div class="container-fluid">
	  	
		      
		<form class="form-login" action="index.jsp">
		        
                    <h2 class="form-login-heading" style="background-color: #ff0000;">Sign In</h2>
		        
		<div class="login-wrap">
		            
                    <input type="text" class="form-control" placeholder="Username" name="username" autofocus>
	

		   <br />		            
                   <input type="password" class="form-control" placeholder="Password" name="password">

	           <br />	            
		   <button class="btn btn-primary btn-block" type="submit" name="submit">
			<i class="fa fa-lock"></i> SIGN IN</button>
	

		   <hr>
		          		        
		</div>
		
		      
		</form>	  	
	  	
	  	
	   </div>
	  
	</div>

    
    </body>
</html>

