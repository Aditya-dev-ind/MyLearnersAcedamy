<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Subject</title>
<style>
body {
	background-color: #F5C4E4 ;
	background-repeat: no-repeat, repeat;
}
</style>
</head>
<body>
	<center>
		<h1>Subject Management</h1>
		<h2>
			<a href="logout.jsp">Logout</a> 
			<a href="/MyLearnersAcademy/subject?action=list">List All Subjects</a>
			<a href="welcome.jsp">Go Back to Main Menu</a>
			<form action="/MyLearnersAcademy/subject" method="post">
				<table border="1" cellpadding="10">
					<h1>Add New Subject</h1>
					<tr>
						<th>Name</th>
						<td><input type="text" name="subjectName"></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
						<input type="hidden"  name="action" value="new"/>
						<input type="submit" value="Add Subject" /></td>
					</tr>
				</table>
			</form>
		</h2>
	</center>

</body>
</html>