<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import ="benefits_default.Allowance" %>
    <%@page import ="java.util.List" %>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Allowance Details</title>

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

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">

</head>


  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<body>
<jsp:include page="/CommonLayout.jsp"></jsp:include>

<div class="flex-container">
<div class="nav">
  <nav style="opacity: 0.9;">
    <ul style="list-style: none;">
      <li><form action="insert.jsp"><button class="block" style="margin-top:70px">Insert Details</button></form></li>
      <li><form method="POST" action="approved"><button class="block">View Approved</button></form></li>
    </ul>
  </nav>
</div>


<div class="content" >

<h1 style="margin-bottom: 20px">Pending Allowance Details</h1>
	<table class="table table-dark table-hover">
	<thead>
	<tr>
		<th style="color:yellow"> Allowance ID </th>
		<th style="color:yellow"> Employee ID </th>
		<th style="color:yellow"> Apply Date </th>
		<th style="color:yellow"> Type </th>
		<th style="color:yellow"> Unit Price </th>
		<th style="color:yellow"> Quantity </th>
		<th style="color:yellow"> Total </th>
		<th style="color:yellow"> Edit </th>
		<th style="color:yellow"> Delete </th>
	</tr>
	</thead>

<%

List<Allowance> obj = (List<Allowance>)request.getAttribute("allDetails");
int size = obj.size();

Allowance a = new Allowance();

for(int i=0; size>i; i++){
	Allowance all = obj.get(i);

%>

	<c:set var="allowaID" value="<%=all.getAllowanceId()%>"/>
	<c:set var="empID" value="<%=Allowance.getEmpId()%>"/>
	<c:set var="appDate" value="<%=all.getAppDate()%>"/>
	<c:set var="type" value="<%=all.getType()%>"/>
	<c:set var="unitPrice" value="<%=all.getUnitPrice()%>"/>
	<c:set var="qty" value="<%=all.getQty()%>"/>
	<c:set var="total" value="<%=all.getTotal()%>"/>

	<c:url value="edit.jsp" var="allUpdate">
		<c:param name="allowaID" value="${allowaID}"/>
		<c:param name="empID" value="${empID}"/>
		<c:param name="appDtate" value="${appDate}"/>
		<c:param name="type" value="${type}"/>
		<c:param name="unitPrice" value="${unitPrice}"/>
		<c:param name="qty" value="${qty}"/>
		<c:param name="total" value="${total}"/>
	</c:url>
	
	<c:url value="delete.jsp" var="delUpdate">
		<c:param name="allowaID" value="${allowaID}"/>
		<c:param name="empID" value="${empID}"/>
		<c:param name="appDtate" value="${appDate}"/>
		<c:param name="type" value="${type}"/>
		<c:param name="unitPrice" value="${unitPrice}"/>
		<c:param name="qty" value="${qty}"/>
		<c:param name="total" value="${total}"/>
	</c:url>
	
	<tbody>
	<tr>
		<td><%=all.getAllowanceId() %></td>
		<td><%=Allowance.getEmpId() %></td>
		<td><%=all.getAppDate() %></td>
		<td><%=all.getType() %></td>
		<td><%=all.getUnitPrice() %></td>
		<td><%=all.getQty() %></td>
		<td><%=all.getTotal() %></td>
		<td> 
			<a href="${allUpdate}">
				<i class="fas fa-pencil-alt fa-lg"></i>
			</a>
		</td>
		<td> 
			<a href="${delUpdate}">
				<i class="fas fa-trash-alt fa-lg"></i>
			</a>
		</td>
	</tr>
	</tbody>

<% } %>

	</table>
</div>

</div>

</body>
</html>