

<%@page import="java.io.*" %>

<%@page import="java.sql.*" %>


<%@ include file="Mysql_connect.jsp" %>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>



<%
    String username = request.getParameter("input2");    
    String pwd = request.getParameter("input3");
    String fName = request.getParameter("input4");
    String lName = request.getParameter("input5");
    String email = request.getParameter("input6");

    String userSession = (String)session.getAttribute("username");    
    
    int i = 0;
    if(username!=null && pwd!=null && fName!=null && lName!=null && email!=null)
    {
	try {
        	//Connection con = DriverManager.getConnection(url, user, password);
        	PreparedStatement edit = null;
        	int updateQuery = 0;

                String queryString = "UPDATE user SET username=?,password=?,firstName=?,"
					+ "lastName=?,email=? WHERE username='" + userSession
					+ "'"; 

                /* createStatement() is used for create statement object that is used for 
			 sending sql statements to the specified database. */
		edit = con.prepareStatement(queryString);
		edit.setString(1, username);
		edit.setString(2, pwd);
		edit.setString(3, fName);
		edit.setString(4, lName);
		edit.setString(5, email);
				
                i = edit.executeUpdate();
	} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	}
    if (i > 0) {
        session.setAttribute("username", username);
        response.sendRedirect("profile.jsp");
       // out.print("Registration Successfull!"+"<a href='index.jsp'>Go to Login</a>");
    } else {
        out.println("Edit cannot be done because of system error!");
    }
    }
%>