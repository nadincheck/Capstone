<%@page import="java.util.Base64.Encoder"%>
<%@page import="java.util.Base64"%>
<%@page import="java.security.SecureRandom"%>
<%@page language = "java" contentType = "text/html"%>
<%@page import = "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Zest || Confirmation</title>

        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="style.css">

        <style>

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
            }

            p {
                font-size: 18px;
                margin-top: 20px;
            }

            p:last-child {
                margin-bottom: 50px;
            }


            .container {
                background-color: #f2f2f2;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
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
        <div class="container">
            <header>
                <h1>Booking Confirmation</h1>
            </header>


            <p>Congratulations! You have successfully booked your next tutorial session.</p>
            <p>Your confirmation number is: 


                <%

                    String studentID = request.getParameter("studentID");
                    session.setAttribute("studentID", studentID);

                    String confirmationNumber = (String) session.getAttribute("confirmationNumber");
                    session.setAttribute("confirmationNumber", confirmationNumber);

                    try {

                        // Get the session ID and student ID from the previous page
                        int sessionID = Integer.parseInt(request.getParameter("sessionID"));

                        // Connect to the database
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/zest", "root", "admin");

                        // Retrieve the Confirmation Number  from the database
                        PreparedStatement stmt1 = con.prepareStatement("SELECT ConfirmationNumber FROM bookedSessions WHERE sessionID = ?");
                        stmt1.setInt(1, sessionID);
                        ResultSet rs = stmt1.executeQuery();
                        if (rs.next()) {
                            confirmationNumber = rs.getString("confirmationNumber");

                        }

                        // Display the confirmation details on the Confirmation.jsp page
                        request.setAttribute("ConfirmationNumber", confirmationNumber);
                        request.getRequestDispatcher("Confirmation.jsp").forward(request, response);

                        con.close();

                    } catch (Exception e) {
                        out.println(e);
                    }

                %>
            </p>
            <p>Have a great session!</p>
        </div>
        <footer class="w3-container w3-theme-d3 w3-padding-16">
            <h5>Footer</h5>
        </footer>

        <footer class="w3-container w3-theme-d5">
            <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
        </footer>


    </body>

</html>
