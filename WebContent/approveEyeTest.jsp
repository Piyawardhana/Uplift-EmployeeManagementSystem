<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Approve Eye Test Application</title>

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

</style>

</head>
<body>
<jsp:include page="/CommonLayout.jsp"></jsp:include>

<div class="flex-container">
<form method="POST" action="approveEyeTest">


	<h1 style="text-align: center;font-size:50px">Approve Eye Test Application</h1>
	
	<h2>Eye Test ID:</h2><input type="text" name="eID" value ="<%= request.getParameter("eID") %>" readonly><br>
	<h2>Employee ID:</h2><input type="text" name="empID" value ="<%= request.getParameter("empID") %>" readonly><br>
    <h2>Location:</h2><input type="text" name="location" value ="<%= request.getParameter("location") %>" readonly><br>
	<h2>Attend Date:</h2><input type="text" name="attendDate" value="<%= request.getParameter("attendDate") %>" readonly><br>
	<h2>Status:</h2><input type="text" name="status" value="<%= request.getParameter("status") %>" readonly><br><br>
	
	<input type="submit" name="btnsubmit" id="submit"  value="Approve"><br><br>


</form>

</div>

</body>
</html>