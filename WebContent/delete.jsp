<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import ="benefits_default.Allowance" %> 
    
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

.flex-container {
  display: flex;
  clear: both;
}

.flex-container > div {
  background-color: #f1f1f1;
  margin: 10px;
  padding: 30px;
}

.nav{

  width:20%;
  opacity: 0.9;

}

.content {

  opacity: 0.9;
  width:80%;
  
}

.block {
  display:inline-block;
  width: 180%;
  border: none;
  background-color: #000000;
  color: white;
  padding: 30px 28px;
  font-size: 16px;
  cursor: pointer;
  text-align: center;
  margin-left:-52px;
  margin-bottom:5px;

}

.block:hover {
  background-color: #ddd;
  color: black;
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
<div class="nav">
  <nav style="opacity: 0.9;">
    <ul style="list-style: none;">
      <li><form action="insert.jsp"><button class="block" style="margin-top:70px">Insert Details</button></form></li>
      <li><form method="POST" action="viewAll"><button class="block">View Pending</button></form></li>
      <li><form method="POST" action="approved"><button class="block">View Approved</button></form></li>
    </ul>
  </nav>
</div>

<div class="content">
<form method="POST" action="delete">

<%

	Allowance obj1 = (Allowance)session.getAttribute("value1");

%>

<div style="opacity: 0.9;">

	<h1 style="text-align: center;font-size:50px">Delete Allowance Details</h1>
	
    <h2>Allowance ID:</h2><input type="text" name="allowaId" value ="<%= request.getParameter("allowaID") %>" readonly><br>
	<h2>Employee ID:</h2><input type="text" name="empId" value ="<%= request.getParameter("empID") %>" readonly><br>
    <h2>Allowance Type:</h2><input type="text" name="type" value ="<%= request.getParameter("type") %>" readonly><br>
	<h2>Unit Price:</h2><input type="text" name="unitPrice" value="<%= request.getParameter("unitPrice") %>" readonly><br>
	<h2>Quantity:</h2><input type="text" name="qty" value="<%= request.getParameter("qty") %>" readonly><br><br>
	<h2>Total:</h2><input type="text" name="total" value="<%= request.getParameter("total") %>" readonly ><br><br>
	
	<input type="submit" name="btnsubmit" id="submit"  value="Delete Details"><br><br>
</div>

</form>

</div>
</div>

</body>
</html>