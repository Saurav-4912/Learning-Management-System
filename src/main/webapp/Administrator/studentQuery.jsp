<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ include file="adminHome.jsp"%>
    <%@ page import="java.sql.*"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Techstreet Academy</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  <body>
   <div class="container" style="margin-top: 10px;">
		<h2 class="text-center mb-3">
			<Strong>Student Query</Strong>
		</h2>

	

		<div class="d-flex justify-content-center">
			<table
				class="table table-hover text-center w-75 table-info  table-sm table-bordered border-primary">
				<thead>
					<tr class="table-primary">

						<th scope="col">Name</th>

						<th scope="col">Email</th>
						<th scope="col">Phone Number</th>
						<th scope="col">Query</th>
						

						<!--  <th scope="col">Action</th> -->
					</tr>
				</thead>
				<tbody>
					<%
						Connection connection = null;
						PreparedStatement ps = null;
						ResultSet rs = null;
						String URL = "jdbc:postgresql://localhost:5432/techstreet";
						String USERNAME = "root";
						String PASSWORD = "root@123";

						
						try {
							Class.forName("org.postgresql.Driver");
							connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);

							ps = connection.prepareStatement("SELECT * FROM contact_us");

							rs = ps.executeQuery();

							boolean found = false;
							while (rs.next()) {
								found = true;
								String phone = rs.getString("phone");
					%>
					<tr id="row_<%=phone%>">

						<td><%=rs.getString("name")%></td>
						<td><%=rs.getString("email")%></td>
						<td><%=phone%></td>
						<td><%= rs.getString("message")%></td>
						<!--  <td>
							<button type="button" class="btn btn-danger" onclick="display('<%=phone%>')">Delete</button>
						</td>-->
					</tr>
					
					
					<%
					}
					} catch (Exception e) {
					e.printStackTrace();
					} finally {
					if (rs != null)
					try {
						rs.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					if (ps != null)
					try {
						ps.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					
					}
					%>
				</tbody>
			</table>
		</div>
	</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>