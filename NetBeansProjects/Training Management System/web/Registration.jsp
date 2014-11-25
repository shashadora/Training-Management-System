<%-- 
    Document   : Registration
    Created on : Nov 25, 2014, 9:20:15 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Dashboard">
        <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

        <title>Registration</title>

        <!-- Bootstrap core CSS -->
        <link href="css/bootstrap.css" rel="stylesheet">
        <!--external css-->
        <link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
        
        <!-- Custom styles for this template -->
        <link href="css/style.css" rel="stylesheet">
        <link href="css/style-responsive.css" rel="stylesheet">
    </head>
    <body>
         <div class="container">
    <div class="row">
         <form method="post" action="register.jsp">
            <div class="col-lg-6">
                <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Required Field</strong></div>
                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="firstName" id="firstName" placeholder="First Name" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastName">Last Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="lastName" id="lastName" placeholder="Last Name" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email">Enter Email</label>
                    <div class="input-group">
                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="uName">Username</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="uName" id="uName" placeholder="Username" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <div class="input-group">
                        <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-primary pull-right">
                <input type="reset" name="reset" id="reset" value="Reset" class="btn btn-success pull-right">
            </div>
        </form>
    </div>
    </div>
    </body>
</html>
