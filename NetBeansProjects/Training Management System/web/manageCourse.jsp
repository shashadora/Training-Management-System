

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file= "adminHeader.jsp" %>
<%@include file= "bootstrap.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Course</title>
    </head>
    <body>
              <table class="table table-striped table-advance table-hover">
	                  	  	  <h3><i class="fa fa-angle-right"></i>List Of Course</h3>
	                  	  	  <hr>
                              <thead>
                              <tr>
                                  <th><i class="fa fa-bullhorn"></i> Index</th>
                                  <th class="hidden-phone"><i class="fa fa-question-circle"></i> Course Code</th>
                                  <th class="hidden-phone"><i class="fa fa-question-circle"></i> Course Name</th>
                                  <th class="hidden-phone"><i class="fa fa-question-circle"></i> Category</th>
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
                                  <td class="hidden-phone"></td>
                                  
                                  
                                  <td>
                                      <button class="btn btn-info">
                                        <%--<a href='salaryUpdate.jsp?salaryID= + <%=salaryID%> + '>--%> 
                                        <i class="fa fa-pencil"></i></button>
                                      <button class="btn btn-warning">
                                         <%--<a href='deleteSalary.jsp?salaryID= + <%=salaryID%> + '>--%>
                                        <i class="fa fa-trash-o "></i></button>
                                  </td>
                                  
                              </tr>
                              </tbody>
                          </table>
                          
                              <table>
                                  <tr>
                                      
                                  <a href="addCourse.jsp"><button class="btn btn-primary"  type="submit">Add New Course </button></a>
                                      
                                  </tr>
                              </table>
                         
    </body>
    </body>
</html>
