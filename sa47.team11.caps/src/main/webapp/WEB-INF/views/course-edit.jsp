<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

    
<div class="container">
  <form:form class="form-horizontal" method="POST" modelAttribute="course"
  	action="${pageContext.request.contextPath}/course/edit/${course.courseid}.html" >
    <div class="form-group">
      <label class="control-label col-sm-2" for="courseName">
      	<spring:message code="fieldLabel.username" />
      </label>
      <div class="col-sm-4">
     <!--    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"> -->
     <form:input path="courseName" class="form-control" placeholder="course name" />
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="classSize">
      	Class Size
      </label>
      <div class="col-sm-4">
     <!--    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"> -->
     <form:input path="classSize" class="form-control" placeholder="class Size" />
      </div>
    </div>
    
        <div class="form-group">
      <label class="control-label col-sm-2" for="startDate">
      	Start Date
      </label>
      <div class="col-sm-4">
     <!--    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"> -->
     <form:input path="startDate" class="form-control" placeholder="start Date" />
      </div>
    </div>
    
    
      <div class="form-group">
	      <label class="control-label col-sm-2" for="endDate">
	      	End Date
	      </label>
	      <div class="col-sm-4">
		     <!--    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"> -->
		     <form:input path="endDate" class="form-control" placeholder="end Date" />
	      </div>
    </div>
    
    <div class="form-group">
	      <label class="control-label col-sm-2" for="firstMidName">
	       	Assigned Lecturer
	      </label>
	      <div class="col-sm-4">
		     <!--    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"> -->
		     <form:input path="User.firstMidName" class="form-control" placeholder="lecturer name" />
	      </div>
    </div>
    
    <div class="form-group">
	      <label class="control-label col-sm-2" for="startTime">
	      	Start Time
	      </label>
	      <div class="col-sm-4">
		     <!--    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"> -->
		     <form:input path="startTime" class="form-control" placeholder="Start Time" />
	      </div>
    </div>   
    <div class="form-group">
	      <label class="control-label col-sm-2" for="endTime">
	      	End Time
	      </label>
	      <div class="col-sm-4">
		     <!--    <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"> -->
		     <form:input path="endTime" class="form-control" placeholder="End Time" />
	      </div>
    </div>
    
    
    <div class="form-group ">
      <label class="control-label col-sm-2" for="courseDescription">
		Course Detail
	</label>
      <div class="col-sm-4 md-form amber-textarea active-amber-textarea">          
       <!--  <input type="password" class="form-control" id="password" placeholder="Enter password" name="password"> -->
      	<form:textarea path="courseDescription" class="md-textarea form-control z-depth-1" row="10"></form:textarea>
      </div>
    </div>

    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
       <!--  <button type="submit" class="btn btn-default">Submit</button> -->
       <form:button name="submit" class="btn btn-default" type="submit">Update</form:button>
      </div>
    </div>
  </form:form>
</div>