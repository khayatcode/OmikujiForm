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
		<div class="row-2">
			<h1 class="text-center mt-3">Send an Omikuji!</h1>
		</div>
		<div class="col-12 border bg-secondary rounded p-4">
			<form action="/submit" method="post" >
				<div class="form-floating mt-3">
					<input type="number" name="number" id="floatingInput" class="form-control" min="5" max="25" value="10"/>
					<label for="floatingInput">Pick a number from 5 to 25</label>
				</div>
				<div class="form-floating mt-3">
					<input type="text" name="city" id="floatingInput" class="form-control" placeholder="City"/>
					<label for="floatingInput">City:</label>
				</div>
				<div class="form-floating mt-3">
					<input type="text" name="name" id="floatingInput" class="form-control" placeholder="Name"/>
					<label for="floatingInput">Name:</label>
				</div>
				<div class="form-floating mt-3">
					<input type="text" name="hobby" id="floatingInput" class="form-control" placeholder="Hobby"/>
					<label for="floatingInput">Professional endeavor/Hobby:</label>
				</div>
				<div class="form-floating mt-3">
					<input type="text" name="type" id="floatingInput" class="form-control" placeholder="Type"/>
					<label for="floatingInput">Type of living thing:</label>
				</div>
				<div class="form-floating mt-3">
					<textarea name="message" class="form-control" id="floatingTextarea" style="height: 150px"  placeholder="message"></textarea>
					<label for="floatingTextarea">Say something nice to someone:</label>
				</div>
				<p class="mt-3 text-white">Send and Show a friend</p>
				<input type="submit" class="btn btn-primary mt-3" />
			</form>
		</div>
	</div>
</body>
</html>