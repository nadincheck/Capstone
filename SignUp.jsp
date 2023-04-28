<%-- 
    Document   : SignUp
    Created on : Apr 26, 2023, 9:05:04 AM
    Author     : brian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <title>Zest || Sign Up</title>

        <style>

            /* Background */
            body{
                background: linear-gradient(lightblue,lightgrey);

            }

            /* Main Divider */
            .primaryContainer{
                background-color: lightgrey;
                width:300px;
                height:300px;
                margin:5% auto 25% auto;
                border-radius: 25px;
            }

            /* Full-width input fields */
            input[type=text], input[type=password] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;
            }

            /* Add a background color when the inputs get focus */
            input[type=text]:focus, input[type=password]:focus {
                background-color: #ddd;
                outline: none;
            }

            /* Set a style for all buttons */
            button {
                background-color: #04AA6D;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
                opacity: 0.9;
            }

            button:hover {
                opacity:1;
            }

            /* Extra styles for the cancel button */
            .cancelbtn {
                padding: 14px 20px;
                background-color: #f44336;
            }

            /* Float cancel and signup buttons and add an equal width */
            .cancelbtn, .signupbtn {
                float: left;
                width: 50%;
            }

            /* Add padding to container elements */
            .container {
                padding: 16px;
            }

            /* The Modal (background) */
            .modal {
                display: none; /* Hidden by default */
                position: fixed; /* Stay in place */
                z-index: 1; /* Sit on top */
                left: 0;
                top: 0;
                width: 100%; /* Full width */
                height: 100%; /* Full height */
                overflow: auto; /* Enable scroll if needed */
                background-color: lightskyblue;
                padding-top: 50px;
            }

            /* Modal Content/Box */
            .modal-content {
                background-color: lightblue;
                margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
                border: 1px solid #888;
                width: 80%; /* Could be more or less, depending on screen size */
            }


            /* The Close Button (x) */
            .close {
                position: absolute;
                right: 35px;
                top: 15px;
                font-size: 40px;
                font-weight: bold;
                color: #f1f1f1;
            }

            .close:hover,
            .close:focus {
                color: #f44336;
                cursor: pointer;
            }

            /* Clear floats */
            .clearfix::after {
                content: "";
                clear: both;
                display: table;
            }

            /* Change styles for cancel button and signup button on extra small screens */
            @media screen and (max-width: 300px) {
                .cancelbtn, .signupbtn {
                    width: 100%;
                }
            }
        </style>

    </head>

    <body>



        <div class="primaryContainer">
            <div>
                <header class="w3-container" style="background-color: lightskyblue">
                    <span> 
                        <center>  <img src="ZestLogo1.png" alt="Logo"> </span><br/><br/> </center>
                        </div>
                        <center> 
                            <br>
                            <div>
                                <button onclick="document.getElementById('SignUp').style.display = 'block'" style="width:auto;">Sign Up</button>
                            </div>
                            <br>
                            <br>
                        </center>
                        </div>


                        <!-- User Sign Up -->
                        <div id="SignUp" class="modal">
                            <span onclick="document.getElementById('SignUp').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                            <form class="modal-content" method="Post" action="Proccess.jsp">
                                <div class="container">
                                    <h1>Sign Up</h1>
                                    <p>Please fill in this form to create an account.</p>
                                    <hr>

                                    <label><b>Last Name</b></label>
                                    <input type="text" name="Userlast" required>

                                    <label><b>First Name</b></label>
                                    <input type="text"  name="Userfirst" required>

                                    <label><b>Username</b></label>
                                    <input type="text" name="username" required>

                                    <label><b>Email</b></label>
                                    <input type="text" name="Useremail" required>

                                    <label><b>Password</b></label>
                                    <input type="password" name="Userpsw" >
                                    
                                    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

                                    <div class="clearfix">
                                        <button type="button" onclick="document.getElementById('SignUp').style.display = 'none'" class="cancelbtn">Cancel</button>
                                        <button type="submit" class="signupbtn">Sign Up</button>
                                    </div>
                                    <div id="message">
                                        <h3>Password must contain the following:</h3>
                                       <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
                                        <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
                                        <p id="number" class="invalid">A <b>number</b></p>
                                        <p id="length" class="invalid">Minimum <b>8 characters</b></p>
                                    </div>
                                     
                                        <form action ="login.jsp">
                                        <input type="hidden" id="studentID" name="studentID" value="<%= studentID %>">
                                        <input type="submit" id="submit" value="Submit">
</form>
                                   
                                 
                        </div>          

                        <script>
                            // Get the modal
                            var modal = document.getElementById('SignUp');

                            // When the user clicks anywhere outside of the modal, close it
                            window.onclick = function (event) {
                                if (event.target == modal) {
                                    modal.style.display = "none";
                                }
                            }
                        </script>


                        </body>
                        </html>
