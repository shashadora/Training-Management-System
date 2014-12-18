<%@page import="java.sql.*, java.io.*" %>
<%@include file="header_staff.jsp" %>
<%@include file = "bootstrap.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@include file="dbConnect.jsp" %>
<head>
	<title>Application Status</title>
	
	<style type="text/css">
	   table {
		font-size: 14px;
		border: 5px solid red;
		border-collapse: separate;
		
	   }

	   th {
		background-color: black;
		color: white;
		padding: 2px 5px;
	   }

    	   th:nth-child(2) {
		width: 250pt;
	   }
	
	   th:nth-child(5) {
		width: 50pt;
	   }
	
	   th:nth-child(6) {
		width: 80pt;
	   }
	
	   th:nth-child(7) {
		width: 80pt;
	   }
	
	   td {
		empty-cells: show;
		text-align: center;
	   }

	   div.content {
		width: 700pt;
		margin: 20pt 8%;
	   }	

	</style>
</head>

<%
	// ID = (String).getSession("ID");
	String ID = "2";

	String month = request.getParameter("month");

	String query = null;
	boolean more = false;

	if (request.getParameter("carian") != null) {
		
		query = "SELECT *, MONTHNAME(endDate) as month FROM courseApplied WHERE ID = '" + ID + "'" 
				+ " AND  MONTHNAME(endDate) = '" + month + "'";
	
	} else {
		
		query = "SELECT *, MONTHNAME(endDate) as month FROM courseApplied WHERE ID = '" + ID + "'";

	}

	try {
		rs = queryStmt.executeQuery(query);
		more = rs.next();
	} catch (SQLException ex) {
		System.err.println("SQLException: " + ex.getMessage() );
	}

%>

<body>
	<div class="content">
	<div align="left">
	   <form action="./ApplicationStatus.jsp" name="form1">		
		<label>Carian :</label>

		<%= makeMonthsPullDown() %>

		<input type="submit" name="carian" value="Carian" />
	   </form>
	</div>

	<br />

	<div>
	   <table>
	   <thead>
		<tr>
		   <th>Kod Kursus</th>
		   <th>Nama Kursus</th>
		   <th>Tarikh Mula</th>
		   <th>Tarikh Akhir</th>
		   <th>Bulan</th>
		   <th>Pihak HCD</th>
		   <th>Ketua Jabatan</th>
		</tr>
	   </thead>
	   <tbody>
<%
	   if (!more) {
%>
		<tr></tr>
		<tr><td colspan="7"><font color="red">-- NO RECORD FOUND --</font></td></tr>
<%
	   } else {

		while (more) {
		
		   String checkbox = "<input type='checkbox' disabled ";

		   String HCD_checkbox = null;
		   String CD_checkbox = null;

		   if (rs.getString("HCD Approval").equals("Y") ) {
			HCD_checkbox = checkbox + "checked='checked' /> Approve";
		   } else {
			HCD_checkbox = checkbox + "/> Approve";
		   }

		   if (rs.getString("CD Approval").equals("Y") ) {
			CD_checkbox = checkbox + "checked='checked' disabled /> Approve";
		   } else {
			CD_checkbox = checkbox + "/> Approve";
		   }
%>
		   <tr>
		   	<td><%= rs.getString("courseCode") %></td>
		   	<td><%= rs.getString("courseName") %></td>
		   	<td><%= rs.getDate("startDate") %></td>
		   	<td><%= rs.getDate("endDate") %></td>
		   	<td><%= rs.getString("month") %></td>
		   	<td><%= HCD_checkbox %></td>
		   	<td><%= CD_checkbox %></td>
		   </tr>
<%
		   more = rs.next();
		}
	   } 
%>
	   </tbody>
	</div>
	</div>

</body>
>>>>>>> 67390c9460b8bfbc6881f284a1ed8d363efb18fb
</html>

<%!
	public String makeMonthsPullDown() {

	   
	   String[][] months = {
				{"Jan","January"},{"Feb","February"},{"Mac","March"},
					{"Apr","April"},{"May","May"},{"Jun","June"},
					{"July","July"},{"Aug","August"},{"Sept","September"},
					{"Okt","October"},{"Nov","November"},{"Dis","December"}
				};
	
	   String options = "<option  value=''></option>";

	   for (String[] month : months) {
		options += "<option value='" + month[1] + "'>" + month[0] + "</option>";
	   }
	
	   return "<select name='month'>" + options + "</select>";
	
	}
%>
