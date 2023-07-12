<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete</title>

<style>

body {
  background-image: url('Images/employee.jpg');
  background-size:     cover;                     
  background-repeat:   no-repeat;
  background-position: center center;
}

div.flex-container {
  background-color: #f1f1f1;
  padding: 30px;
  opacity: 0.9;
  width:80%;
  margin-left:130px;
  margin-top:50px;
}

input[type=submit]{
  background-color: #000000;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=text], select {
  width: 50%;
  padding: 8px 10px;
  margin: 0 0;
  display: inline-block;
  border: 2px solid #000000;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=date], select {
  width: 50%;
  padding: 8px 10px;
  margin: 0 0;
  display: inline-block;
  border: 2px solid #000000;
  border-radius: 4px;
  box-sizing: border-box;
}

</style>

</head>
<body>
<jsp:include page="/CommonLayout.jsp"></jsp:include>

<div class="flex-container">
<form method="POST" action="deleteEyeTest">

	<h2>Employee ID : <span style="color:#FF0000"><%= request.getParameter("empID") %></span></h2><br>
	<h2>Employee Name : <span style="color:#FF0000"><%= request.getParameter("name") %></span></h2><br>
	<h2>Employee Address : <span style="color:#FF0000"><%= request.getParameter("address") %></span></h2><br>
	<h2>Working Branch : <span style="color:#FF0000"><%= request.getParameter("branch") %></span></h2><br>

	<h2>Location For Eye Test : <span style="color:#FF0000"><%= request.getParameter("location") %></span></h2><br>
	<h2>Pick a Date for Eye Test : <span style="color:#FF0000"><%= request.getParameter("date") %></span></h2><br>
	<h2>Application Status : <span style="color:#FF0000"><%= request.getParameter("status") %></span></h2><br>

	<input type="submit" name="btnsubmit" id="submit"  value="Delete Details"><br><br>

</form>
</div>

</body>
</html>