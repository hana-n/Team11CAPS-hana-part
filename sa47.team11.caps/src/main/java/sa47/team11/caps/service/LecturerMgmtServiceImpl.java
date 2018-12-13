package sa47.team11.caps.service;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sa47.team11.caps.model.Course;
import sa47.team11.caps.model.User;
import sa47.team11.caps.repository.CourseRepository;
import sa47.team11.caps.repository.UserRepository;

@Service
public class LecturerMgmtServiceImpl implements LecturerMgmtService {
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private CourseRepository courseRepository;

	@Override
	public ArrayList<User> findAllLecturers() {
		ArrayList<User> lecturerList = (ArrayList<User>)userRepository.findAllLecturers();
		return lecturerList;
	}

	@Override
	public User findLecturerById(Integer userid) {
		User l = userRepository.findLecturerById(userid);
		return l;
	}

	@Transactional
	@Override
	public void createLecturer(String firstMidName, String lastName, String email, String password) {
		userRepository.createLecturer(firstMidName, lastName, email, password);
	}

	@Override
	@Transactional
	public void editLecturer(String firstMidName, String lastName, String status, Integer userid) {
		userRepository.editLecturer(firstMidName, lastName, status, userid);
	}

//	@Override
//	public void removeLecturer(User l) {
//		userRepository.delete(l);
//	}

	@Override
	public ArrayList<Course> findLecturerCourses(Integer userid) {
		ArrayList<Course> lCourseList = (ArrayList<Course>) courseRepository.findLecturerCourses(userid);
		return lCourseList;
	}

	@Override
	public ArrayList<Course> findUnassignedCourses() {
		ArrayList<Course> unassignedCourseList = (ArrayList<Course>)courseRepository.findUnassignedCourses();
		return unassignedCourseList;
	}

	@Override
	public Course assignCourse(User user, Integer courseid) {
		Course c = courseRepository.findCourse(courseid);
		c.setUser(user);
		return courseRepository.saveAndFlush(c);
	}

	@Override
	public Course removeAssignedLecturer(Integer courseid) {
		Course c = courseRepository.findCourse(courseid);
		c.setUser(null);
		return courseRepository.saveAndFlush(c);
	}
	
	@Override
	public Integer getLecturerID(Integer courseid) {
		return courseRepository.getLecturerID(courseid);
	}
	

}
