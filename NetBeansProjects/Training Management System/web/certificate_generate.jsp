
<%@include file= "header_admin.jsp" %>
<%@include file= "bootstrap.jsp" %>
<%@include  file="dbConnect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
        String id= request.getParameter("ID");
        out.println(id);
        try
                {
   
                String sqlQuery = "SELECT * FROM participant WHERE ID='"+ id +"'";
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
 <% int index = 0;
        while (rs.next())
        {
            index++;
            String ID = rs.getString("ID");
            String name = rs.getString("name");
            String course = rs.getString("course");
            
            sqlQuery = "SELECT * FROM course_schedule WHERE course_code='"+ course +"'";
                queryStmt = con.createStatement();
                rs = queryStmt.executeQuery(sqlQuery);
     while (rs.next())
        {
            
            String date = rs.getString("start_date")+ "-" + rs.getString("end_date");
            String place = rs.getString("place");
%>

                         <div class="all_certificate">
                                            <div class="each_certificate" style="page-break-after:always;">
                                                <center>
                                                <h1>Sijil Penyertaan</h1>
                                                <p>&nbsp;</p>
                                                <p>&nbsp;</p>
                                                <p>Adalah dengan ini diperakui bahawa</p>
                                                <p>&nbsp;</p>
                                                <p><b><%=name%></b></p>
                                                <p>telah menyertai</p>
                                                <p>&nbsp;</p>
                                                <p><b><%=course%></b></p>
                                                <p>&nbsp;</p>
                                                <p>pada</p>
                                                <p>&nbsp;</p>
                                                <p><b>pada  <%=date%></b></p>
                                                <p>&nbsp;</p>
                                                <p><b>di <%=place%></b></p>
                                                <p>&nbsp;</p>
                                                <p>&nbsp;</p>
                                                <p>.....................</p>
                                                <p>KETUAN JABATAN</p>
                                                <p> </p>
                                                </center>
                                            </div>
                         </div>
        <center><button class="btn btn-info generate_certificate">
                <i class="fa fa-print"></i>Print</button></center>
              
    </body>
</html>
      <% }} }
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