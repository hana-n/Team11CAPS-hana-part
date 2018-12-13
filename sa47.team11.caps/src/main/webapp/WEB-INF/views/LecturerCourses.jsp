<html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%-- <spring:url value="/css/simple.css" var="style"/>
<link rel="STYLESHEET" type="text/css" href="${style}" /> --%>


<body>

<p><label> <s:message code="label.lecturer.fullName" /></label> ${lecturer.firstMidName} ${lecturer.lastName} </p>
<p><label> <s:message code="label.lecturer.id" /></label> ${lecturer.userid} </p>

	<table class="table">
		<tr>
			<th><s:message code="label.course.id" /></th>
			<th><s:message code="label.course.name" /></th>
			<th><s:message code="label.course.startDate" /></th>
			<th><s:message code="label.course.endDate" /></th>
			<th><s:message code="label.course.weekday" /></th>
			<th><s:message code="label.course.startTime" /></th>
			<th><s:message code="label.course.endTime" /></th>
			<th><s:message code="label.course.examTime" /></th>
			<th></th>
		</tr>
		<c:forEach var="course" items="${lCourseList}" varStatus="status">
			<tr>
				<td>${course.courseid}</td>
				<td>${course.courseName}</td>
				<td><fmt:formatDate pattern="dd MMM yyyy" value="${course.startDate}"/></td>
				<td><fmt:formatDate pattern="dd MMM yyyy" value="${course.endDate}"/></td>
				<td>${course.weekday}</td>
				<td>${course.startTime}</td>
				<td>${course.endTime}</td>
				<td><fmt:formatDate pattern="dd MMM yyyy, hh:mm" value="${course.examTime}"/></td>
				<td><a
					href="${pageContext.request.contextPath}/manageLecturer/courses/delete/${course.courseid}.html">
						<s:message code="label.lecturer.unassign" />
				</a></td>
			</tr>
		</c:forEach>
	</table><a href="${pageContext.request.contextPath}/manageLecturer/list/"> <s:message
					code="label.lecturer.lecturerList" /></a>
</body>
</html>