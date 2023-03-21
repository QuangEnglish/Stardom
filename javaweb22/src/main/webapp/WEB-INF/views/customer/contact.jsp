<!-- sử dụng tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- import JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- import thư viện spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="style.css">
<style type="text/css">
body {
	background: #59ABE3;
	margin: 0
}

.form {
	width: 340px;
	height: 540px;
	background: #e6e6e6;
	border-radius: 8px;
	box-shadow: 0 0 40px -10px #000;
	margin: calc(40vh - 220px) auto;
	padding: 20px 30px;
	max-width: calc(100vw - 40px);
	box-sizing: border-box;
	font-family: 'Montserrat', sans-serif;
	position: relative
}

h2 {
	margin: 10px 0;
	padding-bottom: 10px;
	width: 180px;
	color: #78788c;
	border-bottom: 3px solid #78788c
}

input {
	width: 100%;
	padding: 10px;
	box-sizing: border-box;
	background: none;
	outline: none;
	resize: none;
	border: 0;
	font-family: 'Montserrat', sans-serif;
	transition: all .3s;
	border-bottom: 2px solid #bebed2
}

input:focus {
	border-bottom: 2px solid #78788c
}

p:before {
	content: attr(type);
	display: block;
	margin: 28px 0 0;
	font-size: 14px;
	color: #5a5a5a
}

button {
	float: right;
	padding: 8px 12px;
	margin: 8px 0 0;
	font-family: 'Montserrat', sans-serif;
	border: 2px solid #78788c;
	background: 0;
	color: #5a5a6e;
	cursor: pointer;
	transition: all .3s
}

button:hover {
	background: #78788c;
	color: #fff
}
</style>
</head>
<body>
	<!-- html form cách 1 thường -->
	 <!-- 
  		<form class="form" action="${base}/contact-us-simple" method="post">
        <h2>CONTACT US</h2>     
        <p type="Name:"><input type="text" class="className" name="fullName" id="idFullName" placeholder="Họ và tên"></input></p>
        <p type="Email:"><input type="email" class="classEmail" name="email" id="idEmail" placeholder="Email"></input></p>
        <p type="Subject:"><input type="text" class="classSubject" name="subject" id="idSubject" placeholder="Subject"></input></p>
        <p type="Message:"><input type="text" name="message" id="idMessage" placeholder="message"></input></p>
        <button type="submit" >Send Message</button>
      </form>    
	 
	  -->
	

	<!-- cách 2: dùng spring-form -->
	<!-- 1: mapping form -> contact data -->
	<!-- 2: mapping từng input html -> properties -->
	<!-- 
	
    	<sf:form modelAttribute="contact" class="form" action="${base}/contact-us-spring-form" method="post">
        <h2>CONTACT US</h2>     
        <p type="Name:"><sf:input path="fullName" type="text" class="className" name="fullName" id="idFullName" placeholder="Họ và tên"></sf:input></p>
        <p type="Email:"><sf:input path="email" type="email" class="classEmail" name="email" id="idEmail" placeholder="Email"></sf:input></p>
        <p type="Subject:"><sf:input path="subject" type="text" class="classSubject" name="subject" id="idSubject" placeholder="Subject"></sf:input></p>
        <p type="Message:"><sf:input path="message" type="text" name="message" id="idMessage" placeholder="Message"></sf:input></p>
        <button type="submit" >Send Message</button>
      	</sf:form>    		
	 -->
 		 

	<!-- cách 3: sử dụng ajax -->	
	<form class="form" method="post">
		<h2>CONTACT US</h2>
		<p type="Name:">
			<input type="text" class="className" name="fullName" id="idFullName"
				placeholder="Họ và tên"></input>
		</p>
		<p type="Email:">
			<input type="email" class="classEmail" name="email" id="idEmail"
				placeholder="Email"></input>
		</p>
		<p type="Subject:">
			<input type="text" class="classSubject" name="subject" id="idSubject"
				placeholder="Subject"></input>
		</p>
		<p type="Message:">
			<input type="text" name="message" id="idMessage"
				placeholder="message"></input>
		</p>
		<button type="button" onclick="PostContactUsingAjax('${base}');">Send
			Message</button>
	</form>
	
	<script src='${base}/js/jquery-3.6.1.js'></script>
	<script src='${base}/js/scripts.js'></script>
</body>
</html>