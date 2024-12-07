<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LMS Homepage</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-image {
  /* The image used */
  background-image: url("../img/Homebg.jpg");
  
  /* Add the blur effect */
  filter: blur(8px);
  -webkit-filter: blur(8px);
  
  /* Full height */
  height: 100%; 
  
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

/* Position text in the middle of the page/image */
.bg-text {
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0, 0.4); /* Black w/opacity/see-through */
  color: white;
  font-weight: bold;
  border: 3px solid #f1f1f1;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  z-index: 2;
  width: 80%;
  padding: 20px;
  text-align: center;
}
</style>
</head>
<body>

<!-- Header Section -->
    <header class="bg-light py-3">
        <div class="container d-flex justify-content-between align-items-center">
            <h1 class="h3">Techstreet Acadamy</h1>
            <div>
            
            <!-- User registration -->
            <a href="register.jsp" class="btn btn-primary me-2">User Register</a>
                <!-- User Login -->
                <a href="login.jsp" class="btn btn-primary me-2">User Login</a>
                <!-- Admin Login -->
                <a href="../Administrator/adminlogin.jsp" class="btn btn-success">Admin Login</a>
            </div>
        </div>
    </header>


<div class="bg-image"></div>

<div class="bg-text">
  <h2>Welcome to 
                    TechStreet Academy</h2>
  <h1 style="font-size:50px">Learn, Grow, Succeed</h1>
  <p>Your gateway to enhanced learning</p>
</div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
