<%-- 
    Document   : CourseForm
    Created on : Nov 25, 2014, 9:54:27 AM
    Author     : user8
--%>

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
<table width="409" border="1" align="center">
  <tr>
    <td colspan="2" align="center" bgcolor="#FF0000" class="a">Maklumat Kursus Yang Dipohon</td>
  </tr>
  <tr>
    <td width="168">Course code:</td>
    <td width="225"><form id="form1" name="form1" method="post" action="">
      <label for="Course code"></label>
      <label for="Course code3"></label>
      <input type="text" name="Course code" id="Course code3" />
    </form></td>
  </tr>
  <tr>
    <td>Course name:</td>
    <td><form id="form2" name="form2" method="post" action="">
      <label for="Course name"></label>
      <label for="Course name"></label>
      <input type="text" name="Course name" id="Course name" />
    </form></td>
  </tr>
  <tr>
    <td>Start Date:</td>
    <td><form id="form3" name="form3" method="post" action="">
      <label for="Start Date"></label>
      <input type="text" name="Start Date" id="Start Date" />
    </form></td>
  </tr>
  <tr>
    <td>End Date:      </td>
    <td><label for="End Date"></label>
    <input type="text" name="End Date" id="End Date" /></td>
  </tr>
  <tr>
    <td colspan="2" align="center" bgcolor="#FF0000" class="a">Information Details</td>
  </tr>
  <tr>
    <td>Name:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Ic No:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Address:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Hp No:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Office No:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Email:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Faculty:</td>
    <td bgcolor="#FFFFFF">&nbsp;</td>
  </tr>
  <tr>
    <td>Department:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Position Gred:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>Position:</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" align="center"><form id="form4" name="form4" method="post" action="">
      <input type="submit" name="Apply Course" id="Apply Course" value="Apply Course" />
      <input type="submit" name="Delete" id="Delete" value="Delete" />
    </form></td>
  </tr>
</table>
</body>
</html>
