<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import ="benefits_default.Allowance" %>
    <%@page import ="java.util.List" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Approved Allowances</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
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
 
 </style>

</head>
<body>
<jsp:include page="/CommonLayout.jsp"></jsp:include>

<div class="flex-container">
<div class="nav">
  <nav style="opacity: 0.9;">
    <ul style="list-style: none;">
      <li><form action="insert.jsp"><button class="block">Insert Details</button></form></li>
      <li style="padding-top:10px;"><form method="POST" action="viewAll"><button class="block">View Pending</button></form></li>
    </ul>
  </nav>
</div>

<div class="content" style="margin-top: 10px">

<h1 style="margin-bottom: 20px">Approved Allowance Details</h1>
	<table class="table table-dark table-hover" >
	<thead>
	<tr>
		<th style="color:yellow"> Allowance ID </th>
		<th style="color:yellow"> Employee ID </th>
		<th style="color:yellow"> Type </th>
		<th style="color:yellow"> Unit Price </th>
		<th style="color:yellow"> Quantity </th>
		<th style="color:yellow"> Total </th>
		<th style="color:yellow"> Approved Date </th>
	</tr>
	</thead>
<%

List<Allowance> obj = (List<Allowance>)request.getAttribute("approvedDet");
int size = obj.size();

//Allowance a = new Allowance();
int total = 0;

for(int i=0; size>i; i++){
	Allowance all = obj.get(i);
	total = total + all.getTotal();
%>
	<tbody>
	<tr>
		<td><%=all.getAllowanceId() %></td>
		<td><%=Allowance.getEmpId() %></td>
		<td><%=all.getType() %></td>
		<td><%=all.getUnitPrice() %></td>
		<td><%=all.getQty() %></td>
		<td><%=all.getTotal() %></td>
		<td><%=all.getApprovedDate() %></td>

	</tr>
	</tbody>
<% } %>

	</table>


	
	<h1 style="margin-top: 10px;text-align: center;">Total Amount of Allowances:</h1>
	<h1 style="margin-top: 10px;text-align: center;"><%=total %></h1>
</div>
</div>

</body>
</html>