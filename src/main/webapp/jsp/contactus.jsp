<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Courses</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
</head>
  <body >
     <%@ include file="navbar.jsp" %>
  <div style="padding-bottom: 120px;">
    <div class="pt-1 mx-auto" style="background-color: rgba(3, 32, 70, 0.13);">
        <div class=" pt-3 container jumbotron">
          <div class="card">
            <div class="card-header font-weight-bold" style="font-size: 18px;">
              Contact Us
            </div>
            
      
      
          <div class="container">
          <div class="row">
            <div class="col-md-6 col-sm-12 ">
      
              <div class="card-body">
                <h5 class="card-title">Office</h5>
                <p class="card-text pl-3">Vijay Complex, Second Floor, Sai Chowk, <br>Shivajinagar,Pune - 411003.</p>
              </div>
              
           
              <div class="card-body">
                <h5 class="card-title">Contact</h5>
                <p class="card-text pl-3 ">+91-1234564569 / +91-2589637415</p>
              </div>
      
      
              <div class="card-body">
                <h5 class="card-title">Mail </h5>
                <p class="card-text pl-3">techstreet2024@gmail.com<br>techstreet123@gmail.com</p>
              </div>
      
      
            </div>
    <div class="col-md-6 col-sm-12">
        <h5 class="card-title pt-3"  style="color: #050942;">Enquiry </h5>
        <form method="POST" action="../ServletController">
          <div class="form-group">
           <input type="text" name="fullname" class="form-control mb-4" placeholder="Your Full Name" required>
                  
                  <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email ID" required>
                  <small id="emailHelp" class="form-text text-muted pl-2" > We'll never share your email with anyone else.</small>
                  
                  <input type="number" name="phone" class="form-control mt-4" placeholder="Mobile Number" required>
                  <small id="emailHelp" class="form-text text-muted pl-2" > We'll never share your Contact with anyone else.</small>
                  
                  <textarea name ="message" class="form-control mt-4" id="exampleFormControlTextarea1" rows="3" placeholder="Your Message" required></textarea>
                 
                  
                  <div class="text-center"><button type="submit" class="btn btn-dark btn-sm btn-block mt-4 mb-5" >Submit</button>
                  <input type="hidden" name="action" value="contactus">
       <%
      String feedback = request.getParameter("feedback");
      if(feedback != null && feedback.equals("success"))
      {
      %>
          <p style="color: green;"> <strong>Response has been Saved Successfully, We will Contact with you Soon!!</strong></p>
   <% }%>
      
      <% 
          String error = request.getParameter("error");
    	  if(error!=null && error.equals("2"))
    	  { %>
              <p style="color: red;"> <strong>Problem : Unable to Save Information,  Please kindly Fill the Form Again..! </strong></p>
     
    	<% } %>  
     
                  
                  </div></div>
        </form>
      </div></div></div>
        
  </div>  <!--End of row of grid-->  
  </div>

  </div>
  </div> 
<%@ include file="footer.jsp"%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>