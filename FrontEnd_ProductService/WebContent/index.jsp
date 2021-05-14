<%@page import="com.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/Product.js"></script>
</head>
<body> 
<div class="container"><div class="row"><div class="col-6"> 
<h1>Product Management</h1>

 <br> Product ID: 
 <input id="pDesc" name="pDesc" type="text" 
 class="form-control form-control-sm">


<form id="formProduct" name="formProduct">
 Project Title: 
 <input id="pTitle" name="pTitle" type="text" 
 class="form-control form-control-sm">
 
 <br> Product Description: 
 <input id="pDesc" name="pDesc" type="text" 
 class="form-control form-control-sm">
 
 <br> Product Price: 
 <input id="pPrice" name="pPrice" type="text" 
 class="form-control form-control-sm">
 
 
 <br> Researcher Name:
 <input id="resName" name="resName" type="text" 
 class="form-control form-control-sm">
 
 
 <br> Date:
 <input id="date" name="date" type="text" 
 class="form-control form-control-sm">
 
 <br>
 <input id="btnSave" name="btnSave" type="button" value="Save" 
 class="btn btn-primary">
 
 <input type="hidden" id="hidpIdSave" 
 name="hidpIdSave" value="">
</form>

<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<br>
<div id="divProductGrid">
 <%
 Product productObj = new Product(); 
 out.print(productObj.readProducts()); 
 %>
</div>
</div> </div> </div> 
</body>
</html>