<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import ="benefits_default.Allowance" %>
    
<!DOCTYPE html> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Details Page</title>

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

table, th, td {
  border: 2px solid #000000;
  border-collapse: collapse;
}

td {
  text-align: center;
}

th {
  padding-left: 10px;
  padding-right: 10px;
}

</style>

<script>

function In() {
	  var unitPrice, qty, text2;

	  unitPrice = document.getElementById("UnitPrice").value;
	  qty = document.getElementById("Qty").value;
	  
	  var numbersonly = /^[+]?[0-9]+$/;
	  
	  if (unitPrice.match(numbersonly ) ) {
	    	

		  text2 = "Valid input";
		 
		  document.getElementById("demo2").style.color = "LimeGreen";
		  document.getElementById("submit").disabled = false;
		  
		 
		  
	  } 
	 		  
	  else {
		  
		  text2 = "Invalid";
		  document.getElementById("demo2").style.color = "red";
		  document.getElementById("submit").disabled = true;
	  
	  }
	  
	  document.getElementById("demo2").innerHTML = text2;
	  
	  
	  if(qty.match(numbersonly)){
		  

		  text3 = "Valid input";
		 
		  document.getElementById("demo3").style.color = "LimeGreen";
			
		  document.getElementById("submit").disabled = false;
		  
		 
		  
	  } 
	 		  
	  else {
		  
		  text3 = "Invalid";
		  document.getElementById("demo3").style.color = "red";
		  document.getElementById("submit").disabled = true;
	  
	  }
	  document.getElementById("demo3").innerHTML = text3;
	  
	
	}

</script>

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
<form method="POST" action="editDetails">

<div style="opacity: 0.9;">

	<h1 style="text-align: center;font-size:50px">Edit Allowance Details</h1>
	
    <h2>Allowance ID:</h2><input type="text" name="allowaId" value ="<%= request.getParameter("allowaID") %>" readonly><br>
	<h2>Employee ID:</h2><input type="text" name="empId" value ="<%= request.getParameter("empID") %>" required><br>
	<h2>Allowance Type:</h2>
        <select id="type" name="type">
          <option value="Food">Food</option>
          <option value="Fuel">Fuel</option>
          <option value="Travel Expenses">Travel Expenses</option>
        </select>
	<h2>Unit Price:</h2><input type="text" name="unitPrice" value="<%= request.getParameter("unitPrice") %>" id="UnitPrice" onkeyup="In()" required><p style="color:red; font-style: italic" id="demo2"></p>
	<h2>Quantity:</h2><input type="text" name="qty" value="<%= request.getParameter("qty") %>" id="Qty" onkeyup="In()" required><p style="color:red; font-style: italic" id="demo3"></p><br><br>

	
	<input type="submit" name="btnsubmit" id="submit"  value="Edit Details"><br><br>
</div>

</form>


<%

 String key = (String)request.getAttribute("val");

%>
<% 

if(key == "ok"){
Allowance obj = (Allowance)request.getAttribute("value"); 

%>

<div style="opacity: 0.9;">

<table style="border: 2px solid #000000;">
	<tr>
		<th>AllowanceId</th>
		<th>EmployeeId</th>
		<th>AllowanceType</th>
		<th>UnitPrice</th>
		<th>Quantity</th>
		<th>Total</th>
	</tr>
	<tr>
	<td><%=obj.getAllowanceId()%></td>

	<td><%=Allowance.getEmpId()%></td>

	<td><%=obj.getType()%></td>

	<td><%=obj.getUnitPrice()%></td>
	
	<td><%=obj.getQty()%></td>
	
	<td><%=obj.getTotal()%></td>
	</tr>
	
<% 
} 
%>
	
</table>
</div>

</div>

</div>

</body>
</html>