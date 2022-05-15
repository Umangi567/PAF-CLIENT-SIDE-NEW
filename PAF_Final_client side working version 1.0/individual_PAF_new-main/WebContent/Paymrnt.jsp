<%@page import="com.payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.6.0.min.js"></script>
<script src="Components/product.js"></script>
<meta charset="ISO-8859-1">
<title>Payment Details</title>
</head>
<body>
	<div class="container"><div class="row"><div class="col-6">
		<h1>Payment Details</h1>

			<form id="formproduct" name="formproduct">
			
				customerName:
				<input id="customerName" name="customerName" type="text" class="form-control form-control-sm"><br>
		 		accountNo:
				<input id="accountNo" name="accountNo" type="text" class="form-control form-control-sm"><br> 
				amount:
				<input id="amount" name="amount" type="text" class="form-control form-control-sm"><br>
		 		cardNumber:
				<input id="cardNumber" name="cardNumber" type="text" class="form-control form-control-sm"><br>
				

      			<input id="btnCreateproduct" name="btnCreateproduct" type="button" value="Save" class="btn btn-primary">
      			<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
			</form>
	
			<div id="alertSuccess" class="alert alert-success"></div>
			<div id="alertError" class="alert alert-danger"></div>
			<br>
			<div id="divItemsGrid">
				<%
				payment productObj = new payment();
				 out.print(productObj.readproduct());
				%>
			</div>
	</div> </div> </div> 

</body>
</html>