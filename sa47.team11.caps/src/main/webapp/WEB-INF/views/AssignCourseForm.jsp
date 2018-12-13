
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<h3>Assign Lecturer to ${course.courseName}</h3>
	<form:form
		action="${pageContext.request.contextPath}/manageLecturer/courses/assign/${courseid}.html"
		method="POST" modelAttribute="user">
		<div>
			<label> <s:message code="label.lecturer.fullName" /></label>
			<form:select id="lecturerName" path="userid" class="form-control">
				<c:forEach var="lecturer" items="${lecturerList}">
					<form:option value="${lecturer.userid}">${lecturer.firstMidName} ${lecturer.lastName} </form:option>
				</c:forEach>
			</form:select>
		</div></br>
	 <form:button name="submit" class="btn btn-default" type="submit">Submit</form:button>
			<form:button name="reset" class="btn btn-default" type="reset">Reset</form:button>
		<br />
		<a
			href="${pageContext.request.contextPath}/manageLecturer/courses/unassigned">
			<s:message code="label.lecturer.lecturerList" />
		</a>
	</form:form>
</body>
</html>