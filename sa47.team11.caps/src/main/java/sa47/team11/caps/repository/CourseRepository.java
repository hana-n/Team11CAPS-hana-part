package sa47.team11.caps.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import sa47.team11.caps.model.Course;

/*@Repository
@Transactional*/
public interface CourseRepository extends JpaRepository<Course,Integer> {
	/*@Query("SELECT r.courseName FROM Course r")
	List<String> getCourseName();*/
	
	@Query("SELECT r FROM Course r WHERE r.courseid=:courseId")
	Course getCoursebyId(@Param("courseId") int id);
	
	@Query(value = "select * from Course where NULLIF(assigned_lecturerID, ' ') IS NULL", nativeQuery = true)
	ArrayList<Course> findUnassignedCourses();
	
	@Query(value = "Select * from Course c where c.ASSIGNED_LECTURERID=:userid", nativeQuery = true)
	ArrayList<Course> findLecturerCourses(@Param("userid")Integer userid); 
	
	@Query("select c from Course c where c.courseid =:courseid")
	Course findCourse(@Param("courseid")Integer courseid);
	
	@Query(value = "select c.Assigned_lecturerID from Course c where courseid = :courseid", nativeQuery=true)
	Integer getLecturerID(@Param("courseid")Integer courseid);
	
}
