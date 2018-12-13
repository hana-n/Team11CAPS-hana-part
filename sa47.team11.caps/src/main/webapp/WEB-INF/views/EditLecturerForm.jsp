<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<h3>Edit Lecturer</h3>
	<form:form
		action="${pageContext.request.contextPath}/manageLecturer/edit/${user.userid}.html"
		method="POST" modelAttribute="user">
		<div>
			<label> <s:message code="label.lecturer.id" /></label>
			<form:input path="userid" class="form-control" disabled="true"/>
		</div>
		<div>
			<label> <s:message code="label.lecturer.firstMidName" /></label>
			<form:input path="firstMidName" class="form-control" required="required" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Please Enter FirstMid Name')"/>
		</div>
		<div>
			<label> <s:message code="label.lecturer.lastName" /></label>
			<form:input path="lastName" class="form-control" required="required" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Please Enter Last Name')"/>
		</div>
		<div>
			<label> <s:message code="label.lecturer.email" /></label>
			<form:input path="email" class="form-control" disabled="true"/>
		</div>
		<div>
			<label> <s:message code="label.lecturer.status" /></label></br>
			<form:radiobutton path="status" value="active" label="active"/>
			<form:radiobutton path="status" value="inactive" label="inactive"/>
		</div>
	 <form:button name="submit" class="btn btn-default" type="submit">Submit</form:button>
			<form:button name="reset" class="btn btn-default" type="reset">Reset</form:button></br>
		<a href="${pageContext.request.contextPath}/manageLecturer/list/">
			<s:message code="label.lecturer.lecturerList" />
		</a>
	</form:form>
</body>
</html>