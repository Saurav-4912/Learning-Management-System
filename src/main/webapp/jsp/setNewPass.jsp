<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Set New Password</title>

    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="../css/setPass.css">
     
</head>
<body>

    <div class="container  border border-dark rounded p-4 bg-white">
          
        <h2 class="text-center mb-4">Set New Password</h2>
        <form action="../ServletController" method="post">
            <div class="form-group">
                <label for="phonenumber">Enter Your Phone Number</label>
                <input type="text" class="form-control" id="phonenumber" name="phone" placeholder="Enter your phone number" required>
            </div>
            <div class="form-group">
                <label for="username">Enter Your Username</label>
                <input type="text" class="form-control" id="username" name="username" placeholder="Enter your Username" required>
            </div>
            <div class="form-group">
                <label for="confirmPassword">Set New Password</label>
                <input type="password" class="form-control" id="confirmPassword" name="newpassword" placeholder="Set New Password" required>
            </div>
            <button type="submit" class="btn btn-custom btn-block">Set Password</button>
            <input type="hidden" name="action" value="setPassword">
            <a href="login.jsp" class="btn btn-danger btn-block mt-3">Back to Login</a>
        </form>
          
      
    </div>
    
  <%String wrong = request.getParameter("message");
    
    if(wrong != null && wrong.equals("failed"))
     { %>
        <h6 style="color: red; text-align: center; font-weight: bold; padding-top: 10px; font-size: 16px; line-height: 1.5; margin: 20px auto; max-width: 600px;">
  We were unable to update your password. Please try again.
</h6>

        <% } %> 
    
    
    
    
  

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
