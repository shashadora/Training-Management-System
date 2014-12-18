<%@include file = "bootstrap.jsp" %>
<div class="container-fluid"><div class="navbar navbar-default">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-inverse-collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="#">Brand</a>
  </div>
  <div class="navbar-collapse collapse navbar-inverse-collapse">
    <ul class="nav navbar-nav">
        <li><a href="index_admin.jsp">Home</a></li>
        <li><a href="course_view.jsp">Manage Course</a></li>
        <li><a href="course_advertise.jsp">Advertise Course</a></li>
        <li><a href="generateCertificate.jsp">Generate Certificate</a></li>
        <li><a href="generateReport.jsp">Generate Report</a></li>
        <li><a href="applyForCOurse_verify.jsp">Verify Application</a></li>
        <li><a href="attendance_view.jsp">View Attendance</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
        <li><a><%
            if (session.getAttribute("name") != null){
                out.println( session.getAttribute("name") );
            }
        %></a></li>
        <%
            if (session.getAttribute("name") != null){ %>
        <li>
            
            <a href='logout.jsp'>Logout</a> 
        </li>
        <% } %>
    </ul>
  </div>
</div>
</div>