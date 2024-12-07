<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>OTP</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   <link rel="stylesheet" href="../css/forgotpassword.css"> 
</head>
  <body>
        <div class="forgot-password-container border border-black">
      <!-- Centered Forgot Password Image -->
      <img src="../img/otp.jpg" alt="Forgot Password">
      
      <!-- Forgot Password Heading -->
      <h2 class="h4">Enter OTP</h2>
      <p class="text-center text-muted">OTP will be sent your email address.</p>

      <!-- Forgot Password Form -->
      <form action="" method="post">
        <div class="mb-3">
          <label for="text" class="form-label">Enter your OTP</label>
          <input type="text" class="form-control"  name="otp"  required>
        </div>
        
        <!-- Submit Button -->
        <div class="d-grid">
          <button type="submit" class="btn btn-success">Verify OTP</button>
        </div>
      </form>
      
      
      <!-- Optional: Link back to login page -->
      
      
      
      
      <div class="text-center mt-4 d-grid">
  <a href="./forgotPassword.jsp" class="btn btn-danger text-decoration-none">Back </a>
</div>
</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>