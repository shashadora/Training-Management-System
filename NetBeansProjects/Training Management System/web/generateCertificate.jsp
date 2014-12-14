
<%@include file= "adminHeader.jsp" %>
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
                                      <button class="btn btn-info">
                                        <%--<a href='salaryUpdate.jsp?salaryID= + <%=salaryID%> + '>--%> 
                                        <i class="fa fa-edit"></i>  Generate Certificate</button>
                                      
                                  </td>
                                  
                              </tr>
                              </tbody>
                          </table>
        </div>
    </body>
</html>
