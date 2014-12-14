<%@include file = "bootstrap.jsp" %>
<%@include file = "adminHeader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verify Application</title>
    </head>
    <body>
        <div class="container-fluid">
            <h3>Verify Application</h3>
                          <table class="table table-striped table-advance table-hover">
	                  	  	  
	                  	  	  <hr>
                              <thead>
                              <tr>
                                  <th><i class="fa fa-bullhorn"></i> Index</th>
                                  <th class="hidden-phone"><i class="fa fa-question-circle"></i> Name</th>
                                  <th class="hidden-phone"><i class="fa fa-question-circle"></i>Approval</th>
                                  <th></th>
                              </tr>
                              </thead>
                              <tbody>
                                  <tr>
                                      <td>1</td>
                                      <td>Fakhitah Binti Ridzuan</td>
                                      <td>
                                          <input type="checkbox" name="my-checkbox" checked data-toggle="toggle" data-on="Yes" data-off="No" data-onstyle="success" data-offstyle="danger">
                                          
                                  </td>
                                  
                              </tr>
                             
                              </tbody>
                          </table>
        </div>
    </body>
    <script>
        $("[name='my-checkbox']").bootstrapSwitch();
    </script>
</html>
