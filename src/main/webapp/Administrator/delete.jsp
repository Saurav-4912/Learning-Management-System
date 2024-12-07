<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="adminHome.jsp"%>
<%@ page import="java.sql.*"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>


<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>

	<div class="container" style="margin-top: 10px;">
		<h2 class="text-center mb-3">
			<strong>Student Information</strong>
		</h2>

		<div class="mb-3 col-4 ms-auto">
			<form class="d-flex mt-3" role="search">
				<input class="form-control me-2" type="search" name="phone"
					value="<%=request.getParameter("phone") == null ? "" : request.getParameter("phone")%>"
					placeholder="Phone Number" aria-label="Search">
				<button class="btn btn-success me-2" type="submit" name="action"
					value="Search">Search</button>
				<button class="btn btn-success me-2" type="submit" name="action"
					value="Refresh">Refresh</button>
			</form>
		</div>

		<div class="d-flex justify-content-center">
			<table
				class="table table-hover text-center w-75 table-info  table-sm table-bordered border-primary">
				<thead>
					<tr class="table-primary">

						<th scope="col">Name</th>

						<th scope="col">Email</th>
						<th scope="col">Phone Number</th>
						<th scope="col">Username</th>
						<th scope="col">Password</th>
						<th scope="col">Action</th>

						<!--  <th scope="col">Action</th> -->
					</tr>
				</thead>
				<tbody>
					<%
					Connection con = null;
					PreparedStatement ps = null;
					ResultSet rs = null;
					String URL = "jdbc:postgresql://localhost:5432/techstreet";
					String USERNAME = "root";
					String PASSWORD = "root@123";

					String searchPhone = request.getParameter("phone");
					String refresh = request.getParameter("action");
					try {
						Class.forName("org.postgresql.Driver");
						con = DriverManager.getConnection(URL, USERNAME, PASSWORD);

						if (searchPhone != null && !"".equals(searchPhone)) {

							// This query for searchPhone number 
							ps = con.prepareStatement("SELECT * FROM student_info WHERE phone = ?");
							ps.setString(1, searchPhone);
						} else if (refresh != null && !"".equals(refresh)) {

							// This query to display all students
							ps = con.prepareStatement("SELECT * FROM student_info");
						} else {

							// This query to display all students
							ps = con.prepareStatement("SELECT * FROM student_info");
						}

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
						<td><%=rs.getString("username")%></td>
						<td><%=rs.getString("password")%></td>
						<td>
							<button type="button" class="btn btn-danger"
								onclick="display('<%=phone%>')">Delete</button>
						</td>
					</tr>
					<%
					}

					if (!found) {
					%>
					<tr>
						<td colspan="6" class="text-center">No records found for the
							phone number: <%=searchPhone%></td>
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
					if (con != null)
					try {
						con.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
					}
					%>
				</tbody>


			</table>

		</div>

	</div>
	<!--  container wala div -->


</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
</body>
</html>