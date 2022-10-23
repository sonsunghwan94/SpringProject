<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="pf" tagdir="/WEB-INF/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta name="referrer" content="no-referrer" />
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Untree.co">
<link rel="shortcut icon" href="1234.png">
<meta name="description" content="" />
<meta name="keywords" content="free template, bootstrap, bootstrap4" />
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Single+Day&display=swap"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Crimson+Text:ital@0;1&family=Playfair+Display:ital,wght@0,400;0,700;1,400;1,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="fonts/feather/style.css">
<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="js/bootstrap.min.js">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="js/jquery-3.6.1.min.js">

<title>펫키지</title>
<style type="text/css">
#star a {
	text-decoration: none;
	color: gray;
}

#star a.on {
	color: red;
}

li {
	list-style: none;
}

* {
	font-family: 'Do Hyeon', sans-serif;
}

a {
	text-decoration: none;
}

</style>
</head>
<body>
	<!--헤더-->
	<pf:header />
	<!-- 찐바디 -->
	<div class="container mt-4 pt-4">
		<div class=" border-bottom border-4 mb-4">
			<h3 class="fs-4 m-2">상품 목록</h3>
		</div>
		<div class="row mb-5">
		<c:forEach items="${datas}" var="i">
			<div class="col-md-3 mb-5">
				<div class="card">
					<a href="detail.do?iid=${i.iid}"> <img src="${i.iimg}"
						alt="Free Website Template by Untree.co" class="card-img-top">
					</a>
					<div class="card-body">
						<ul class="list-group list-group-flush">
							<li class="list-group-item">${i.iname}</li>
							<li class="list-group-item  text-danger">${i.iprice}</li>
							<li class="list-group-item"><c:if test="${i.star==0}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a  >★</a>
												<!-- 자식들-->
												<a >★</a> <a >★</a> <a >★</a> <a
													>★</a>
											<p>
										</div>
									</c:if> 
								<c:if test="${i.star==1}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a class="text-warning">★</a>
												<!-- 자식들-->
												<a >★</a> <a >★</a> <a >★</a> <a
													>★</a>
											<p>
										</div>
									</c:if> 
									<c:if test="${i.star==2}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a class="text-warning">★</a>
												<!-- 자식들-->
												<a class="text-warning">★</a> <a >★</a> <a
													>★</a> <a >★</a>
											<p>
										</div>
									</c:if> <c:if test="${i.star==3}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a class="text-warning">★</a>
												<!-- 자식들-->
												<a class="text-warning">★</a> <a 
													class="text-warning">★</a> <a >★</a> <a >★</a>
											<p>
										</div>
									</c:if> <c:if test="${i.star==4}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a class="text-warning">★</a>
												<!-- 자식들-->
												<a class="text-warning">★</a> <a
													class="text-warning">★</a> <a class="text-warning">★</a>
												<a >★</a>
											<p>
										</div>
									</c:if> <c:if test="${i.star==5}">
										<div class="form-group">
											<P id="star" style="white-space: nowrap">
												<!-- 부모 -->
												<a class="text-warning">★</a>
												<!-- 자식들-->
												<a class="text-warning">★</a> <a 
													class="text-warning">★</a> <a class="text-warning">★</a>
												<a class="text-warning">★</a>
											<p>
										</div>
									</c:if></li>
						</ul>
					</div>
				</div>
			</div>
		</c:forEach>
		</div>
		<c:if test="${flag!=1}">
			<c:if test="${icategory!=null}">
				<div class="form-group">
					<button
						onclick="location.href='productlist.do?icategory=${icategory}&more=${more+12}'"
						class="btn btn-outline-black btn-block">더보기</button>
				</div>
			</c:if>
			<c:if test="${search!=null}">
				<div class="form-group">
					<button
						onclick="location.href='productlist.do?searchContent=${search}&more=${more+12}'"
						class="btn btn-outline-black btn-block">더보기</button>
				</div>
			</c:if>
		</c:if>
	</div>
	<!-- 푸터부분 -->
	<pf:footer />
</body>
</html>