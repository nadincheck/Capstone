<%-- 
    Document   : Login
    Created on : Apr 26, 2023, 9:21:54 AM
    Author     : brian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Zest || Login</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">


        <style>

            body {
                background: linear-gradient(lightblue,lightgray);
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-size: cover;
            }

            .card-login {
                margin-top: 130px;
                padding: 18px;
                max-width: 30rem;
            }

            .card-header {
                color: #fff;
                font-family: sans-serif;
                font-size: 20px;
                font-weight: 600 !important;
                margin-top: 10px;
                border-bottom: 0;
            }

            .input-group-prepend span{
                width: 50px;
                background-color: lightblue;
                color: #fff;
                border:0 !important;
            }

            input:focus{
                outline: 0 0 0 0  !important;
                box-shadow: 0 0 0 0 !important;
            }

            .login_btn{
                width: 130px;
            }

            .login_btn:hover{
                color: #fff;
                background-color: lightblue;
            }

            .btn-outline-danger {
                color: #fff;
                font-size: 18px;
                background-color: #28a745;
                background-image: none;
                border-color: #28a745;
            }

            .form-control {
                display: block;
                width: 100%;
                height: calc(2.25rem + 2px);
                padding: 0.375rem 0.75rem;
                font-size: 1.2rem;
                line-height: 1.6;
                color: #28a745;
                background-color: transparent;
                background-clip: padding-box;
                border: 1px solid #28a745;
                border-radius: 0;
                transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
            }

            .input-group-text {
                display: -ms-flexbox;
                display: flex;
                -ms-flex-align: center;
                align-items: center;
                padding: 0.375rem 0.75rem;
                margin-bottom: 0;
                font-size: 1.5rem;
                font-weight: 700;
                line-height: 1.6;
                color: #495057;
                text-align: center;
                white-space: nowrap;
                background-color: #e9ecef;
                border: 1px solid #ced4da;
                border-radius: 0;
            }
        </style> 
    </head>
    
     

    <body>
          
        <div class="container">
            <div class="card card-login mx-auto text-center bg-dark">
                <div class="card-header mx-auto bg-dark">
                    <span> 
                        <img src="ZestLogo1.png" alt="Logo"> </span><br/><br/>
                    <span class="logo_title mt-5"> Login </span>

                </div>
                <div class="card-body">
                    <form action="LoginProcess.jsp" method="post">
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <input type="text" name="Username" class="form-control" placeholder="Username" required>
                        </div>

                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" name="password" class="form-control" placeholder="Password" required>
                        </div>

                        <div class="form-group">
                            <input type="submit" name="loginbtn" value="Login" class="btn btn-outline-danger float-right login_btn">
                        </div>
                        
                        
                             <form action="LoginProcess.jsp">
                                   <%!
                                   int studentID = -1;
                                   // Code to retrieve the last inserted studentID from the database
                                    // ...
                                     %>
                                    <input type="hidden" name="studentID" value="<%= studentID %>">
                            </form>
                                 
                        
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
