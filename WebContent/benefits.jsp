<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Benefits</title>

<style>

.main {
  margin-top: 150px;
}

/*Footer*/
.footer {
  padding: 5px;
  text-align: center;
  background: #ddd;
  margin-top: 20px;
  font-size: 8px;
}

.fa-money-bill-alt {
  color:black;
}

.fa-money-bill-alt:hover {
  color:gray;
}

.fa-eye {
  color:black;
}

.fa-eye:hover {
  color:gray;
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

<div class="main">
<h1 style="text-align: center;">Benefits For Employees</h1>


    <div class="row">
	<div class="col-lg-6">
		<a href="insert.jsp"><i style="margin-left:220px" class="far fa-money-bill-alt fa-10x"></i></a>
		<h2 style="margin-top:20px;margin-bottom:100px;margin-left:220px">Allowances</h2>
	</div>
	<div class="col-lg-6">
  		<a href="applyForEye.jsp"><i style="margin-left:120px" class="fas fa-eye fa-10x"></i></a>
   		<h2 style="margin-top:20px;margin-bottom:100px;margin-left:120px">Vision Care</h2>
   	</div>
    </div>
  
 <div class="footer">
 	<h2>Footer</h2>
</div>
</div>

</body>
</html>