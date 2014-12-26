
<%@include file= "header_admin.jsp" %>
<%@include file= "bootstrap.jsp" %>
<%@include  file="dbConnect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
        String id= request.getParameter("user_ID");
        
        try
                {
                
                String sqlQuery = "SELECT * FROM participant";
                queryStmt = con.createStatement();
                rs = queryStmt.executeQuery(sqlQuery);
               
    %> 
    <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Generate Certificate</title>
    </head>
    <body>
 <%  while (rs.next())
        { int index = 0;
       index++;
           
            
            String sql = "SELECT firstName, lastName FROM user WHERE ID ='"+id+"'";
                queryStmt = con.createStatement();
                ResultSet rs2=null;
                rs2 = queryStmt.executeQuery(sql);
                
                 while (rs2.next())
        {
                      
            String name = rs2.getString("firstName") + " "+ rs2.getString("lastName");
            //out.println(id+id);
            String schedule = rs.getString("schedule_ID");
            
            String sql2 = "SELECT * FROM course_schedule WHERE ID ='"+schedule+"'";
                queryStmt = con.createStatement();
                
                ResultSet rs3=null;
                rs3 = queryStmt.executeQuery(sql2);
                
                 while (rs3.next())
        {
            String course = rs3.getString("course_ID");
            String date = rs3.getString("start_date") + " - " + rs3.getString("end_date");
            String place = rs3.getString("place");
            String sql3 = "SELECT * FROM courses WHERE id ='"+course+"'";
                queryStmt = con.createStatement();
                ResultSet rs4=null;
                rs4 = queryStmt.executeQuery(sql3);
                 while (rs4.next())
        {
            String title = rs4.getString("title");
        
        
%>

                         <div class="all_certificate">
                                            <div class="each_certificate" style="page-break-after:always;">
                                                <center>
                                                    <p>&nbsp;</p>
                                                    <img src="img/logoutm.jpg" width="300"/>

                                                <h1>Sijil Penyertaan</h1>
                                                <p>&nbsp;</p>
                                                <p>&nbsp;</p>
                                                <p>Adalah dengan ini diperakui bahawa</p>
                                                <p>&nbsp;</p>
                                                <p><b><%=name%></b></p>
                                                <p>&nbsp;</p>
                                                <p>telah menyertai</p>
                                                <p>&nbsp;</p>
                                                <p><b><%=title%></b></p>
                                                <p>&nbsp;</p>
                                                <p>pada</p>
                                                <p>&nbsp;</p>
                                                <p><b>pada  <%=date%></b></p>
                                                <p>&nbsp;</p>
                                                <p><b>di <%=place%></b></p>
                                                <p>&nbsp;</p>
                                                <p>KETUAN JABATAN</p>
                                                <p> </p>
                                                <p>&nbsp;</p>
                                                
                                                </center>
                                            </div>
                         </div>
        <center><button class="btn btn-info generate_certificate">
                <i class="fa fa-print"></i>Print</button></center>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              <p>&nbsp;</p>
              
    </body>
</html>
      <% }} }}}
                catch(SQLException sqe)
                {
                    request.setAttribute("error", sqe);
                    out.println(sqe);
                }
        

%>   
<style>
    .each_certificate {
        page-break-after: always;
        text-align: center;
    }
</style>
<script>
    $(".generate_certificate").click(function(){
        $(".all_certificate").printArea()
    })
</script>