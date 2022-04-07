<%@page import="com.simplilearn.entity.Subject"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Subject</title>
<style>
body {
	background-color: #14E1E9;
	background-repeat: no-repeat, repeat;
}
</style>
</head>
<body>
<%-- <%
		List<ClassRoom> classRooms = (List<ClassRoom>) session.getAttribute("classRooms");
		if (classRooms != null && !classRooms.isEmpty()) {
			out.println("Classes are : " + classRooms);
		} else {
			out.println("Empty List");
		}
	%> --%>
	<center>
		<h1>Subject Management</h1>
		<h2>
			<a href="pages/logout.jsp">Logout</a> 
			<a href="pages/createSubject.jsp">Add New Subject</a>
			<a href="pages/welcome.jsp">Go Back to Main Menu</a>
			<table border="1" cellpadding="5">
				<caption>
					<h2>List of Subjects</h2>
				</caption>
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Action</th>
				</tr>
				<c:forEach var="Subject" items="${subject}">
					<tr>
						<td><c:out value="${Subject.id}" /></td>
						<td><c:out value="${Subject.subjectName}" /></td> 
						<td><a href="edit?id=<c:out value='${Subject.id}' />">Edit</a>
							&nbsp;&nbsp;&nbsp;&nbsp; <a
							href="delete?id=<c:out value='${Subject.id}' />">Delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</h2>
	</center>

</body>
</html>