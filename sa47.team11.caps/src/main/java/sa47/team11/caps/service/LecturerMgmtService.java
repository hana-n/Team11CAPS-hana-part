package sa47.team11.caps.service;

import java.util.ArrayList;

import org.springframework.data.repository.query.Param;

import sa47.team11.caps.model.Course;
import sa47.team11.caps.model.User;

public interface LecturerMgmtService {

	User findLecturerById(Integer userid);

	ArrayList<User> findAllLecturers();

	void createLecturer(String firstMidName, String lastName, String email, String password);

	void editLecturer(String firstMidName, String lastName, String status, Integer userid);

	//void removeLecturer(User l);

	ArrayList<Course> findLecturerCourses(Integer userid); 
	
	ArrayList<Course> findUnassignedCourses(); 
	
	Course assignCourse(User user, Integer courseid);
	
	Course removeAssignedLecturer(Integer courseid);
	
	Integer getLecturerID(Integer courseid);
	
}
