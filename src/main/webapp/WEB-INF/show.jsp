<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />

</head>
<body>
	<div class="container">
		<h1 class="text-center mt-3">Here's Your Omikujii</h1>
		<div class="mx-auto row-12 col-5 bg-secondary text-center rounded p-3">
			<p class="text-white"> 
			 <c:out value="${result}"/>
			</p>
		</div>
		<div class="d-flex align-items-center justify-content-center">
			<a href="/home" class="btn btn-primary mt-3">Go Back</a>
		</div>
	</div>
</body>
</html>