package sa47.team11.caps.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import sa47.team11.caps.model.Course;
import sa47.team11.caps.repository.CourseRepository;

@Service
public class CourseServiceImpl implements CourseService {
	
	@Resource
	private CourseRepository courseRepository;
	
	@Override
	@Transactional
	public List<Course> getAllCourses() {
		List<Course> res = courseRepository.findAll();
		return res;
	}
	
	@Override
	@Transactional
	public Course getCoursebyId(int id) {
		Course res = courseRepository.getCoursebyId(id);
		return res;
	}
	
	@Override
	@Transactional
	public Course updateCourse(Course c) {
		try {
			return courseRepository.saveAndFlush(c);
		
		}catch(Exception e) {return null;}
	}
	/*@Override
	@Transactional
	public List<String> getCourseNames() {
		List<String> a =(List<String>) courseRepository.getCourseName();
		return a;
	}*/

}
