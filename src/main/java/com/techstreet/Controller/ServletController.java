package com.techstreet.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


import com.techstreet.Entities.Admin;
import com.techstreet.Entities.Student;
import com.techstreet.Entities.UserHelp;
import com.techstreet.Helper.StudentOperation;
import com.techstreet.Dao.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/ServletController")
public class ServletController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static UserDao userdao = new UserDaoImpl();

	@SuppressWarnings({ "unlikely-arg-type", })
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		
		
		String action = request.getParameter("action");
		

		if (action != null && !"".equals(action)) {
			if (action.equals("registration")) {
				Student student = new Student();
				student.setName(request.getParameter("fullname"));
				student.setEmail(request.getParameter("email"));
				student.setPhone(request.getParameter("phone"));
				student.setUsername(request.getParameter("username"));
				student.setPassword(request.getParameter("password"));

				// UserDao ud = new UserDaoImpl();

				boolean status = StudentOperation.userRegistration(student);
				if (status != false && !"".equals(status)) {
					response.sendRedirect("jsp/login.jsp?registration=success");
				} else {
					response.sendRedirect("jsp/register.jsp?error=1");
				}
			} else if (action.equals("login")) {
				Student student = new Student();
				student.setUsername(request.getParameter("username"));
				student.setPassword(request.getParameter("password"));

				boolean status = StudentOperation.userLogin(student);
				if (status != false && !"".equals(action)) {

					HttpSession session = request.getSession();
					session.setAttribute("username", student.getUsername());
					response.sendRedirect("jsp/StudentHome.jsp");
				} else {

					response.sendRedirect("jsp/login.jsp?error=1");

				}
			} else if (action.equals("contactus")) {
				UserHelp help = new UserHelp();

				help.setName(request.getParameter("fullname"));
				help.setEmail(request.getParameter("email"));
				help.setPhone(request.getParameter("phone"));
				help.setMessage(request.getParameter("message"));

				boolean status = StudentOperation.contactUs(help);
				if (status != false && !"".equals(status)) {
					response.sendRedirect("jsp/contactus.jsp?feedback=success");
				} else {
					response.sendRedirect("jsp/contactus.jsp?error=2");
				}
			} else if (action.equals("updateprofile")) {
				String fullname = request.getParameter("fullname");
				String email = request.getParameter("email");
				String phone = request.getParameter("phone");
				String username = request.getParameter("username");
				String password = request.getParameter("password");

				// Check for missing parameters
				if (fullname == null || email == null || phone == null || username == null || password == null) {
					response.sendRedirect("jsp/update.jsp?msg=Missing required fields");
					return;
				}

				// Prepare list for update
				List<String> list = new ArrayList<>();
				list.add(fullname);
				list.add(email);
				list.add(phone);
				list.add(username);
				list.add(password);

				// Call updateProfile method
				boolean status = StudentOperation.updateProfile(list);

				// Redirect based on the status

				if (status) {
					HttpSession session2 = request.getSession(false);

					if (session2 != null) {
						session2.setAttribute("username", username);
					}
					response.sendRedirect("jsp/profile.jsp?msg=Data updated successfully");
				} else {
					response.sendRedirect("jsp/update.jsp?msg=Update failed");
				}

			} else if (action.equals("adminlogin")) {
				Admin admin = new Admin();
				admin.setUsername(request.getParameter("username"));
				admin.setPassword(request.getParameter("password"));

				boolean status = StudentOperation.adminLogin(admin);
				if (status != false && !"".equals(status)) {
					response.sendRedirect("Administrator/adminHome.jsp?login=Accepted");
				} else {
					response.sendRedirect("Administrator/adminlogin.jsp?error=2");
				}

//			} else if (action.equals("Refresh")) {
//
//				List<Student> L = new ArrayList<>();
////				List<String> A = new ArrayList<>();
////				String refresh = request.getParameter("action");
////				A.add(refresh);
//
//				boolean status = StudentOperation.refreshStudent(L);
//				if (status) {
//					request.setAttribute("listOfStudent", L);
//					request.getRequestDispatcher("Administrator/delete.jsp").forward(request, response);
//
//				}else {
//					
//				}
//			}
//			} else if(action.equals("Search")) {
//				String phone_number = request.getParameter("");
//			}
			}
		}else if("delete".equals(action)) {
			
			
			//String phone = (request.getParameter("phone"));
			//System.out.println("Phone parameter" + phone);
			
			Student student = new Student();
			student.setPhone(request.getParameter("phone"));
			
			boolean delete =  StudentOperation.deleteStudent( student);
			
			if (delete) {
			    response.getWriter().write("Deleted");
			} else {
			    response.getWriter().write("Failed");
			}
			
			}
		
		

	}
	
	

}
