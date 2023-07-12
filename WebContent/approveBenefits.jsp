<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Approve Benefits</title>

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
  height:400px;
  margin-left:130px;
  margin-top:50px;
}

.block {
  display: block;
  width: 60%;
  border: none;
  background-color: #000000;
  color: white;
  padding: 30px 28px;
  marging-right:10px;
  margin-bottom:5px;
  margin-left:140px;
  font-size: 16px;
  cursor: pointer;
  text-align: center;
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

<h1>Approve Employees Benefits</h1>


  <nav>
    <ul style="list-style: none;">
      <li><form action="viewAllAllowa" method="POST"><button class="block">Approve Allowances</button></form></li>
      <li style="padding-top:10px;"><form method="POST" action="viewAllEye"><button class="block">Approve Eye Test</button></form></li>
    </ul>
  </nav>


</div>

</body>
</html>