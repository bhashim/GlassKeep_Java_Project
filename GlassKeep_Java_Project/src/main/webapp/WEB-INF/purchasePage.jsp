<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Purchase Page</title>
</head>
<body>
<img src="GlassKeep_Logo.jpg"/>
<h1>Hello <c:out value="${currentUser}"/></h1>
<a href="/home">Home</a>|
<a href="/about">About</a>|
<a href="/purchase">Purchase</a>|
<a href="/orders">Orders</a>
<h1>Currently, GlassKeep comes individually packaged with the following information.</h1>
<p>GlassKeep is available for $4.99 each. Please send payment to GlassKeep! 11866 Woodhill Ct. Cupertino,CA 95014. Please include your shipping address in the order form below. Thanks!.</p>
<img src="GlassKeep_Inst.jpg"/>
<form:form method="POST" action="/addPurchase" modelAttribute="addPurchase">
<form:label path="purchaseName">Name:</form:label>
<form:input path="purchaseName" class="input"/>
<form:label path="purchaseEmail">Email:</form:label>
<form:input path="purchaseEmail" class="input"/>
<form:label path="purchaseSubject">Subject:</form:label>
<form:input path="purchaseSubject" class="input"/>
<form:label path="purchaseMessage">Message:</form:label>
<form:textarea path="purchaseMessage"/>
<form:label path="purchaseQuantity">Quantity:</form:label>
<form:input path="purchaseQuantity" type="number"/>
<input type="Submit" value="Submit" class="btn"/>





</form:form>

</body>
</html>