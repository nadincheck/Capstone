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
                padding: 0px;
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

            <span> <img src="ZestLogo1.png" alt="" style="height:120px"/> </header> <center><h1>   About Us </h1>  </center>    </span>

</header>

<div class:"wrapper">

    <div class:"wrapper">
        <div class="container">
            <div id="about-text">

                <p>Zest is a tutorial booking system designed to facilitate tutorial sessions between students and tutors. Our mission is to make tutors and tutorial sessions available and accessible to students. Our goal to ensure and enhance continuous learning outside of the classroom with the help of tutors.
                    <br> 
                    Zest is here to help application development students accomplish their academic goals and experience desired success. Our tutors are a handful of carefully selected student peers who are dedicated to assist students as they develop and practice programming skills.
                    <br> 
                    We understand that developing coding skills is like a learning a second language and this can be very challenging.In addition,instructors are not always available outside of the classroom.
                    <br>
                    Our web application is designed to be user friendly and ease user's interaction with the different functions and features. 
                    <br> 
                    Students can book a session with a tutor based on their schedule. Students get to communicate with their tutors via email and they can meet with their tutors online. 
                    <br>
                    Students' satisfaction and success is our priority. We are always open to feedback and ways of improving our system to elevate the students experience. 
                </p>
            </div>
        </div>

        <center>
            <div>          
                <h2>Our Developers</h2>

                <p>Brian Fongyen, Nadine Check, Tenzin Namsel.</p>
            </div>
        </center>

        <center>
            <div id="feedback-form">
                <h2>Feedback</h2>
                <p>We love to hear from you.<br>
                    Please tell us about your tutorial experience:</p>
                <form action="AboutUs.jsp" >
                    <label for="feedback"></label>
                    <textarea id="feedback" name="feedback" placeholder="Enter your feedback here..." rows="4" required></textarea>
                    <input type="submit" value="Submit">
                </form>
        </center>                
    </div>
    
           
    <div id="feedback-text">
        
            <ul>
                <%=request.getParameter("feedback")%>
                <!--
                <c:forEach items="${feedbackList}" var="feedback">
                    <li>${feedback}</li>
                </c:forEach>-- comment -->
            </ul>
    </div>

<footer class="w3-container w3-theme-d3 w3-padding-16">
         
        </footer>

        <footer class="w3-container w3-theme-d5">
            <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>



</body>
</html>
