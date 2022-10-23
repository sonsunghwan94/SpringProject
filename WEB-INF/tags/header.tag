<%@ tag language="java" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>

<nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top"
	aria-label="Offcanvas navbar large">
	<div class="container-fluid">
		<a class="navbar-brand  d-flex" href="main.do" role="button"> <img
			alt="logo" height="30" src="images/icon/Logo_petckage_XL.png">
		</a>
		<button class="navbar-toggler" type="button"
			data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar2"
			aria-controls="offcanvasNavbar2">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="offcanvas offcanvas-top text-bg-light" tabindex="-1"
			id="offcanvasNavbar2" aria-labelledby="offcanvasNavbar2Label">
			<div class="offcanvas-header">
				<h5 class="offcanvas-title" id="offcanvasNavbar2Label">PETCATE</h5>
				<button type="button" class="btn-close btn-close-white"
					data-bs-dismiss="offcanvas" aria-label="Close"></button>
			</div>
			<div class="offcanvas-body justify-content-between flex-grow-1">
			<div class="d-flex">
			<form class="d-flex mt-3 mt-lg-0 gap-2" role="search" action="productlist.do">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search" name="searchContent">
					<button class="btn btn-outline-danger" type="submit">Search</button>
					<c:if test="${result!=null}">
						<span class="text-nowrap fs-5 pt-2">${result}(으)로 검색한 결과입니다.</span>
					</c:if>
				</form>
				</div>
				<ul class="navbar-nav pe-3">
					<li class="nav-item"><a class="nav-link d-flex"
						data-bs-toggle="offcanvas" href="#offcanvasExample" role="button"
						aria-controls="offcanvasExample"><img
							src="images/pictogram/list.svg" alt="menu"> menu </a></li>
					<c:choose>
						<c:when test="${empty mid}">
							<li class="nav-item"><a href="login.jsp"
								class="nav-link d-flex"><img
									src="images/pictogram/unlock.svg" alt="Image">login</a></li>
							<li class="nav-item"><a href="login.jsp"
								class="nav-link d-flex"><img
									src="images/pictogram/person.svg" alt="Image">signup</a></li>
						</c:when>
						<c:when test="${not empty mid}">
							<li class="nav-item"><a href="login.jsp"
								class="nav-link d-flex"><img src="images/pictogram/lock.svg"
									alt="Image">logout</a></li>
							<li class="nav-item"><a href="mypage.do"
								class="nav-link d-flex"> <img
									src="images/pictogram/person.svg" alt="Image">mypage
							</a></li>
						</c:when>
					</c:choose>
					<li class="nav-item"><a href="cart.do" class="nav-link d-flex"><img
							src="images/pictogram/cart2.svg" alt="Image">cart</a></li>
				</ul>
				
			</div>
		</div>
	</div>
