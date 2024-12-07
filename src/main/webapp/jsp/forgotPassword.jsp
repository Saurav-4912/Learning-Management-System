<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link rel="stylesheet" href="../css/forgotpassword.css">
  </head>

  <body>

    <div class="forgot-password-container border border-black">
      <!-- Centered Forgot Password Image -->
      <img src="../img/forgot.jpg" alt="Forgot Password">
      
      <!-- Forgot Password Heading -->
      <h2 class="h4">Forgot Your Password?</h2>
      <p class="text-center text-muted">Enter your email address below and we'll send you instructions to reset your password.</p>

      <!-- Forgot Password Form -->
      <form action="" method="post">
        <div class="mb-3">
          <label for="email" class="form-label">Enter your email address</label>
          <input type="email" class="form-control" id="email" name="email"  required>
        </div>
        
        <!-- Submit Button -->
        <div class="d-grid">
          <button type="submit" class="btn btn-success">Get OTP</button>
        </div>
      </form>
      
      
      <!-- Optional: Link back to login page -->
      
      
      
      
      <div class="text-center mt-4 d-grid">
  <a href="./login.jsp" class="btn btn-danger text-decoration-none">Back to Login</a>
</div>
</div>

    <!-- Bootstrap 5 JS (Optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>
