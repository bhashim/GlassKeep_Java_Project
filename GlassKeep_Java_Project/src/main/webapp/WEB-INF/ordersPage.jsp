<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders Page</title>
</head>
<body>
	<img src="GlassKeep_Logo.jpg" />
	<h1>
		Hello
		<c:out value="${currentUser}" />
	</h1>
	<a href="/home">Home</a>|
	<a href="/about">About</a>|
	<a href="/purchase">Purchase</a>|
	<a href="/orders">Orders</a>
	<h1>Orders</h1>
    <table>
    <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Quantity</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${purchase}" var="book">
        <tr>
            <td><c:out value="${purchase.purchaseName}"/></td>
            <td><c:out value="${purchase.purchaseEmail}"/></td>
            <td><c:out value="${purchase.purchaseQuantity}"/></td>
        </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>