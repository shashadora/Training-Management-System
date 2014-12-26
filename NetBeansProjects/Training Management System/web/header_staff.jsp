<%@include file = "bootstrap.jsp" %>
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
        <li><a href="index_staff.jsp">Home</a></li>
        <li><a href="applyForCourse_new.jsp">Apply Course</a></li>
        <li><a href="profile_view.jsp">View Profile</a></li>
        <li><a href="profile_course.jsp">Course History</a></li>
        
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