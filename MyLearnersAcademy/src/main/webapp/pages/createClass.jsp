<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New ClassRoom</title>
<style>
body {
	background-color: #EFF5C4;
	background-repeat: no-repeat, repeat;
}
</style>
</head>
<body>
	<center>
		<h1>Class Room Management</h1>
		<h2>
			<a href="logout.jsp">Logout</a> 
			<a href="/MyLearnersAcademy/classRoom?action=list">List All ClassRooms</a>
			<a href="welcome.jsp">Go Back to Main Menu</a>
			<form action="/MyLearnersAcademy/classRoom" method="post">
				<table border="1" cellpadding="10">
					<h1>Add New Class Room</h1>
					<tr>
						<th>Name</th>
						<td><input type="text" name="classRoomName"></td>
					</tr>
					<tr>
						<td colspan="2" align="center">
						<input type="hidden"  name="action" value="new"/>
						<input type="submit" value="Add ClassRoom" /></td>
					</tr>
				</table>
			</form>
		</h2>
	</center>

</body>
</html>