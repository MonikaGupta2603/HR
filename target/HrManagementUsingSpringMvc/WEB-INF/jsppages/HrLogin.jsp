<%--
  Created by IntelliJ IDEA.
  User: monikagupta02
  Date: 15-06-2021
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">

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

        input[type=text], input[type=password] {
            width: 50%;
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 2px;
            resize: vertical;
            max-width: 280px;
        }



        fieldset.scheduler-border {
            border: 3px groove #ddd !important;
            padding: 0 1.4em 1.4em 1.4em !important;
            margin: 0 0 0 0 !important;
            -webkit-box-shadow:  0px 0px 0px 0px #000;
            box-shadow:  0px 0px 0px 0px #000;
        }

        legend.scheduler-border {
            width:inherit; /* Or auto */
            padding:0 10px; /* To give a bit of padding on the left and right */
            border-bottom:none;
        }

    </style>
    <title> Employee </title>
</head>
<body>
<nav class="navbar"
     style="background-color:aliceblue; border: 2px solid #6AABD2;">

</nav>
<div class="d-md-flex h-100 form">
    <div class="container" style="align-content: center" >
        <form action="ValidateUser"  method="post">
            <fieldset class="scheduler-border">
                <legend class="scheduler-border">Login</legend>
                <div class="row form-group">
                    <div class="col-25">
                        <label for="username">User ID:</label>
                    </div>
                    <div class="col-75">
                        <input type="text" class="form-control" id="username"
                               name="username" pattern=".{5,50}" required>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-25">
                        <label for="password">Password:</label>
                    </div>
                    <div class="col-75">
                        <input type="password" class="form-control" id="password"
                               name="password" pattern=".{5,50}" required>
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col">
                        <button type="submit" class="btn btn-outline-info btn-light">Login</button>
                    </div>
                </div>
            </fieldset>
        </form>
        <div class="footer"
             style="position: fixed; width: 100%; bottom: 0; background-color:aliceblue; border: 2px solid #6AABD2;">
            <p></p>
        </div>

    </div>
</div>


<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>



</body>
</html>