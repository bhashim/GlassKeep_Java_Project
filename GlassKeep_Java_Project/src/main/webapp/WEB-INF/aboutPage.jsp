<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Page</title>
</head>
<body>
<img src="GlassKeep_Logo.jpg"/>
<h1>Hello <c:out value="${currentUser}"/></h1>
<a href="/home">Home</a>|
<a href="/about">About</a>|
<a href="/purchase">Purchase</a>|
<a href="/orders">Orders</a>
<h2>How it all started</h2>
<p>It was Christmas 2015 and I was in 10th grade. My dad had just started wearing reading glasses and kept losing them. He would ask for my help in looking for the glasses. It got to the point where I was tired of helping and set out to find a permanent solution to the problem. I realized that he had a button on his shirt so I came up with a simple cardboard model that would allow him to hang his eye glasses from his shirt button. He was very impressed with my creativity and helped me file for a patent. This is how GlassKeep came to life. I spent sometime searching for different names that could work and finally settled on GlassKeep because the name clearly describes the function.<h1>GlassKeep - A place to keep your glasses!</h1></p>
<p>Everyone who tries GlassKeep really likes it. I have talked to many people about GlassKeep and shown them how simple it is to use. Best of all I make GlassKeep right here in California USA with 100% American made materials!</p>


</body>
</html>