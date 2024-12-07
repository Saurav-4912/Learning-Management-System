<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%@ include file ="navbar.jsp" %>
<%

Connection con = null;
PreparedStatement ps = null;
ResultSet rs = null;

String URL = "jdbc:postgresql://localhost:5432/techstreet";
String USERNAME = "root";
String PASSWORD = "root@123";

try{
	
	Class.forName("org.postgresql.Driver");
	
	con = DriverManager.getConnection(URL , USERNAME , PASSWORD);
	
    ps = con.prepareStatement("SELECT * FROM student_info WHERE username=?");
    
    HttpSession session2= request.getSession(false);
    
    if (session != null && session2.getAttribute("username") != null)
    {
        String username = (String) session2.getAttribute("username");
        
        
        ps.setString(1 , username);
        
        rs = ps.executeQuery();
        
        if(rs.next()){
        	
        	%>
        	            <table class="table table-hover border border-4 form-control border-black" style="width : 50%; margin-top : 40px; margin-left:400px;">
                <tr>
                    <th width="30%">Name</th>
                    <td width="2%"><strong>:</strong></td>
                    <td><%= rs.getString(1) %></td>
                </tr>
                <tr>
                    <th width="30%">Email</th>
                    <td width="2%"><strong>:</strong></td>
                    <td><%= rs.getString(2) %></td>
                </tr>
                <tr>
                    <th width="30%">Phone Number</th>
                    <td width="2%"><strong>:</strong></td>
                    <td><%= rs.getString(3) %></td>
                </tr>
                <tr>
                    <th width="30%">User Name</th>
                    <td width="2%"><strong>:</strong></td>
                    <td><%= rs.getString(4) %></td>
                </tr>
                <tr>
                    <th width="30%">Password</th>
                    <td width="2%"><strong>:</strong></td>
                    <td><%= "*****" %></td>
                </tr>
            </table>
        	<% 
        	
        }else {
        	out.println("No user found");
        }
    } else {
        out.println("Session not found. Please log in.");
    }
} catch (Exception e) {
    e.printStackTrace();
    out.println("An error occurred. Please try again later.");
} finally {
    // Close the ResultSet, PreparedStatement, and Connection
    try {
        if (rs != null) rs.close();
        if (ps != null) ps.close();
        if (con != null) con.close();
    } catch (Exception e) {
        e.printStackTrace();  // This could be further improved with a logging mechanism
    }
}

%>
    
 <%@ include file="footer.jsp"%>
    
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>