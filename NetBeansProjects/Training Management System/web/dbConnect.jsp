<%@page import="java.sql.*"%>
<%!String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/tms";%> 
<%!String user = "root";%>
<%!String password = "root";%>
<% Connection con = DriverManager.getConnection(url,user,password);
   ResultSet rs = null;
   Statement queryStmt = con.createStatement();
%>