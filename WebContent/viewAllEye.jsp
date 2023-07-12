<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import ="benefits_default.eyeTest" %>
    <%@page import ="java.util.List" %>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pending Eye Tests</title>
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

<h1 style="margin-bottom: 20px">View All Pending Eye Test Applications</h1>
	<table class="table table-dark table-hover">
	<thead>
	<tr>
		<th style="color:yellow"> EyeTest ID </th>
		<th style="color:yellow"> Employee ID </th>
		<th style="color:yellow"> Location </th>
		<th style="color:yellow"> Attend Date </th>
		<th style="color:yellow"> Status </th>
		<th style="color:yellow"> Approve </th>
	</tr>
	</thead>

<%

List<eyeTest> obj = (List<eyeTest>)request.getAttribute("viewAll");
int size = obj.size();

eyeTest a = new eyeTest();

for(int i=0; size>i; i++){
	eyeTest e = obj.get(i);

%>

	<c:set var="eID" value="<%=e.geteID()%>"/>
	<c:set var="location" value="<%=e.getLocation()%>"/>
	<c:set var="attendDate" value="<%=e.getAttendDate()%>"/>
	<c:set var="status" value="<%=eyeTest.getStatus()%>"/>
	<c:set var="empID" value="<%=e.getEmpID()%>"/>
	
	<c:url value="approveEyeTest.jsp" var="approve">
		<c:param name="eID" value="${eID}"/>
		<c:param name="location" value="${location}"/>
		<c:param name="attendDate" value="${attendDate}"/>
		<c:param name="status" value="${status}"/>
		<c:param name="empID" value="${empID}"/>
	</c:url>
	
	<tbody>
	<tr>
		<td><%=e.geteID() %></td>
		<td><%=e.getEmpID() %></td>
		<td><%=e.getLocation() %></td>
		<td><%=e.getAttendDate() %></td>
		<td><%=eyeTest.getStatus() %></td>

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