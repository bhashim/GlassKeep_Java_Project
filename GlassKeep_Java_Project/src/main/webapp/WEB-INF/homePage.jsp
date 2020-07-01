<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
<img src="GlassKeep_Logo.jpg"/>
<h1>Hello <c:out value="${currentUser}"/></h1>
<a href="/home">Home</a>|
<a href="/about">About</a>|
<a href="/purchase">Purchase</a>|
<a href="/orders">Orders</a>
<h1>Everyday, people lose or damage their glasses, because they can't find a safe place to put them. But now that's not a worry, thanks to GlassKeep, the one and only invention that will hold your glasses securely in place without magnets or clasps. Best of all its made right here in the USA!</h1>
<h1>GlassKeep is easy to use!

Just hook it in place behind a button and hang you eye glasses in place.</h1>
<img src="GlassKeep_Img.jpg"/>
<img src="GlassKeep_Img_2.jpg"/>
<img src="GlassKeep_Img_3.jpg"/>
<img src="GlassKeep_Img_4.jpg"/>
<h2>Testimonials</h2>
<p>"I used to forget where I put my glasses but now I won't have to worry about that anymore thanks to GlassKeep. 

It holds my glasses securely and helps save my time because I know where to find them!" - W.H.</p>
<p>"Anyone who wears glasses will immediately recognize GlassKeep as an essential product to keep their glasses secure." - D.B.</p>
<p>Follow us on social media links to stay updated with our products!</p>
<a href="https://cdn.someecards.com/someecards/usercards/1347979246124_6330831.png"><img src="facebook.png"/></a>
<a href="https://cdn.someecards.com/someecards/usercards/i-dont-have-a-facebook-or-a-twitter-account-so-i-just-go-around-announcing-out-loud-what-im-doing-at-random-times-ive-got-3-followers-so-far-but-i-think-2-are-cops--051e4.png"><img src="twitter.png"/></a>


</body>
</html>