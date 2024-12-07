<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Assignment</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>
  
   <%@ include file="navbar.jsp" %>
    <!-- Assignment Submission Form -->
    <div class="container d-flex justify-content-center align-items-center mt-2 " >
        <div class="card shadow-lg p-4 rounded-4 scrollable-card" style="width: 400px; background-color: rgb(240, 241, 241);">
            <h4 class="text-center mb-4">Assignment Submission</h4>
            <form method="POST" action="">
                <div class="mb-3">
                    <label for="fullName" class="form-label">Student Name</label>
                    <input type="text" class="form-control" id="fullName" placeholder="Enter your name" required>
                </div>

                <div class="mb-3">
                    <label for="batchName" class="form-label">Batch Name</label>
                    <input type="text" class="form-control" id="batchName" placeholder="Enter batch name" required>
                </div>

                <div class="mb-3">
                    <label for="phone" class="form-label">Phone Number</label>
                    <input type="tel" class="form-control" id="phone" placeholder="Enter your phone number" required>
                </div>

                <div class="mb-3">
                    <label for="assignmentFile" class="form-label">Upload Assignment</label>
                    <input type="file" class="form-control" id="assignmentFile" name="assignmentFile" required>
                </div>

                <button type="submit" class="btn btn-primary w-100">Submit Assignment</button>
            </form>
        </div>
    </div>

   <%@ include file="footer.jsp"%>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>