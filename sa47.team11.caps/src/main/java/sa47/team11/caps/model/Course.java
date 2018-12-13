package sa47.team11.caps.model;

import java.io.Serializable;
import javax.persistence.*;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.List;


/**
 * The persistent class for the course database table.
 * 
 */
@Entity
@NamedQuery(name="Course.findAll", query="SELECT c FROM Course c")
public class Course implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int courseid;

	@Column(name="CLASS_SIZE")
	private int classSize;

	@Column(name="COURSE_DESCRIPTION")
	private String courseDescription;

	@Column(name="COURSE_NAME")
	private String courseName;

	private int credit;

	@Temporal(TemporalType.DATE)
	@Column(name = "END_DATE")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date endDate;

	//@Temporal(TemporalType.TIMESTAMP)
	@Column(name="END_TIME")
//	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private String endTime;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="EXAM_TIME")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date examTime;

	@Column(name="NUMBER_REGISTERED")
	private int numberRegistered;

	@Temporal(TemporalType.DATE)
	@Column(name="START_DATE")
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Date startDate;

	//@Temporal(TemporalType.TIMESTAMP)
	@Column(name="START_TIME")
/*	@DateTimeFormat(pattern = "dd/MM/yyyy")*/
	private String startTime;

	private String weekday;

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="ASSIGNED_LECTURERID")
	private User user;

	//bi-directional many-to-one association to StudentEnrolment
	@OneToMany(mappedBy="course")
	private List<StudentEnrolment> studentEnrolments;

	public Course() {
	}

	public int getCourseid() {
		return this.courseid;
	}

	
	public Course(int courseid, int classSize, String courseDescription, String courseName, int credit, Date endDate,
String endTime, Date examTime, int numberRegistered, Date startDate, String startTime, String weekday
			) {
		super();
		this.courseid = courseid;
		this.classSize = classSize;
		this.courseDescription = courseDescription;
		this.courseName = courseName;
		this.credit = credit;
		this.endDate = endDate;
		this.endTime = endTime;
		this.examTime = examTime;
		this.numberRegistered = numberRegistered;
		this.startDate = startDate;
		this.startTime = startTime;
		this.weekday = weekday;
		
	}

	public void setCourseid(int courseid) {
		this.courseid = courseid;
	}

	public int getClassSize() {
		return this.classSize;
	}

	public void setClassSize(int classSize) {
		this.classSize = classSize;
	}

	public String getCourseDescription() {
		return this.courseDescription;
	}

	public void setCourseDescription(String courseDescription) {
		this.courseDescription = courseDescription;
	}

	public String getCourseName() {
		return this.courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public int getCredit() {
		return this.credit;
	}

	public void setCredit(int credit) {
		this.credit = credit;
	}

	public Date getEndDate() {
		return this.endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getEndTime() {
		return this.endTime;
	}

	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	public Date getExamTime() {
		return this.examTime;
	}

	public void setExamTime(Date examTime) {
		this.examTime = examTime;
	}

	public int getNumberRegistered() {
		return this.numberRegistered;
	}

	public void setNumberRegistered(int numberRegistered) {
		this.numberRegistered = numberRegistered;
	}

	public Date getStartDate() {
		return this.startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public String getStartTime() {
		return this.startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public String getWeekday() {
		return this.weekday;
	}

	public void setWeekday(String weekday) {
		this.weekday = weekday;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<StudentEnrolment> getStudentEnrolments() {
		return this.studentEnrolments;
	}

	public void setStudentEnrolments(List<StudentEnrolment> studentEnrolments) {
		this.studentEnrolments = studentEnrolments;
	}

	public StudentEnrolment addStudentEnrolment(StudentEnrolment studentEnrolment) {
		getStudentEnrolments().add(studentEnrolment);
		studentEnrolment.setCourse(this);

		return studentEnrolment;
	}

	public StudentEnrolment removeStudentEnrolment(StudentEnrolment studentEnrolment) {
		getStudentEnrolments().remove(studentEnrolment);
		studentEnrolment.setCourse(null);

		return studentEnrolment;
	}

}