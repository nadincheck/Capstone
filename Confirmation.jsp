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
            
                .container{
               width: 80%;
            margin: 0 auto;
             justify-content: center;
            padding: 20px;
            }
            
	
		/* Centering the information */
		.Confirmation Details {
			display: flex;
			align-items: center;
			justify-content: center;
			margin: 20px 0;
		}
                
                .confirmation-label {
			font-weight: bold;
			margin-right: 10px;
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
                      
                      <%
                    
                       String studentID = request.getParameter("studentID");
                       session.setAttribute("studentID" , studentID);
                       
                       String confirmationNumber = request.getParameter("confirmationNumber");
                       session.setAttribute("confirmationNumber" , confirmationNumber);
                        
                       try {  
                       
                        // Get the session ID and student ID from the previous page
                        int sessionID = Integer.parseInt(request.getParameter("sessionID"));
                       
                        // Connect to the database
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/zest", "root", "admin");
                       
                        // Retrieve the session details from the database
                        PreparedStatement stmt1 = con.prepareStatement("SELECT ConfirmationNumber, tutorName, Date, startTime, endTime  FROM tutorialsessions WHERE sessionID = ?");
                        stmt1.setInt(1, sessionID);
                        ResultSet rs = stmt1.executeQuery();
                        rs.next();
                        String tutorName = rs.getString("tutorName");
                        String date = rs.getString("Date");
                        String startTime = rs.getString("startTime");
                        String endTime = rs.getString("endTime");
                        
                      // Display the confirmation details on the Confirmation.jsp page
                      request.setAttribute("ConfirmationNumber", confirmationNumber);
                      request.setAttribute("sessionID", sessionID);
                      request.setAttribute("tutorName", tutorName);
                      request.setAttribute("date", date);
                      request.setAttribute("startTime", startTime);
                      request.setAttribute("endTime", endTime);
                      request.getRequestDispatcher("Confirmation.jsp").forward(request, response);

                     %>
        
        <div class="container">
         
        <div class="Confirmation Details">
            <span class="confirmation-label">Confirmation Number:</span>
            <span><%= rs.getInt("confirmationNumber") %></span>
        </div>
            
	<div class="Confirmation Details">
            <span class="confirmation-label">Session ID:</span>
            <span><%= rs.getInt("sessionID") %></span>
         </div>       
              
        <div class="Confirmation Details">
            <span class="confirmation-label">Tutor's Name:</span>
            <span><%= rs.getString("tutorName") %></span>
        </div>

        <div class="Confirmation Details">
            <span class="confirmation-label">Date:</span>
            <span><%= rs.getString("Date") %></span>
        </div>

        <div class="Confirmation Details">
            <span class="confirmation-label">Start Time:</span>
            <span><%= rs.getString("startTime") %></span>
        </div>

        <div class="Confirmation Details">
            <span class="confirmation-label">End Time:</span>
            <span><%= rs.getString("endTime") %></span>
        </div>
                
    <%
                            
        con.close();
                            
      
                        } catch (Exception e) {
                            out.println(e);
                        }

                    %>
       
<footer class="w3-container w3-theme-d3 w3-padding-16">
            <h5>Footer</h5>
        </footer>

        <footer class="w3-container w3-theme-d5">
            <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
        </footer>


    </body>
    
</html>
