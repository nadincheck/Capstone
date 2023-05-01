<%-- 
    Document   : AboutUs
    Created on : Apr 30, 2023, 8:23:52 PM
    Author     : nadin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="style.css">     
        <title>Zest || About Us</title>
        <style>
            body {
                font-family: Arial, sans-serif;
            }

            .wrapper{
                margin:10px, 10%, 10px, 10%;
                background:white;
                padding:40px;
                box-shadow:10px 10px 10px;
            }
            .container {
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .container {
                width: 80%;
                margin: 0 auto;
                text-align: center;
                padding: 20px;
            }

            header {
                background-color: #1a202c; /* Set header color to blue */
                color: #fff; /* Set text color to white */
                padding: 20px;
                text-align: center;
            }

            h1 {
                font-size: 36px;
                -top: 50px;
                text-align:center
            }

            p {
                font-size: 18px;
                margin-top: 20px;
            }

            #about-text {
                text-align: justify;
                margin: 50px;
            }
            #feedback-form {
                margin: 50px;
            }

            #feedback-text {
                margin: 50px;
                border: 1px solid #ccc;
                padding: 10px;
            }

            input[type=text], select, textarea {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }
            input[type=submit] {
                background-color: #4CAF50;
                color: white;
                padding: 12px 20px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
            input[type=submit]:hover {
                background-color: #45a049;
            }
            /* Footer styling */
            footer {
                background-color: #c0c0c0;
                padding: 20px;
                text-align: center;
            }

        </style>

    </head>
    <body>
        <header>

            <h1>About Us</h1>
        </header>
        
          <div class:"wrapper">
        <div class="container">

            <img src= "ZestLogo1.png" alt="Zest logo" width= "600" height = "300">

        </div>
        <div class:"wrapper">
            <div class="container">
                <div id="about-text">

                    <p> Zest is tutorial booking system designed to facilitate tutorial sessions between students and tutors. Zest is meant to support students to accomplish their academic goals and experience success. We do this by making tutorial sessions available and giving students access to tutors. Our tutors are carefully selected and dedicated to assist students with programming difficulties and challenges. We understand that learning to code can be very challenging and instructors are not always available outside of the classroom. Zest is designed to give students access to help with developing coding skills outside of the classroom. Students can book a session with a tutor at their convenience. Students get to communicate with their tutors via email and they can meet with their tutors online or in person. </p>
                    <p>Students' satisfaction and success is our priority. We are always open to feedback and ways of improving our system to elevate the students experience.  </p>
                </div>
            </div>

            <div id="feedback-form">
                <h2>Feedback</h2>
                <p>We love to hear from you.</p>
                <p>Please tell us about your tutorial experience:</p>
                <form action="AboutUs.jsp" method="post">
                    <label for="feedback">Your feedback:</label>
                    <textarea id="feedback" name="feedback" placeholder="Enter your feedback here..." rows="4" required></textarea>
                    <input type="submit" value="Submit">
                </form>

            </div>
            <div id="feedback-text">
                <h2>Feedback from Students</h2>
                <ul>
                    <c:forEach items="${feedbackList}" var="feedback">
                        <li>${feedback}</li>
                    </c:forEach>
                </ul>
            </div>
        </div>

        <footer class="w3-container w3-theme-d3 w3-padding-16">
            <h5>Footer</h5>
        </footer>

        <footer class="w3-container w3-theme-d5">
            <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
        </footer>
    </body>
</html>
