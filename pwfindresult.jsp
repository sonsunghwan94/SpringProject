<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ryo" tagdir="/WEB-INF/tags"%>
<!-- /*
* Template Name: Style
* Template Author: Untree.co
* Tempalte URI: https://untree.co/
* License: https://creativecommons.org/licenses/by/3.0/
*/ -->
<!doctype html>
<html lang="en">
<head>
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
	<style>
* {
	font-family: 'Do Hyeon', sans-serif;
}

</style>
</head>
<body>

<ryo:header/>

	
	<!-- pw값 보내기 -->
	<div class="container pt-5">
	<div class=" border-bottom border-4 mb-4">
				<h3 class="fs-4 m-2">비밀번호 찾기</h3>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-12 text-center pt-5">
						<c:if test="${member.mid!=null}">
						<p class="lead mb-5">아이디에 맞는 비밀번호를 성공적으로 찾았습니다.</p>
						<p class="lead mb-5">아이디의 비밀번호는 [${member.mpw}]입니다.</p>
						<p class="mb-5"><a href="login.jsp" class="btn btn-outline-primary">로그인하러 가기</a></p>
						</c:if>
						<c:if test="${member.mid==null}">
						<p class="lead mb-5">회원님의 아이디가 존재하지 않습니다.</p>
						<p class="lead mb-5">회원가입을 진행해 주세요.</p>
						<p class="mb-5 gap-2"><a href="login.jsp" class="mx-2 btn btn-outline-primary">로그인</a><a href="personagree.jsp" class="btn btn-outline-primary">회원가입</a></p>
						</c:if>
					</div>
				</div>
			</div>
		</div>

	
<ryo:footer/>


</body>
</html>