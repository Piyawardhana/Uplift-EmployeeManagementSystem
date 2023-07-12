<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Approve Allowance</title>

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
<form method="POST" action="approveAllowance">


	<h1 style="text-align: center;font-size:50px">Approve Allowance Details</h1>
	
	<h2>Allowance ID:</h2><input type="text" name="allowaId" value ="<%= request.getParameter("allowaID") %>" readonly><br>
	<h2>Employee ID:</h2><input type="text" name="empId" value ="<%= request.getParameter("empID") %>" readonly><br>
    <h2>Allowance Type:</h2><input type="text" name="type" value ="<%= request.getParameter("type") %>" readonly><br>
	<h2>Unit Price:</h2><input type="text" name="unitPrice" value="<%= request.getParameter("unitPrice") %>" readonly><br>
	<h2>Quantity:</h2><input type="text" name="qty" value="<%= request.getParameter("qty") %>" readonly><br><br>
	<h2>Total:</h2><input type="text" name="total" value="<%= request.getParameter("total") %>" readonly ><br><br>
	<h2>Apply Date:</h2><input type="text" name="appDate" value="<%= request.getParameter("appDate") %>" readonly ><br><br>
	<h2>Status:</h2><input type="text" name="status" value="<%= request.getParameter("status") %>" readonly ><br><br>
	
	<input type="submit" name="btnsubmit" id="submit"  value="Approve"><br><br>


</form>

</div>

</body>
</html>