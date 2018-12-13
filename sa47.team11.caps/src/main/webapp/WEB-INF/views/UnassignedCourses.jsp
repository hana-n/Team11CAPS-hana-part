<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<h3>Unassigned Courses</h3>
	
        <table class="table">
		<tr>
			<th><s:message code="label.course.id" /></th>
			<th><s:message code="label.course.name" /></th>
		</tr>
		<c:forEach var="course" items="${unassignedCourseList}" varStatus="status">
			<tr>
				<td>${course.courseid}</td>
				<td>${course.courseName}</td>
				
			<td><a href="${pageContext.request.contextPath}/manageLecturer/courses/assign/${course.courseid}.html"> <s:message
			code="label.course.assign" /></a>	</td>
			</tr>
				<td>
		</c:forEach>
	</table>
	 <a
			href="${pageContext.request.contextPath}/manageLecturer/list"> <s:message
					code="label.lecturer.lecturerList" /></a>
			

</body>
</html>