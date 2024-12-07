package com.techstreet.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.techstreet.Entities.Student;
import com.techstreet.Entities.UserHelp;
import com.techstreet.Entities.Admin;

import com.techstreet.Util.DbConnection;

public class UserDaoImpl implements UserDao {

	@Override
	public boolean addUser(Student student) {

		String query = "INSERT INTO student_info(name , email , phone , username , password)  VALUES (? , ? , ? ,? ,?)";
		try (Connection connection = DbConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(query))

		{
			ps.setString(1, student.getName());
			ps.setString(2, student.getEmail());
			ps.setString(3, student.getPhone());
			ps.setString(4, student.getUsername());
			ps.setString(5, student.getPassword());

			int value = ps.executeUpdate();
			return value > 0;
		} catch (SQLException e) {
			e.printStackTrace();

			return false;
		}

	}

	@Override
	public boolean isValidUser(Student student) {

		String query = "SELECT * FROM student_info WHERE username = ? AND password = ?";
		try (Connection connection = DbConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(query)) {
			ps.setString(1, student.getUsername());
			ps.setString(2, student.getPassword());

			ResultSet rs = ps.executeQuery();
			return rs.next();

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean userHelp(UserHelp help) {

		String query = "INSERT INTO contact_us(name , email , phone , message) VALUES (? , ? , ? , ?)";
		try (Connection connection = DbConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(query)) {
			ps.setString(1, help.getName());
			ps.setString(2, help.getEmail());
			ps.setString(3, help.getPhone());
			ps.setString(4, help.getMessage());

			int status = ps.executeUpdate();
			return status > 0;

		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean updateProfile(List<String> list) {
		String query = ("UPDATE student_info SET name = ? , email = ?  , username = ? , password = ? where  phone = ?");

		// Extract parameters from the list
		String name = list.get(0);
		String email = list.get(1);
		String phone = list.get(2);
		String username = list.get(3);
		String password = list.get(4);

		try (Connection connection = DbConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(query)) {
			ps.setString(1, name);
			ps.setString(2, email);

			ps.setString(3, username);
			ps.setString(4, password);
			ps.setString(5, phone);

			int status = ps.executeUpdate();
			return status > 0;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean adminLogin(Admin admin) {

		String query = "SELECT admin.username , admin.password from admin where username = ? AND password = ?";
		try (Connection connection = DbConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(query)) {

			ps.setString(1, admin.getUsername());
			ps.setString(2, admin.getPassword());

			ResultSet rs = ps.executeQuery();
			return rs.next();

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean forgetPass(Student student) {
		String query = "UPDATE student_info SET password = ? WHERE phone = ? AND username = ?";

		try (Connection connection = DbConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(query)) {

			ps.setString(1, student.getPassword());
			ps.setString(2, student.getPhone());
			ps.setString(3, student.getUsername());

			int status = ps.executeUpdate();

			return status > 0;

		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	@Override
	public boolean deleteStudent(Student student) {
		String query = "DELETE FROM student_info WHERE phone = ?";
		try(Connection connection = DbConnection.getConnection();
				PreparedStatement ps = connection.prepareStatement(query)){
			
			System.out.println("Database connection successful");
			ps.setString(1, student.getPhone());
			System.out.println("Executing query: " + ps.toString()); //For Debugging
			
			int status = ps.executeUpdate();
			
			if(status == 1) {
				return true;
			}else {
				return false;
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		
		
		
	}

//	@Override
//	public boolean refreshStd(List<Student> A) {
//		String query = "SELECT * FROM student_info";
//		
//		
//		List<Student> L = new ArrayList<>();
//		try(Connection connection = DbConnection.getConnection();
//				PreparedStatement ps = connection.prepareStatement(query)){
//			
//			ResultSet rs = ps.executeQuery();
//			
//			while(rs.next()) {
//				String name = rs.getString(1);
//				String email = rs.getString(2);
//				String phone = rs.getString(3);
//				String username = rs.getString(4);
//				String password = rs.getString(5);
//				
//				Student ob = new Student(name , email , phone , username , password);
//				L.add(ob);
//				
//				
//			}
//			
//			A.addAll(L);
//			
////			 if (!A.isEmpty()) {
////		            System.out.println("List of Students:");
////		            for (Student student : A) {
////		                System.out.println("Name: " + student.getName() +
////		                                   ", Email: " + student.getEmail() +
////		                                   ", Phone: " + student.getPhone() +
////		                                   ", Username: " + student.getUsername() +
////		                                   ", Password: " + student.getPassword());
////		            }
////		        }
//			
//			
//			 return !A.isEmpty();
//			
//		}catch(Exception e) {
//			e.printStackTrace();
//		
//		}
//		return false;
//	}
//	
//	public boolean deleteStduent() {
//		
//		
//		return false;
//	}

}
