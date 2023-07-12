<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import ="models.PermanantEmployee"%>
   <%@page import ="models.ContractEmployee"%>
   <%@page import ="java.util.Date"%>
<!DOCTYPE html> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>NotifyPanel</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js"></script>

<style type="text/css">




body, html {
  height: 100%;
  margin: 0;
}

.bg {
  /* The image used */
  background-image: url("backgroundImages/back25.jpeg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}








.container
{
	position: absolute;
	top: 14%;
	left: 30%;
	width: 700px;
	background: #0082e6;
	padding: 49px;
	box-sizing: border-box;
	border :2px solid #7B057D;
	opacity: 0.7;
	


}
.container h1
{
	text-align: center;
	margin: 0 0 40px;
	padding: 0;
	color: #39ca74;
	letter-spacing: 2px;
	font-family: 'Alfa Slab One', cursive;
}


table,th,td{
border: 2px solid #39ca74;
  border-collapse: collapse;
  padding: 1px 90px;

}
table{

width: 50%;
margin: 0% 25%;
}
h1{

margin: 3% 45%;
}
th,td{

padding: 5px;
margin: 3px 4px;
text-align:center
}
.but{

background:white;
}


</style>


</head>
<body>

<div class="bg"></div>


<%


String message = (String)request.getAttribute("value1");
String message2 = (String)request.getAttribute("value2");
String notifyid = (String)request.getAttribute("ntid");
String message3 = (String)request.getAttribute("value3");
PermanantEmployee ob = (PermanantEmployee)request.getAttribute("valueob");
String invokeId = (String)request.getAttribute("inv");
ContractEmployee obj = (ContractEmployee)request.getAttribute("valcob");

%>




<div class = "container">
<h1>notification Panel</h1>

<%if(notifyid == "1"){%>
<ul>

<li><h2><%=message %></h2></li>
<li><a href="<%=message2%>"><h2>Login Again</h2></a></li>
<li><h2>Contact: (+94)717249309</h2></li>
<li><h2>Email: info@upliftlk.com</h2></li>


</ul>

<%}%>



<%if(notifyid == "2"){%>

<ul>

<li><h2><%=message%></h2></li>
<li><a href="<%=message3%>"><h2>go back</h2></a></li>
<li><button onclick="print()">Download Report</button></li>

</ul>


<%}%>



<%if(notifyid == "3"){%>

<ul>

<li><h2><%=message%></h2></li>
<li><a href="<%=message3%>"><h2>go back</h2></a></li>


</ul>


<%}%>




</div>


<%if(invokeId == "5"){ %>

<div id="report1">

<h1>UpLift PVT LTD</h1>
<p style="width:50%; margin: 0% 25%;">Date & Time: <%=new Date().toString()%></p>
<table>


<tr>

<td>Employee Id</td>
<td><%=ob.getEmpId()%></td>

</tr>

<tr>

<td>Employee First Name</td>
<td><%=ob.geteFName()%></td>

</tr>

<tr>

<td>Employee Middle Name</td>
<td><%=ob.geteMName()%></td>

</tr>

<tr>

<td>Employee Last Name</td>
<td><%=ob.geteLName()%></td>

</tr>



<tr>

<td>Date of Birth</td>
<td><%=ob.getDOB()%></td>

</tr>

<tr>

<td>Contact Number</td>
<td><%=ob.getContactNumber()%></td>

</tr>

<tr>

<td>Email</td>
<td><%=ob.getEmail()%></td>

</tr>

<tr>

<td>Age</td>
<td><%=ob.getAge()%></td>

</tr>

<tr>

<td>National Id</td>
<td><%=ob.getNic()%></td>

</tr>



<tr>

<td>Address</td>
<td><%=ob.getAddress()%></td>

</tr>

<tr>

<td>Gender</td>
<td><%=ob.getSexuality()%></td>

</tr>

<tr>

<td>Department Id</td>
<td><%=ob.getDepId()%></td>

</tr>

<tr>

<td>Joined Date</td>
<td><%=ob.getJoinedDate()%></td>

</tr>

<tr>

<td>Branch</td>
<td><%=ob.getBranch()%></td>

</tr>

<tr>

<td>Designation</td>
<td><%=ob.getDesignation()%></td>

</tr>


</table>



</div>

<%} %>



<%if(invokeId == "6"){ %>

<div id="report1">

<h1>UpLift PVT LTD</h1>
<p style="width:50%; margin: 0% 25%;">Date & Time: <%=new Date().toString()%></p>
<table>


<tr>

<td>Employee Id</td>
<td><%=obj.getEmpId()%></td>

</tr>

<tr>

<td>Employee First Name</td>
<td><%=obj.geteFName()%></td>

</tr>

<tr>

<td>Employee Middle Name</td>
<td><%=obj.geteMName()%></td>

</tr>

<tr>

<td>Employee Last Name</td>
<td><%=obj.geteLName()%></td>

</tr>



<tr>

<td>Date of Birth</td>
<td><%=obj.getDOB()%></td>

</tr>

<tr>

<td>Contact Number</td>
<td><%=obj.getContactNumber()%></td>

</tr>

<tr>

<td>Email</td>
<td><%=obj.getEmail()%></td>

</tr>

<tr>

<td>Age</td>
<td><%=obj.getAge()%></td>

</tr>

<tr>

<td>National Id</td>
<td><%=obj.getNic()%></td>

</tr>



<tr>

<td>Address</td>
<td><%=obj.getAddress()%></td>

</tr>

<tr>

<td>Gender</td>
<td><%=obj.getSexuality()%></td>

</tr>

<tr>

<td>Department Id</td>
<td><%=obj.getDepId()%></td>

</tr>

<tr>

<td>Joined Date</td>
<td><%=obj.getJoinedDate()%></td>

</tr>

<tr>

<td>Branch</td>
<td><%=obj.getBranch()%></td>

</tr>


</table>



</div>

<%} %>








<script>

function print(){
	
	
	var element = document.getElementById("report1");
var opt = {
  margin:       1,
  filename:     'report1.pdf',
  image:        { type: 'jpeg', quality: 0.98 },
  html2canvas:  { scale: 2 },
  jsPDF:        { unit: 'in', format: 'letter', orientation: 'portrait' }
};
 
// New Promise-based usage:
html2pdf().from(element).set(opt).save();
 
	
	
}






</script>




</body>
</html>



