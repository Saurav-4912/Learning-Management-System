package com.techstreet.Helper;

import com.techstreet.Dao.*;
import com.techstreet.Entities.*;
//import com.techstreet.Controller.*;
import java.util.List;

public class StudentOperation {

	private static UserDao userdao = new UserDaoImpl();

//	 private static boolean isNullOrEmpty(String str) {
//	        return str == null || str.trim().isEmpty();
//	    }

	public static boolean userRegistration(Student student) {
		boolean status = false;
		if (student.getName() != null && !"".equals(student.getName()) && student.getEmail() != null
				&& !"".equals(student.getEmail()) && student.getPhone() != null && !"".equals(student.getPhone())
				&& student.getUsername() != null && !"".equals(student.getUsername()) && student.getPassword() != null
				&& !"".equals(student.getPassword())) {
			UserDao userdao = new UserDaoImpl();

			if (userdao.addUser(student)) {
				return true;
			} else {
				return false;
			}

		}

		return status;
	}

	public static boolean userLogin(Student student) {
		boolean status = false;

		if (student.getUsername() != null && !"".equals(student.getUsername()) && student.getPassword() != null
				&& !"".equals(student.getPassword())) {
			if (userdao.isValidUser(student)) {
				return true;
			} else {
				return false;
			}
		}
		return status;
	}

	public static boolean contactUs(UserHelp help) {
		boolean status = false;

		if (help.getName() != null && !"".equals(help.getName()) && help.getEmail() != null
				&& !"".equals(help.getEmail()) && help.getPhone() != null && !"".equals(help.getPhone())
				&& help.getMessage() != null && !"".equals(help.getMessage())) {
			if (userdao.userHelp(help)) {
				return true;
			} else {
				return false;
			}
		}

		return status;
	}

	public static boolean updateProfile(List<String> list) {
		boolean status = false;
//		 if (list != null && list.size() == 5 &&
//		            !isNullOrEmpty(list.get(0)) &&
//		            !isNullOrEmpty(list.get(1)) &&
//		            !isNullOrEmpty(list.get(2)) &&
//		            !isNullOrEmpty(list.get(3)) &&
//		            !isNullOrEmpty(list.get(4)))
		if (list != null && !"".equals(list) && list.get(0) != null && !"".equals(list.get(0)) && list.get(1) != null
				&& !"".equals(list.get(1)) && list.get(2) != null && !"".equals(list.get(2)) && list.get(3) != null
				&& !"".equals(list.get(3)) && list.get(4) != null && !"".equals(list.get(4))) {
			if (userdao.updateProfile(list)) {
				return true;
			} else {
				return false;
			}

		}
		return status;
	}

	public static boolean adminLogin(Admin admin) {

		boolean status = false;

		if (admin.getUsername() != null && !"".equals(admin.getUsername()) && admin.getPassword() != null
				&& !"".equals(admin.getPassword())) {
			if (userdao.adminLogin(admin)) {
				return true;
			} else {
				return false;
			}
		}
		return status;
	}

	public static boolean forgetPass(Student student) {

		boolean status = false;

		if (student.getPhone() != null && !"".equals(student.getPhone()) && student.getPassword() != null
				&& !"".equals(student.getPassword()) && student.getUsername() != null
				&& !"".equals(student.getUsername())) {
			if (userdao.forgetPass(student)) {
				return true;
			} else {
				return false;
			}
		}
		return status;
	}

	public static boolean deleteStudent(Student student) {
		boolean status = false;
		if (student.getPhone() != null && !"".equals(student.getPhone())) {
			if (userdao.deleteStudent(student)) {
				return true;
			} else {
				
				return false;
			}

		}else {
			System.out.println("AAA");
		}
		return status;
	}

	public static List<Student> getAllStudents() {
		return null;

	}

}
