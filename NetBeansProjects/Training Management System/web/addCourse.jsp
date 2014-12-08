<%@include file ="bootstrap.jsp" %>
<%@include file="adminHeader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Course</title>
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
                    <label for="category">Category</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="category" id="category">
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
                <div class="form-group">
                    <label for="place">Place</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="place" id="place">
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
