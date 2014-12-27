<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<title>Create New Course</title>
</head>
<body>
<form name ="CreateCourseForm" action ="insert.jsp" method="post">
<p>Course Title :<br>
<input type ="text" name="courseName"><br>
Course Code (password):<br>
<input name="cpassword" type="password"><br> 
University :<br>
<input type ="text" name="university"><br>
Start Date :<br>
<input type ="text" name="sDate"><br>
End Date :<br>
<input type ="text" name="eDate"><br>
Course Info :<br>
<input type ="text" name="courseInfo" style="height: 100px;"><br>
&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Create"/>
</form>
</body>
</html>
