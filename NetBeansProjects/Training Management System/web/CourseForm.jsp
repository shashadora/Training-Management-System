<%-- 
    Document   : CourseForm
    Created on : Nov 25, 2014, 9:54:27 AM
    Author     : user8
--%>
 <%@include file = "bootstrap.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Apply Course Form</title>
</head>

<body>
    
    
    
    <div class="container-fluid">
    <div class="row">
        <div class="page-header">
        <h1>Course Information</h1>
        </div>
         <form method="post" action="Registration.jsp">
            <div class="col-lg-6">
                <div class="form-group">
                    <label for="courseCode">Course code</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="courseCode" id="courseCode">
                    </div>
                </div>
                <div class="form-group">
                    <label for="courseName">Course name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="courseName" id="courseName">
                    </div>
                </div>
                <div class="form-group">
                    <label for="sDate">Start Date</label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="sDate" name="sDate">
                    </div>
                </div>
                <div class="form-group">
                    <label for="eDate">End Date</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="eDate" id="eDate">
                    </div>
                </div>
                
                <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-primary pull-left">
                <input type="reset" name="reset" id="reset" value="Reset" class="btn btn-success pull-left">
            </div>
        </form>
    </div>
    </div>
</body>
</html>
