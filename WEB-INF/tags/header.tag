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
						<span class="text-nowrap fs-5 pt-2">${result}(��)�� �˻��� ����Դϴ�.</span>
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
			href="#dog" aria-expanded="false" aria-controls="dog" class="fs-5">������</a>
			<ul class="collapse list-group list-group-flush" id="dog">
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog001" aria-expanded="false" aria-controls="dog">���</a>
					<ul class="collapse list-group list-group-flush" id="dog001">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053001001&more=12">�ǽ�</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053001002&more=12">����Ʈ</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053001003&more=12">����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053001004&more=12">����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053001005&more=12">����</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog002" aria-expanded="false" aria-controls="dog"> ���� </a>
					<ul class="collapse list-group list-group-flush" id="dog002">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002001&more=12">��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002002&more=12">����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002003&more=12">��Ű/Ʈ��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002004&more=12">��Ŷ/�ø���</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002005&more=12">�ҽ���</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002006&more=12">ĵ/�Ŀ�ġ</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002007&more=12">��������</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002008&more=12">��������</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002009&more=12">�Ŀ��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053002010&more=12">����</a></li>
					</ul></li>
				<li class="list-group-item" class="my-1"><a
					data-bs-toggle="collapse" href="#dog003" aria-expanded="false"
					aria-controls="dog"> �ǰ����� </a>
					<ul class="collapse list-group list-group-flush" id="dog003">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003001&more=12">���տ�����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003002&more=12">ġ��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003003&more=12">�Ǻ�/��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003004&more=12">��/����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003005&more=12">��/��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003006&more=12">��ȭ��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003007&more=12">����/���</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003008&more=12">����/�ɽž���</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053003009&more=12">�������</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog004" aria-expanded="false" aria-controls="dog"> ����/�躯
				</a>
					<ul class="collapse list-group list-group-flush" id="dog004">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053004001&more=12">�躯�е�</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053004002&more=12">�躯��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053004003&more=12">������/��Ƽ</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053004004&more=12">Ż��/�ҵ�</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053004005&more=12">��Ƽ��/ũ����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053004006&more=12">�躯����/����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053004007&more=12">�躯 ������</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053004008&more=12">���� û��</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog005" aria-expanded="false" aria-controls="dog"> �̿�/���
				</a>
					<ul class="collapse list-group list-group-flush" id="dog005">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005001&more=12">��Ǫ/����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005002&more=12">������/���</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005003&more=12">�귯��/��ġ��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005004&more=12">Ŭ����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005005&more=12">�̿밡��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005006&more=12">����/��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005007&more=12">���� Ÿ��/����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005008&more=12">������/�׷�� �Ŀ��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053005009&more=12">�����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=0530050010&more=12">���̺�</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=0530050011&more=12">�ı�/��Ź</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog006" aria-expanded="false" aria-controls="dog">
						�޼���/�޼� </a>
					<ul class="collapse list-group list-group-flush" id="dog006">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053006001&more=12">�ڵ��޽ı�</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053006002&more=12">�޼���/����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053006003&more=12">������/����</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog007" aria-expanded="false" aria-controls="dog">
						�Ͽ콺/��Ÿ�� </a>
					<ul class="collapse list-group list-group-flush" id="dog007">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053007001&more=12">������/��ὺǬ</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053007002&more=12">���� �ʰ�/���漭</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053007003&more=12">�Ͽ콺 �漮/��Ʈ ���</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053007004&more=12">ö��/��Ÿ��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053007005&more=12">������</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog008" aria-expanded="false" aria-controls="dog"> �̵��� </a>
					<ul class="collapse list-group list-group-flush" id="dog008">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053008001&more=12">�̵� ����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053008002&more=12">������</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053008003&more=12">������</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog009" aria-expanded="false" aria-controls="dog">
						�Ƿ�/�Ǽ��縮 </a>
					<ul class="collapse list-group list-group-flush" id="dog009">
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009001&more=12">Ƽ����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009002&more=12">�ĵ�Ƽ</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009003&more=12">�е�/��Ʈ</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009004&more=12">���ǽ�</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009005&more=12">���ο�</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009006&more=12">�Ź�/�縻</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009007&more=12">��ī��/Ÿ��/��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009008&more=12">����/���</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=053009009&more=12">����/��Ʈ</a></li>
						<li class="list-group-item"><a
							href="productlist.do?icategory=0530090010&more=12">�ʰ���/������</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog010" aria-expanded="false" aria-controls="dog">
						����/�ν�ǥ/������ </a>
					<ul class="collapse list-group list-group-flush" id="dog010">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053010001">����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053010002">������</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053010003">�ν�ǥ</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053010004">������</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog011" aria-expanded="false" aria-controls="dog"> �峭�� </a>
					<ul class="collapse list-group list-group-flush" id="dog011">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053011001">���� �峭��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053011002">ġ�� �峭��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053011003">�� �峭��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053011004">���� û��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053011005">����</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#dog012" aria-expanded="false" aria-controls="dog"> �Ʒ� </a>
					<ul class="collapse list-group list-group-flush" id="dog012">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053012001">¢�� ����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053012002">�ൿ ����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=053012003">����</a></li>
					</ul></li>
			</ul></li>
		<li class="my-1 list-group-item"><a data-bs-toggle="collapse"
			href="#cat" aria-expanded="false" aria-controls="cat" class="fs-5">�����</a>
			<ul class="collapse list-group list-group-flush" id="cat">
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat001" aria-expanded="false" aria-controls="cat">���</a>
					<ul class="collapse list-group list-group-flush" id="cat001">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052001001">�ǽ� ���</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052001002">ĵ</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052001003">�Ŀ�ġ</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052001004">��������</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052001005">����</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat002" aria-expanded="false" aria-controls="cat"> ���� </a>
					<ul class="collapse list-group list-group-flush" id="cat002">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052002001">ĵ</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052002002">�Ŀ�ġ</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052002003">���� ����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052002004">��Ű/Ʈ��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052002005">���/�ҽ���</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052002006">����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052002007">Ĺ��/�׶�</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052002008">����</a></li>
					</ul></li>
				<li class="list-group-item" class="my-1"><a
					data-bs-toggle="collapse" href="#cat003" aria-expanded="false"
					aria-controls="cat"> �ǰ����� </a>
					<ul class="collapse list-group list-group-flush" id="cat003">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003001">��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003002">���տ�����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003003">ġ��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003004">�Ǻ�/��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003005">����/���</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003006">����/�ɽ� ����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003007">��ȭ��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003008">��/����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003009">��/�� ���� ����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052003010">����</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat004" aria-expanded="false" aria-controls="cat"> �� </a>
					<ul class="collapse list-group list-group-flush" id="cat004">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052004001">������ ��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052004002">����� ��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052004003">�� Ż����</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat005" aria-expanded="false" aria-controls="cat"> ����/�躯
				</a>
					<ul class="collapse list-group list-group-flush" id="cat005">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052005001">�Ͽ콺�� ȭ���</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052005002">������ ȭ���</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052005003">�𷡻�</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052005004">ȭ��� ��Ʈ</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052005005">�躯�е�</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052005006">Ż��/�ҵ�</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052005007">�Ÿ���</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052005008">�к� ó��</a></li>
						<li class="list-group-item"><a href="#">���� û��</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat006" aria-expanded="false" aria-controls="cat">�̿�/���
				</a>
					<ul class="collapse list-group list-group-flush" id="cat006">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006001">��Ǫ/����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006002">�귯��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006003">����/��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006004">����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006005">Ŭ����/����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006006">��Ƽ��/ũ����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006007">Ÿ��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006008">������/���</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006009">�����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052006010">���̺�</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat007" aria-expanded="false" aria-controls="cat">
						�޽ı�/�޼��� </a>
					<ul class="collapse list-group list-group-flush" id="cat007">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052007001">�ı�/��Ź</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052007002">�ڵ��޽ı�</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052007003">�޼���/����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052007004">������/����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052007005">���� ��/��� ��Ǭ</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052007006">�ı� ��Ʈ</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052007007">�ʰ�/���漭</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat008" aria-expanded="false" aria-controls="cat">
						��ũ����/ĹŸ�� </a>
					<ul class="collapse list-group list-group-flush" id="cat008">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052008001">��ũ����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052008002">ĹŸ��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052008003">����/����</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat009" aria-expanded="false" aria-controls="cat"> �Ͽ콺 </a>
					<ul class="collapse list-group list-group-flush" id="cat009">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052009001">������ �Ͽ콺</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052009002">�漮/��Ʈ</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052009003">ö��/��Ÿ��</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat010" aria-expanded="false" aria-controls="cat"> �̵��� </a>
					<ul class="collapse list-group list-group-flush" id="cat010">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052010001">�̵� ����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052010002">������</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052010003">������</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat011" aria-expanded="false" aria-controls="cat">
						�Ƿ�/�Ǽ��縮 </a>
					<ul class="collapse list-group list-group-flush" id="cat011">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052011001">��ī��/Ÿ��/��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052011002">�����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052011003">����/���</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat012" aria-expanded="false" aria-controls="cat"> �Ʒ� </a>
					<ul class="collapse list-group list-group-flush" id="cat012">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052012001">����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052012002">������</a></li>
					</ul></li>
				<li class="list-group-item"><a data-bs-toggle="collapse"
					href="#cat013" aria-expanded="false" aria-controls="cat"> �峭�� </a>
					<ul class="collapse list-group list-group-flush" id="cat013">
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052013001">����/����</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052013002">����/���</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052013003">���� û��</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052013004">�ͳ�/�ָӴ�</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052013005">������/�ڵ�</a></li>
						<li class="list-group-item"><a
							href="productlist.do?more=12&icategory=052013006">����/����</a></li>
					</ul></li>
			</ul></li>
	</ul>
</div>
<div class="mt-4 pt-4"></div>