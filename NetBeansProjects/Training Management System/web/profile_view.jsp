
<%@page import="java.io.*" %>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="dbConnect.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<%@include file="header_staff.jsp" %>
<%@include file = "bootstrap.jsp" %>
<html>
    
<head>
        
    	<title>Profile</title>

</head>
    

<body>
        
	

	<div style="margin-left:25pt;">        
	<h1>Your Profile</h1>
	<form action="profile_edit.jsp" method="post" style="display:inline;">
<%
	String name = (String)session.getAttribute("firstName");

	try {
		//Connection con = DriverManager.getConnection(url, user, password);
		Statement stmt = con.createStatement();
		
		String query = "SELECT * FROM user WHERE firstName ='"+ name + "'"; 
		rs = stmt.executeQuery(query);
%>

		 <table class="table table-striped table-advance table-hover">
<%	
		if (rs.first() ) {
%>
		   <tr>
			<td width="90">User ID</td><td width="45">:</td><td id="input1"><%= rs.getString("ID") %></td>
		   </tr>
		   <tr>
			<td>Username</td><td>:</td><td id="input2"><%= rs.getString("userName") %></td>
		   </tr>
		   <tr>	
			<td>Password</td><td>:</td><td id="input3"><%= rs.getString("password") %></td>
		   </tr>
		   <tr>
			<td>First Name</td><td>:</td><td id="input4"><%= rs.getString("firstName") %></td>
		   </tr>
		   <tr>
			<td>Last Name</td><td>:</td><td id="input5"><%= rs.getString("lastName") %></td>
		   </tr>
		   <tr>
			<td>Email</td><td>:</td><td id="input6"><%= rs.getString("email") %></td>
		   </tr>
<%
		} else {
		   out.println("No records");
		}
%>
		</table>

<%
	} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	}
%>
	<div style="margin-top:15pt;">
	<button type="button" onclick="myfunction()" id="editButton" class="btn btn-warning">Edit</button>
	
	<button type="submit" id="changeButton" style="display:none;" class="btn btn-primary">Change</button>
        <button type="button" onclick="cancelfunction()" id="cancelButton" style="display:none;" class="btn btn-success" >Cancel</button>

	</div>
	</form>
	</div>

<script>

function myfunction() {
	val = document.getElementById("input2").innerHTML;
	document.getElementById("input2").innerHTML = "<input type='text' name='input2' value='" 
							+ val + "' />";	
	val = document.getElementById("input3").innerHTML;
	document.getElementById("input3").innerHTML = "<input type='text' name='input3' value='" 
							+ val + "' />";	

	val = document.getElementById("input4").innerHTML;
	document.getElementById("input4").innerHTML = "<input type='text' name='input4' value='" 
							+ val + "' />";	

	val = document.getElementById("input5").innerHTML;
	document.getElementById("input5").innerHTML = "<input type='text' name='input5' value='" 
							+ val + "' />";	

	val = document.getElementById("input6").innerHTML;
	document.getElementById("input6").innerHTML = "<input type='text' name='input6' value='" 
							+ val + "' />";	

	document.getElementById("editButton").style.display = "none";	
	document.getElementById("cancelButton").style.display = "inline";	
	document.getElementById("changeButton").style.display = "inline";	
}

function cancelfunction () {
	location.reload();
}
</script>

</body>

</html>
<%@include file ="footer.jsp" %>

