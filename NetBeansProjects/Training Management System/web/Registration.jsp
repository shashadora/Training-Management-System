
<%@include file = "dbConnect.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file = "bootstrap.jsp" %>
        <title>Registration</title>

    </head>
    <body>
        <h3>Registration Form</h3>
        <div class="container">
    <div class="row">
         <form method="post" action="Registration.jsp">
            <div class="col-lg-6">
                <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Required Field</strong></div>
                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="firstName" id="firstName" placeholder="First Name" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastName">Last Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="lastName" id="lastName" placeholder="Last Name" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email">Enter Email</label>
                    <div class="input-group">
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="userName">Username</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="userName" id="userName" placeholder="Username" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <div class="input-group">
                        <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-primary pull-right">
                <input type="reset" name="reset" id="reset" value="Reset" class="btn btn-success pull-right">
            </div>
        </form>
    </div>
    </div>
        
    </body>
 
</html>
<%
    String firstName = request.getParameter("firstName");    
    String lastName = request.getParameter("lastName");
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    
    int i = 0;
    if(firstName != null && lastName != null && userName!=null && password!=null && email!=null)
    {
	try {
                String checkEmail = "SELECT email FROM user";
                
        	//Connection con = DriverManager.getConnection(url, user, password);
        	PreparedStatement register = null;
        	int updateQuery = 0;

                String queryString = "INSERT INTO user(firstName, lastName, email, username, " +
                                        "password) VALUES (?, ?, ?, ?, ?)";
                /* createStatement() is used for create statement object that is used for 
			 sending sql statements to the specified database. */
		register = con.prepareStatement(queryString);
		register.setString(1, firstName);
		register.setString(2, lastName);
		register.setString(3, email);
		register.setString(4, userName);
		register.setString(5, password);
				
                i = register.executeUpdate();
	} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	}
    if (i > 0) {

       response.sendRedirect("index.html");
    } 
    }
%>

