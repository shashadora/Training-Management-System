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
<title>Untitled Document</title>
<style type="text/css">
.a {
	font-family: Verdana, Geneva, sans-serif;
	font-weight: bold;
}
.a {
	font-family: Verdana, Geneva, sans-serif;
}
</style>
</head>

<body>
    
    <div class="page-header">
  <h1>Maklumat Kursus Yang Dipohon</h1>
</div>
    
    <form role="form1">
  <div class="form-group">
    <label for="Course code">Course code:</label>
    <label for="Course code3"></label>
    <form id="form1" name="form1" method="post" action=""/>
    <input type="text" name="Course code" id="Course code3" />
  </div
</form>
    
     <form role="form2">
  <div class="form-group">
    <label for="Course name">Course name:</label>
    <label for="Course name"></label>
    <form id="form1" name="form2" method="post" action=""/>
    <input type="text" name="Course code" id="Course name" />
  </div
</form>
    
    <form role="form3">
  <div class="form-group">
    <label for="Start Date">Start Date:</label>
    <label for="Start Date"></label>
    <form id="form3" name="form3" method="post" action=""/>
    <input type="text" name="Start Date" id="Start Date" />
  </div
</form>
    
    <form role="form4">
  <div class="form-group">
    <label for="End Date">End Date:</label>
    <label for="End Date"></label>
    <form id="form4" name="form4" method="post" action=""/>
    <input type="text" name="End Date" id="End Date" />
  </div
</form>
    
    <div class="page-header">
  <h1>Information Details</h1>
</div

<form role="form">
  <div class="form-group">
    <label for="name">Name:</label>
    <input type="name" class="form-control" id="InputName" placeholder="Enter name">
  </div>
    
  <div class="form-group">
    <label for="InputAddress">Address:</label>
    <input type="address" class="form-control" id="InputAddress" placeholder="Address">
  </div>
    
  <div class="form-group">
    <label for="InputHpNo">Hp No:</label>
    <input type="HpNo" id="InputHpNo">
        
  <div class="form-group">
    <label for="InputOfficeNo">Office No:</label>
    <input type="OfficeNo" id="InputOfficeNo">
        
   <div class="form-group">
    <label for="InputEmail">Email:</label>
    <input type="Email" id="InputEmail">
        
   <div class="form-group">
    <label for="InputFaculty">Faculty:</label>
    <input type="Faculty" id="InputFaculty">
        
    <div class="form-group">
    <label for="InputDepartment">Department:</label>
    <input type="Department" id="InputDepartment">
        
    <div class="form-group">
    <label for="InputPositionGred">Position Gred:</label>
    <input type="PositionGred" id="InputPositionGred">
        
    <div class="form-group">
    <label for="InputPosition">Position:</label>
    <input type="Position" id="InputPosition">
   
</form>
    

  
  <form id="form5" name="form5" method="post" action="">
  <button type="button" class="btn btn-default navbar-btn">Apply Course</button>
  <input type="submit" id="Apply Course" value="Apply Course" />
  <button type="button" class="btn btn-default navbar-btn">Delete</button>
  <input type="submit" id="Delete" value="Delete" />
  </form></td>
 
</body>
</html>
