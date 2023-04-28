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
        <title>JSP Page</title>
    </head>
    <body>
        <%
         String studentID = request.getParameter("studentID");
        session.setAttribute("studentID" , studentID);

try {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/zest", "root", "admin");

    // Check if the user has booked the session
    if (request.getParameter("sessionID") != null) {
        int sessionID = Integer.parseInt(request.getParameter("sessionID"));

        // Prepare the SQL statement to update the availability of the session
        PreparedStatement stmt = con.prepareStatement("UPDATE tutorialsessions SET availability = false WHERE sessionID = ?");
        stmt.setInt(1, sessionID);

        int rowsUpdated = stmt.executeUpdate();
        if (rowsUpdated > 0) {
            // Session was successfully booked, generate a confirmation number
            // Generate a random confirmation number           
            SecureRandom random = new SecureRandom();
            byte bytes[] = new byte[20];
            random.nextBytes(bytes);
            Encoder encoder = Base64.getUrlEncoder().withoutPadding();
            String confirmationNumber = encoder.encodeToString(bytes);

            // Retrieve booked session details from the database
            PreparedStatement stmt2 = con.prepareStatement("SELECT tutorName, Date, startTime, endTime  FROM tutorialsessions WHERE sessionID = ?");
            stmt2.setInt(1, sessionID);
            ResultSet rs = stmt2.executeQuery();

            if (rs.next()) {
                String tutorName = rs.getString("tutorName");
                String date = rs.getString("Date");
                String startTime = rs.getString("startTime");
                String endTime = rs.getString("endTime");

                // Store the booked session details into the bookedsessions table
                PreparedStatement stmt3 = con.prepareStatement("INSERT into bookedsessions (confirmationNumber, sessionID, studentID, tutorName, Date, startTime, endTime) VALUES (?, ?, ?, ?, ?, ?, ?)");
                stmt3.setString(1, confirmationNumber);
                stmt3.setInt(2, sessionID);
                stmt3.setString(3, studentID);
                stmt3.setString(4, tutorName);
                stmt3.setString(5, date);
                stmt3.setString(6, startTime);
                stmt3.setString(7, endTime);
                stmt3.executeUpdate();

                // Store the confirmation number in the session attribute and redirect to confirmation page
                session.setAttribute("confirmationNumber", confirmationNumber);
                response.sendRedirect("Confirmation.jsp");
            } else {
                // Session was not found or already booked, display an error message
                out.println("Sorry, the session could not be booked.");
            }
        } else {
            // Session was not found or already booked, display an error message
            out.println("Sorry, the session could not be booked.");
        }
    } else {
        // Session was not found, display an error message
        out.println("Sorry, the session could not be found.");
    }

    con.close();
} catch (Exception e) {
    out.println(e);
}
   
            
           
                      
            
      
%>

    </body>
</html>