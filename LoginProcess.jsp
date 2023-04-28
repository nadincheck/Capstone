<%-- 
    Document   : LoginProcess
    Created on : Apr 26, 2023, 10:53:55 AM
    Author     : brian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            // Check if the user has submitted the login form
            if (request.getParameter("loginbtn") != null) {
                String username = request.getParameter("Username");
                String password = request.getParameter("password");
 
                try {
                    // Set up the database connection
                    String jdbcUrl = "jdbc:mysql://localhost:3306/zest";
                    String jdbcUsername = "root";
                    String jdbcPassword = "admin";

                    // Connect to the database
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    Connection connection = DriverManager.getConnection(jdbcUrl, jdbcUsername, jdbcPassword);

                    // Prepare the SQL statement to retrieve the user credentials
                    String sql = "SELECT * FROM students WHERE studentusername = ? AND password = ?";
                    
                    PreparedStatement statement = connection.prepareStatement(sql);
                    statement.setString(1, username);
                    statement.setString(2, password);
                    

                    // Execute the query and check if the result set is not empty
                    ResultSet resultSet = statement.executeQuery();
                    boolean isAuthenticated = resultSet.next();

                    // Redirect to the dashboard page if the user is authenticated
                    if (isAuthenticated) {
            
                    int studentID = resultSet.getInt("studentID");
                    session = request.getSession(false);
                    session.setAttribute("studentID", studentID);
                 
                        response.sendRedirect("Dashboard.jsp");
                    } else {
                        // Display an error message if the user is not authenticated
                        out.println("<p style='color:red;'>Invalid username or password</p>");
                    }
                    
                    // Close the database connection and return the authentication result
                    resultSet.close();
                    statement.close();
                    connection.close();
                    
                } catch (SQLException | ClassNotFoundException e) {
                    e.printStackTrace();
                }
            }
        %>
    </body>
</html>
