<%--
  Created by IntelliJ IDEA.
  User: monikagupta02
  Date: 18-06-2021
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Edit Employee Details</title>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        .col-25 {
            float: left;
            width: 20%;
        }

        .col-75 {
            float: left;
            width: 75%;
        }

        .md-textarea {
            width: 50%;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 2px;
            resize: vertical;
            max-width: 280px;
        }

        input[type=text], input[type=email] {
            width: 50%;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 2px;
            resize: vertical;
            max-width: 280px;
        }

        .form {
            align-content: center;
            margin-top: 25px;
        }

        fieldset.scheduler-border {
            border: 3px groove #ddd !important;
            padding: 0 1.4em 1.4em 1.4em !important;
            margin-top: 20px;
            -webkit-box-shadow: 0px 0px 0px 0px #000;
            box-shadow: 0px 0px 0px 0px #000;
        }

        legend.scheduler-border {
            width: inherit; /* Or auto */
            padding: 0 10px; /* To give a bit of padding on the left and right */
            border-bottom: none;
        }
    </style>
</head>
</style>
<body>
<nav class="navbar"
     style="background-color: aliceblue; border: 2px solid #6AABD2;">
		<span class="navbar-brand mb-0 h1"
              style="font-color: #6AABD2; font-size: 15px">Welcome!</span> <a href="logout">Logout</a>
</nav>
<div class="d-md-flex h-100">
    <div class="container-fluid" style="align-content: center;">
        <fieldset class="scheduler-border" >
            <legend class="scheduler-border">Employee Listings</legend>
        <form  class="form" id="Employeeform"  action="${pageContext.request.contextPath}/updateEmployee" >
            <div class="row form-group">
                <div class="col-25">
                    <label  for="code"class="col-form-label">EmployeeCode:</label>
                </div>
                <div class="col-75">
                    <input type="text"  class="form-control" id="code" name="employeecode" value="${employee.employeecode}" readonly>
            </div>
            </div>
            <div class="row form-group">
                <div class="col-25">
                <label for="name"class="col-form-label">EmployeeName:</label>
                </div>
                <div class="col-75">
                <input type="text" class="form-control" id="name" name="employeename" value="${employee.employeename}">
            </div>
            </div>

            <div class="row form-group">
                <div class="col-25">
                <label for="location"class="col-form-label">Location:</label>
                </div>
                <div class="col-75">
                <input type="text" class="form-control" id="location" name="location" value="${employee.location}">
            </div>
            </div>


            <div class="row form-group">
                <div class="col-25">
                <label  for="email"class="col-form-label">Email: </label>
                </div>
                <div class="col-75">
                <input type="email" class="form-control" id="email" name="email"value="${employee.email}">
            </div>
            </div>


            <div class="row form-group">
                <div class="col-25">
                <label  for="dateofbirth"class="col-form-label">Date of Birth:</label>
                </div>
                <div class="col-75">
                <input type="text" class="form-control" id="dateofbirth" name="dateofbirth" value="${employee.dateofbirth}">
            </div>
            </div>

            <div class="row form-group">
                <div class="col">
                    <button type="submit" class="btn btn-success" id="submit">Save</button>
                    <button type="button" class="btn btn-primary" onclick="window.history.back();">Cancel</button>
                </div>
            </div>
        </form>
        </fieldset>
    </div>
</div>

<div class="footer"
     style="position: fixed; width: 100%; bottom: 0; background-color: aliceblue;">
    <p></p>
</div>
</body>
</html>