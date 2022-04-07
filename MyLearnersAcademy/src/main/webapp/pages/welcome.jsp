<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Creation Page</title>
<style>
h1 {
	color: green;
}

h2 {
	color: #DA4220;
}

a {
	color: #239B56;
}

.navigation-menu ul {
	padding: 0px;
	margin: 0px;
}

ul {
	padding: 0;
	overflow: hidden;
	background-color: black;
	margin: 0px 20px 0px 0px;
	display: inline-block;
	list-style-type: none;
}

li {
	float: left;
}

li a {
	display: inline-block;
	color: white;
	text-align: center;
	padding: 7px 10px;
	text-decoration: none;
}

li a:hover {
	background-color: MediumSeaGreen;
}

#navigation ul {
	font-size: 1.4em;
}

#navigation ul li {
	display: inline;
	color: white;
}

#navigation li:not (:first-child ):before {
	content: " | ";
}

body {
	background-color: #CDF5DE;
	background-repeat: no-repeat, repeat;
}
</style>
</head>
<body>
	<center>
		<h1>Welcome to Learners Academy</h1>
		<h3>

			<a href="logout.jsp">Logout</a>
		</h3>
		<h2>Student Management</h2>
		<h3>
			<ul type="none">
				<li><a href="createStudent.jsp">Add New Student</a></li>
				<li><a href="/MyLearnersAcademy/student?action=list">List
						All Students</a></li>
			</ul>
		</h3>

		<h2>ClassRoom Management</h2>
		<h3>
			<ul type="none">
				<li><a href="createClass.jsp">Add New Class</a></li>
				<li><a href="/MyLearnersAcademy/classRoom?action=list">List
						All Classes</a></li>
			</ul>
		</h3>

		<h2>Teachers Management</h2>
		<h3>
			<ul type="none">
				<li><a href="createTeacher.jsp">Add New Teacher</a></li>
				<li><a href="/MyLearnersAcademy/teacher?action=list">List
						All Teachers</a></li>
			</ul>
		</h3>

		<h2>Subjects Management</h2>
		<h3>
			<ul type="none">
				<li><a href="createSubject.jsp">Add Subject</a></li>
				<li><a href="/MyLearnersAcademy/subject?action=list">List
						All Subjects</a></li>
			</ul>

		</h3>

	</center>

</body>
</html>