</nav>
<div class="offcanvas offcanvas-start" tabindex="-1"
	id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
	<div class="offcanvas-header">
		<h5 class="offcanvas-title" id="offcanvasExampleLabel">PETCAGE</h5>
		<button type="button" class="btn-close" data-bs-dismiss="offcanvas"
			aria-label="Close"></button>
	</div>
	<ul class="offcanvas-body">
		<li class="list-group-item"><a data-bs-toggle="collapse"
			href="#dog" aria-expanded="false" aria-controls="dog" class="fs-5">강아지</a>
			<ul class="collapse list-group list-group-flush" id="dog">
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog001" aria-expanded="false" aria-controls="dog">사료</a>
					<ul class="collapse list-group list-group-flush" id="dog001">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053001001&more=12">건식</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053001002&more=12">소프트</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053001003&more=12">습식</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053001004&more=12">건조</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053001005&more=12">분유</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog002" aria-expanded="false" aria-controls="dog"> 간식 </a>
					<ul class="collapse list-group list-group-flush" id="dog002">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002001&more=12">껌</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002002&more=12">사사미</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002003&more=12">저키/트릿</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002004&more=12">비스킷/시리얼</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002005&more=12">소시지</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002006&more=12">캔/파우치</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002007&more=12">건조간식</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002008&more=12">수제간식</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002009&more=12">파우더</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002010&more=12">음료</a></li>
					</ul></li>
				<li class="list-group-item" class="my-1"><a
					data-bs-toggle="collapse" href="#dog003" aria-expanded="false"
					aria-controls="dog"> 건강관리 </a>
					<ul class="collapse list-group list-group-flush" id="dog003">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003001&more=12">종합영양제</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003002&more=12">치아</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003003&more=12">피부/털</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003004&more=12">뼈/관절</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003005&more=12">눈/귀</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003006&more=12">소화기</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003007&more=12">신장/요로</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003008&more=12">심장/심신안정</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003009&more=12">해충방지</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog004" aria-expanded="false" aria-controls="dog"> 위생/배변
				</a>
					<ul class="collapse list-group list-group-flush" id="dog004">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053004001&more=12">배변패드</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053004002&more=12">배변판</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053004003&more=12">기저귀/팬티</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053004004&more=12">탈취/소독</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053004005&more=12">물티슈/크리너</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053004006&more=12">배변봉투/집게</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053004007&more=12">배변 유도제</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053004008&more=12">공기 청정</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog005" aria-expanded="false" aria-controls="dog"> 미용/목욕
				</a>
					<ul class="collapse list-group list-group-flush" id="dog005">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005001&more=12">샴푸/린스</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005002&more=12">에센스/향수</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005003&more=12">브러쉬/거치대</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005004&more=12">클리퍼</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005005&more=12">미용가위</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005006&more=12">발톱/발</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005007&more=12">관리 타월/가운</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005008&more=12">염색약/그루밍 파우더</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005009&more=12">드라이</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=0530050010&more=12">테이블</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=0530050011&more=12">식기/식탁</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog006" aria-expanded="false" aria-controls="dog">
						급수기/급수 </a>
					<ul class="collapse list-group list-group-flush" id="dog006">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053006001&more=12">자동급식기</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053006002&more=12">급수기/물병</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053006003&more=12">정수기/필터</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog007" aria-expanded="false" aria-controls="dog">
						하우스/울타리 </a>
					<ul class="collapse list-group list-group-flush" id="dog007">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053007001&more=12">보관통/사료스푼</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053007002&more=12">젖병 필건/디스펜서</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053007003&more=12">하우스 방석/매트 계단</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053007004&more=12">철장/울타리</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053007005&more=12">안전문</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog008" aria-expanded="false" aria-controls="dog"> 이동장 </a>
					<ul class="collapse list-group list-group-flush" id="dog008">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053008001&more=12">이동 가방</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053008002&more=12">유모차</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053008003&more=12">차량용</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog009" aria-expanded="false" aria-controls="dog">
						의류/악세사리 </a>
					<ul class="collapse list-group list-group-flush" id="dog009">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009001&more=12">티셔츠</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009002&more=12">후드티</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009003&more=12">패딩/코트</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009004&more=12">원피스</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009005&more=12">올인원</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009006&more=12">신발/양말</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009007&more=12">스카프/타이/넥</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009008&more=12">모자/헬멧</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009009&more=12">백팩/벨트</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=0530090010&more=12">옷걸이/보관함</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog010" aria-expanded="false" aria-controls="dog">
						목줄/인식표/리드줄 </a>
					<ul class="collapse list-group list-group-flush" id="dog010">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053010001">목줄</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053010002">가슴줄</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053010003">인식표</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053010004">리드줄</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog011" aria-expanded="false" aria-controls="dog"> 장난감 </a>
					<ul class="collapse list-group list-group-flush" id="dog011">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053011001">봉제 장난감</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053011002">치실 장난감</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053011003">고무 장난감</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053011004">공기 청정</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053011005">원반</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog012" aria-expanded="false" aria-controls="dog"> 훈련 </a>
					<ul class="collapse list-group list-group-flush" id="dog012">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053012001">짖음 제어</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053012002">행동 제어</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053012003">서적</a></li>
					</ul></li>
			</ul></li>
		<li class="my-1 list-group-item"><a data-bs-toggle="collapse"
			href="#cat" aria-expanded="false" aria-controls="cat" class="fs-5">고양이</a>
			<ul class="collapse list-group list-group-flush" id="cat">
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat001" aria-expanded="false" aria-controls="cat">사료</a>
					<ul class="collapse list-group list-group-flush" id="cat001">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052001001">건식 사료</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052001002">캔</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052001003">파우치</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052001004">건조생식</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052001005">분유</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat002" aria-expanded="false" aria-controls="cat"> 간식 </a>
					<ul class="collapse list-group list-group-flush" id="cat002">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052002001">캔</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052002002">파우치</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052002003">건조 간식</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052002004">저키/트릿</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052002005">통살/소시지</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052002006">스낵</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052002007">캣닢/그라스</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052002008">음료</a></li>
					</ul></li>
				<li class="list-group-item" class="my-1"><a
					data-bs-toggle="collapse" href="#cat003" aria-expanded="false"
					aria-controls="cat"> 건강관리 </a>
					<ul class="collapse list-group list-group-flush" id="cat003">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003001">헤어볼</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003002">종합영양제</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003003">치아</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003004">피부/털</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003005">신장/요로</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003006">심장/심신 안정</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003007">소화기</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003008">뼈/관절</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003009">눈/귀 해충 방지</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003010">서적</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat004" aria-expanded="false" aria-controls="cat"> 모래 </a>
					<ul class="collapse list-group list-group-flush" id="cat004">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052004001">응고형 모래</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052004002">흡수형 모래</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052004003">모래 탈취제</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat005" aria-expanded="false" aria-controls="cat"> 위생/배변
				</a>
					<ul class="collapse list-group list-group-flush" id="cat005">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052005001">하우스형 화장실</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052005002">평판형 화장실</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052005003">모래삽</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052005004">화장실 매트</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052005005">배변패드</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052005006">탈취/소독</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052005007">거름망</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052005008">분변 처리</a></li>
						<li class="list-group-item"><a href="#">공기 청정</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat006" aria-expanded="false" aria-controls="cat">미용/목욕
				</a>
					<ul class="collapse list-group list-group-flush" id="cat006">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006001">샴푸/린스</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006002">브러쉬</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006003">발톱/발</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006004">관리</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006005">클리퍼/가위</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006006">물티슈/크리너</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006007">타월</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006008">에센스/향수</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006009">드라이</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006010">테이블</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat007" aria-expanded="false" aria-controls="cat">
						급식기/급수기 </a>
					<ul class="collapse list-group list-group-flush" id="cat007">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052007001">식기/식탁</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052007002">자동급식기</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052007003">급수기/물병</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052007004">정수기/필터</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052007005">보관 통/사료 스푼</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052007006">식기 매트</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052007007">필건/디스펜서</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat008" aria-expanded="false" aria-controls="cat">
						스크래쳐/캣타워 </a>
					<ul class="collapse list-group list-group-flush" id="cat008">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052008001">스크래쳐</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052008002">캣타워</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052008003">리필/로프</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat009" aria-expanded="false" aria-controls="cat"> 하우스 </a>
					<ul class="collapse list-group list-group-flush" id="cat009">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052009001">동굴형 하우스</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052009002">방석/매트</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052009003">철장/울타리</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat010" aria-expanded="false" aria-controls="cat"> 이동장 </a>
					<ul class="collapse list-group list-group-flush" id="cat010">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052010001">이동 가방</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052010002">유모차</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052010003">차량용</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat011" aria-expanded="false" aria-controls="cat">
						의류/악세사리 </a>
					<ul class="collapse list-group list-group-flush" id="cat011">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052011001">스카프/타이/넥</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052011002">목걸이</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052011003">모자/헬멧</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat012" aria-expanded="false" aria-controls="cat"> 훈련 </a>
					<ul class="collapse list-group list-group-flush" id="cat012">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052012001">목줄</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052012002">가슴줄</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat013" aria-expanded="false" aria-controls="cat"> 장난감 </a>
					<ul class="collapse list-group list-group-flush" id="cat013">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052013001">낚시/막대</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052013002">인형/쿠션</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052013003">공기 청정</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052013004">터널/주머니</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052013005">레이저/자동</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052013006">리필/로프</a></li>
					</ul></li>
			</ul></li>
	</ul>
</div>
<div class="mt-4 pt-4"></div>