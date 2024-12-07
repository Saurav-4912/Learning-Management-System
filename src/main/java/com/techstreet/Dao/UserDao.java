package com.techstreet.Dao;

import java.util.List;

import com.techstreet.Entities.Student;
import com.techstreet.Entities.UserHelp;
import com.techstreet.Entities.Admin;

public interface UserDao {

	boolean addUser(Student student);

	boolean isValidUser(Student student);

	boolean userHelp(UserHelp help);

	boolean updateProfile(List<String> list);

	boolean adminLogin(Admin admin);

	boolean forgetPass(Student student);

	boolean deleteStudent(Student student);

}
