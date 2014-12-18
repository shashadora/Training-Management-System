
<%@include file= "header_admin.jsp" %>
<%@include file= "bootstrap.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Certificate</title>
    </head>
    <body>
        <div class="container-fluid">
                     <table class="table table-striped table-advance table-hover">
	                  	  	  <h3><i class="fa fa-angle-right"></i>List Of Participant</h3>
	                  	  	  <hr>
                              <thead>
                              <tr>
                                  <th><i class="fa fa-bullhorn"></i> Index</th>
                                  <th class="hidden-phone"><i class="fa fa-question-circle"></i> Name</th>
                                  <th class="hidden-phone"><i class="fa fa-question-circle"></i> I/C</th>
                                  <th class="hidden-phone"><i class="fa fa-question-circle"></i> Course</th>
                                  <th class="hidden-phone"><i class="fa fa-question-circle"></i> Start Date</th>
                                  <th class="hidden-phone"><i class="fa fa-question-circle"></i> End Date</th>
                                  <th></th>
                              </tr>
                              </thead>
                              <tbody>
                              
                              
                              <tr>
                                  <td>
                                    
                                  </td>
                                  <td class="hidden-phone"></td>
                                  <td class="hidden-phone"></td>
                                  <td class="hidden-phone"></td>
                                  <td class="hidden-phone"></td>
                                  <td class="hidden-phone"></td>
                                  
                                  
                                  <td>
                                      <button class="btn btn-info generate_certificate">
                                        <%--<a href='salaryUpdate.jsp?salaryID= + <%=salaryID%> + '>--%> 
                                        <i class="fa fa-edit"></i>  Generate Certificate</button>
                                      
                                  </td>
                                  
                              </tr>
                              </tbody>
                          </table>
                                        
                                        <div class="all_certificate">
                                            <div class="each_certificate" style="page-break-after:always;">
                                                <center>
                                                <h1>Sijil Penyertaan</h1>
                                                <p>&nbsp;</p>
                                                <p>&nbsp;</p>
                                                <p>Adalah dengan ini diperakui bahawa</p>
                                                <p>&nbsp;</p>
                                                <p><b>AHMAD YA'KOB BIN ABAIDULLAH</b></p>
                                                <p>&nbsp;</p>
                                                <p>telah menyertai</p>
                                                <p>&nbsp;</p>
                                                <p><b>Ruby on Rails Crash Course Training</b></p>
                                                <p>&nbsp;</p>
                                                <p>pada</p>
                                                <p>&nbsp;</p>
                                                <p><b>13-15 NOVEMBER 2014</b></p>
                                                <p>&nbsp;</p>
                                                <p>KETUAN JABATAN</p>
                                                </center>
                                            </div>
                                            
                                            <div class="each_certificate" style="page-break-after:always;">
                                                <center>
                                                <h1>Sijil Penyertaan</h1>
                                                <p>&nbsp;</p>
                                                <p>&nbsp;</p>
                                                <p>Adalah dengan ini diperakui bahawa</p>
                                                <p>&nbsp;</p>
                                                <p><b>Rodza bin Wahab</b></p>
                                                <p>&nbsp;</p>
                                                <p>telah menyertai</p>
                                                <p>&nbsp;</p>
                                                <p><b>Ruby on Rails Crash Course Training</b></p>
                                                <p>&nbsp;</p>
                                                <p>pada</p>
                                                <p>&nbsp;</p>
                                                <p><b>13-15 NOVEMBER 2014</b></p>
                                                <p>&nbsp;</p>
                                                <p>KETUAN JABATAN</p>
                                                </center>
                                            </div>
                                            
                                            <div class="each_certificate" style="page-break-after:always;">
                                                <center>
                                                <h1>Sijil Penyertaan</h1>
                                                <p>&nbsp;</p>
                                                <p>&nbsp;</p>
                                                <p>Adalah dengan ini diperakui bahawa</p>
                                                <p>&nbsp;</p>
                                                <p><b>Fakhitah Ridzuan</b></p>
                                                <p>&nbsp;</p>
                                                <p>telah menyertai</p>
                                                <p>&nbsp;</p>
                                                <p><b>Ruby on Rails Crash Course Training</b></p>
                                                <p>&nbsp;</p>
                                                <p>pada</p>
                                                <p>&nbsp;</p>
                                                <p><b>13-15 NOVEMBER 2014</b></p>
                                                <p>&nbsp;</p>
                                                <p>KETUAN JABATAN</p>
                                                </center>
                                            </div>
                                            
                                        </div>
                                        </center>
        </div>
    </body>
</html>
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