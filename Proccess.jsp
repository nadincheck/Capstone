<%-- 
    Document   : Proccess
    Created on : Apr 26, 2023, 10:18:39 AM
    Author     : brian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Process</title>
    </head>
    <body>
        
        <%
            //Saving info from sign up page
             // Get the form data
            String userLast = request.getParameter("Userlast");
            String userFirst = request.getParameter("Userfirst");
            String username = request.getParameter("username");
            String userEmail = request.getParameter("Useremail");
            String userPsw = request.getParameter("Userpsw");

            // Define the database connection details
            String jdbcUrl = "jdbc:mysql://localhost:3306/zest";
            String jdbcUsername = "root";
            String jdbcPassword = "admin";

            // Connect to the database
            Connection con = null;
            PreparedStatement stmt = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword);

                // Insert the user data into the database
                String sql = "INSERT INTO students (Studentlastname, studentfirstname, studentusername, studentemail, password) VALUES (?, ?, ?, ?, ?)";
                stmt = con.prepareStatement(sql);
                stmt.setString(1, userLast);
                stmt.setString(2, userFirst);
                stmt.setString(3, username);
                stmt.setString(4, userEmail);
                stmt.setString(5, userPsw);
                stmt.executeUpdate();

                // Redirect the user to the dashboard page
                response.sendRedirect("Login.jsp");
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                // Display an error message
                out.println("<p>An error occurred: " + e.getMessage() + "</p>");
            } finally {
                // Close the database connection and statement
                if (stmt != null) {
                    stmt.close();
                }
                
                if (con != null) {
                    con.close();
                }
            }
        %>
       
    </body>
</html>
