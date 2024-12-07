<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login Form</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>

<body style="background-image: url('${pageContext.request.contextPath}/img/BackgorundLogin.jpg'); background-size: cover; background-position:center; background-repeat: no-repeat;">




    <form method="POST" action="../ServletController">
  <div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card shadow-lg p-4 rounded-4" style="width: 400px; background-color: rgb(240, 241, 241);">
      <h4 class="text-center mb-4">Login</h4>
      <form>
       <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" id="username" name="username"  placeholder="Enter a username" required>
                </div>
        <div class="mb-3">
          <label for="password" class="form-label">Password</label>
          <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
         
          <a href="./setNewPass.jsp">Forgot Password</a>
        </div>
        
     
            
        <button type="submit" class="btn btn-primary w-100">Login</button>
        <input type="hidden" name="action" value="login">
       
        
      </form>
      <div class="mt-3 text-center">
        <p>Don't have an account? <a href="./register.jsp">Register here</a></p>
      </div>
      
                <% String error = request.getParameter("error");
            if (error != null && error.equals("1")) 
            { %>
                <p style="color: red;"><strong>Incorrect username or password. Please try again.</strong></p>
        <% } %>
        
        <% String rs = request.getParameter("registration");
            if(rs != null && rs.equals("success")) 
           { %>   		
                <p style="color:#228b22; text-align:center;"> <strong>Registration successful! Please login.</strong></p>
          <%} %>    
          
            <%
    
    String success = request.getParameter("message");
                		
                		if(success != null && success.equals("Update Successfully"))
                		 { %>
                         <p style="color: #228b22;"><strong>Your password has been updated successfully. Please login.</strong></p>
                 <% } %>


    
                 
    </div>
  </div>
</form>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>
