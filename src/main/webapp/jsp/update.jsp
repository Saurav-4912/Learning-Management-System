<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
    

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    
</head>
<body>
<%@ include file ="navbar.jsp" %>
<%

Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;
HttpSession Session2 = null;

String URL = "jdbc:postgresql://localhost:5432/techstreet";
String USERNAME = "root";
String PASSWORD = "root@123";

try
{
	 Class.forName("org.postgresql.Driver");
	 con = DriverManager.getConnection("jdbc:postgresql://localhost/techstreet","root","root@123");
	 ps = con.prepareStatement("SELECT *  FROM student_info WHERE username=?");
	 
	 Session2 = request.getSession(false);
	 
	 if(Session2!=null && Session2.getAttribute("username")!=null)
	 {
		 String username = (String) Session2.getAttribute("username");
	 
	     ps.setString(1, username);
	     
	     rs = ps.executeQuery();
	 
        if(rs.next())
        {
%><section id="contactt">
    <div class="container">
        <div class="row justify-content-center">
            <!-- Add Job Form -->
            <div class="col-md-6 col-sm-12">
                <h2 class="text-center mb-4">Update Profile</h2>
                <form id="contactt-form" role="form" action="../ServletController" method="post" style="border: 2px solid #333; padding: 20px; border-radius: 8px; box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);">
                    <!-- Full Name -->
                    <!-- Full Name -->
                    <div class="mb-3">
                        <label for="fullname" class="form-label">Full Name</label>
                        <input type="text" id="fullname" name="fullname" 
                               class="form-control" 
                               value="<%= rs.getString(1) %>" 
                               aria-describedby="fullnameHelp" >
                    </div>
                    
                    <!-- Email -->
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" id="email" name="email" 
                               class="form-control" 
                               value="<%= rs.getString(2) %>" 
                               aria-describedby="emailHelp" >
                    </div>
                    
                    <!-- Contact No -->
                    <div class="mb-3">
                        <label for="phone" class="form-label">Contact No</label>
                        <input type="text" id="phone" name="phone" 
                               class="form-control" 
                               value="<%= rs.getLong(3) %>" 
                               readonly>
                    </div>
                    
                    <!-- Username -->
                    <div class="mb-3">
                        <label for="username" class="form-label">Username</label>
                        <input type="text" id="username" name="username" 
                               class="form-control" 
                               value="<%= rs.getString(4) %>" 
                               >
                    </div>
                    
                    <!-- Password -->
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" id="password" name="password" 
                               class="form-control" 
                               placeholder="<%= "******" %>" 
                               >
                    </div>
                    
                    <!-- Submit Button -->
                    <div class="text-center">
                        <input type="hidden" name="action" value="updateprofile">
                        <button type="submit" class="btn btn-primary btn-lg" onclick="return validateField();">
                            Update
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<%
             }    
            else
            {
	             out.println("No user found with the provided username.");
            }
    	 }
    	 else
         {
             out.println("UserName not found. Please log in.");
         }
     }
     catch(Exception e)
     {
    	 e.printStackTrace();
    	 out.println("An Error Occured in the System ..!");
     }
     finally
     {
    	 try
    	 {
    	     if(con!=null)
    	     {
    	     	 con.close();
    	     }
    	     if(rs!=null)
    	     {
    	     	 rs.close();
    	     }
    	 }
    	 catch(Exception e)
    	 {
    		e.printStackTrace(); 
    	 }
     }
%>

								  
						
 <%@ include file="footer.jsp"%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

