<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import ="benefits_default.Allowance" %>
    <%@page import ="java.util.List" %>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pending Allowances</title> 

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

</style>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

</head>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<body>
<jsp:include page="/CommonLayout.jsp"></jsp:include>

<div class="flex-container">

<h1 style="margin-bottom: 20px">View All Pending Allowance Details</h1>
	<table class="table table-dark table-hover">
	<thead>
	<tr>
		<th style="color:yellow"> Allowance ID </th>
		<th style="color:yellow"> Employee ID </th>
		<th style="color:yellow"> Type </th>
		<th style="color:yellow"> Unit Price </th>
		<th style="color:yellow"> Quantity </th>
		<th style="color:yellow"> Total </th>
		<th style="color:yellow"> Status </th>
		<th style="color:yellow"> Approve </th>
	</tr>
	</thead>

<%

List<Allowance> obj = (List<Allowance>)request.getAttribute("viewAll");
int size = obj.size();

Allowance a = new Allowance();

for(int i=0; size>i; i++){
	Allowance all = obj.get(i);

%>

	<c:set var="allowaID" value="<%=all.getAllowanceId()%>"/>
	<c:set var="empID" value="<%=all.getEmployeeID()%>"/>
	<c:set var="type" value="<%=all.getType()%>"/>
	<c:set var="unitPrice" value="<%=all.getUnitPrice()%>"/>
	<c:set var="qty" value="<%=all.getQty()%>"/>
	<c:set var="total" value="<%=all.getTotal()%>"/>
	<c:set var="appDate" value="<%=all.getAppDate()%>"/>
	<c:set var="status" value="<%=Allowance.getStatus()%>"/>
	
	<c:url value="approveAllowa.jsp" var="approve">
		<c:param name="allowaID" value="${allowaID}"/>
		<c:param name="empID" value="${empID}"/>
		<c:param name="type" value="${type}"/>
		<c:param name="unitPrice" value="${unitPrice}"/>
		<c:param name="qty" value="${qty}"/>
		<c:param name="total" value="${total}"/>
		<c:param name="appDate" value="${appDate}"/>
		<c:param name="status" value="${status}"/>
	</c:url>
	
	<tbody>
	<tr>
		<td><%=all.getAllowanceId() %></td>
		<td><%=all.getEmployeeID() %></td>
		<td><%=all.getType() %></td>
		<td><%=all.getUnitPrice() %></td>
		<td><%=all.getQty() %></td>
		<td><%=all.getTotal() %></td>
		<td><%=Allowance.getStatus() %></td>
		<td> 
			<a href="${approve}">
				<i class="fa fa-check"></i>
			</a>
		</td>
	</tr>
	</tbody>

<% } %>

	</table>
</div>

</body>
</html>