<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<h3>Add New Lecturer</h3>
	<form:form
		action="${pageContext.request.contextPath}/manageLecturer/create"
		method="POST" modelAttribute="user">
		<div>
		<label> <s:message code="label.lecturer.firstMidName" /></label>
		<form:input path="firstMidName" required="required" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Please Enter FirstMid Name')" class="form-control" maxlength="40" placeholder="FirstMid Name"/>
		
		</div>
		<div>
		<label> <s:message code="label.lecturer.lastName" /></label>
		<form:input path="lastName" required="required" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Please Enter Last Name')" class="form-control" maxlength="40" placeholder="Last Name"/>
		</div>
		<label> <s:message code="label.lecturer.email" /></label>
		<form:input path="email" required="required" pattern="[a-z0-9._%+-]{3,}@[a-z]{3,}([.]{1}[a-z]{2,}|[.]{1}[a-z]{2,}[.]{1}[a-z]{2,})" class="form-control" maxlength="40" placeholder="Email"/>
		<div>
		<label> <s:message code="label.lecturer.password" /></label>
		<form:input path="password" type="password" required="required" oninput="this.setCustomValidity('')" oninvalid="this.setCustomValidity('Please Enter Password')" class="form-control" maxlength="40" placeholder="Password"/>
		</div> 
		<div>
		<label> <s:message code="label.lecturer.status" /></label>
		<form:input path="status" value="active" disabled="true" class="form-control"/>
		</div>
		<br /> 
	 <form:button name="submit" class="btn btn-default" type="submit">Submit</form:button>
			<form:button name="reset" class="btn btn-default" type="reset">Reset</form:button> <br/><a
			href="${pageContext.request.contextPath}/manageLecturer/list/"> <s:message
					code="label.lecturer.lecturerList" /></a>
	</form:form>
</body>
</html>