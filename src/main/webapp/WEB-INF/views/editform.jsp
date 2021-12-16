<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.mycompany.spring.board.BoardDAO, com.mycompany.spring.board.BoardVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
</head>
<body class="bg-light">

	<div class="container">
		<main>
			<div class="py-5 text-center">
				<img class="d-block mx-auto mb-4"
					src="../assets/brand/bootstrap-logo.svg" alt="" width="72"
					height="57">
				<h2>Modify Friend Form</h2>
				<p class="lead">Below is an example form built entirely with
					Bootstrap’s form controls. Each required form group has a
					validation state that can be triggered by attempting to submit the
					form without completing it.</p>
			</div>

			<div class="row g-5">

				<div class="col-md-7 col-lg-8">
					<h4 class="mb-3">Friend Information</h4>
					<form action="../editok" method="post">
					<input type="hidden" name="id" value="${boardVO.getId()}"/>
						<div class="row g-3">
							<div class="col-sm-6">
								<label for="name" class="form-label">Name</label> <input
									type="text" name="name" placeholder="" id="name"
									class="form-control" value="${boardVO.getName()}"/>
							</div>

							<div class="col-12">
								<label for="email" class="form-label">Email </label> <input
									type="text" name="email" id="email" class="form-control"
									placeholder="you@example.com" value="${boardVO.getEmail()}">
							</div>

							<div class="col-12">
								<label for="phoneNumber" class="form-label">Phone Number</label>
								<input type="text" name="phoneNum" id="phoneNumber"
									class="form-control" placeholder="010-0000-0000" value="${boardVO.getPhoneNum()}">
							</div>

							<div class="col-12">
								<label for="music" class="form-label">Music</label> <input
									type="text" name="music" id="music" class="form-control"
									placeholder="" value="${boardVO.getMusic()}">
							</div>

							<div class="col-12">
								<label for="age" class="form-label">Age</label> <input
									type="number" min="0" max="150" name="age" id="age"
									class="form-control" placeholder="" value="${boardVO.getAge()}">
							</div>

							<div class="col-md-5">
								<label for="gender" class="form-label">Gender</label>
								<div>
									<input type="radio" id="contactChoice1" name="gender"
										value="여자"> <label for="contactChoice1">여자</label> 
										
									<input type="radio" id="contactChoice2" name="gender" value="남자">
									<label for="contactChoice2">남자</label>
								</div>
							</div>

						</div>

						<hr class="my-4">
						
						<button class="w-100 btn btn-outline-primary btn-lg float-right" type="submit">submit</button>
						<input class="btn btn-secondary my-2 float-end" type="button" value="Cancel" onclick="history.back()"/>
					</form>
				</div>
			</div>
		</main>

		<footer class="my-5 pt-5 text-muted text-center text-small">
			<p class="mb-1">&copy; 2021 실전프로젝트</p>
			<ul class="list-inline">
				<li class="list-inline-item"><a href="#">Privacy</a></li>
				<li class="list-inline-item"><a href="#">Terms</a></li>
				<li class="list-inline-item"><a href="#">Support</a></li>
			</ul>
		</footer>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>