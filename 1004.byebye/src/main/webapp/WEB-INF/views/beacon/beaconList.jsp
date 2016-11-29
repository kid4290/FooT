`<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css" />
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script
	src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>
<title>Beacon List Page</title>
<link rel="icon" href="img/circlelogo.png" type="image/x-icon">

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="ionicons/css/ionicons.min.css" rel="stylesheet">

<!-- main css -->
<link href="css/style.css" rel="stylesheet">


<!-- modernizr -->
<script src="js/modernizr.js"></script>
</head>

<body>

	<div data-role="header" data-position="fixed">

		<!-- box header -->
		<header class="box-header">
			<div class="box-logo">
				<a href="index.do"> <img src="img/circlelogo.png" width="50"
					alt="Logo">
				</a>
			</div>
			<!-- box-nav -->
			<a class="box-primary-nav-trigger" href="#0"> <span
				class="box-menu-text">Menu</span><span class="box-menu-icon"></span>
			</a>
			<!-- box-primary-nav-trigger -->
		</header>
		<!-- end box header -->
	</div>

	<div class="content">
		<!-- nav -->
		<nav>
			<ul class="box-primary-nav">
				<li class="box-label">FootFoot</li>
				<li><a href="index.do">HOME</a></li>
				<li><a href="fileBoardDtoFormView.do">INSERT</a></li>
				<li><a href="myPlace.do">MYLIST</a></li>
				<li><a href="listResult.do">BEACON</a><i
					class="ion-ios-circle-filled color"></i></li>
				<li><a href="setting.do">SETTING</a></li>

				<li class="box-label">Follow me</li>

				<li class="box-social"><a href="#0"><i
						class="ion-social-facebook"></i></a></li>
				<li class="box-social"><a href="#0"><i
						class="ion-social-instagram-outline"></i></a></li>
				<li class="box-social"><a href="#0"><i
						class="ion-social-twitter"></i></a></li>
				<li class="box-social"><a href="#0"><i
						class="ion-social-dribbble"></i></a></li>
			</ul>
		</nav>
		<!-- end nav -->
	</div>


	<div class="container main-container">
		<!-- top bar -->
		<div class="top-bar">
			${mac}
			<h1>BEACON</h1>
			<p>
				<a href="#">Home</a> / BEACON
			</p>
		</div>
		<!-- end top bar -->


		<div class="clearfix">

			<!-- service-box -->
			<div class="col-md-4 service-box">
				<i class="ion-android-favorite-outline size-50"></i>
				<h3>BEACON LIST</h3>
				<div class="h-10"></div>
				<table border="1" cellspacing="0">

					<colgroup>
						<col width="100">
						<col width="100">
						<col width="110">
						<col width="100">
						<col width="100">
					</colgroup>
					<thead>
						<tr>
							<th scope="col">Name</th>
							<th scope="col">Location</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="dto" items="${list}">
							<tr>
								<td class="bSpotName"><a href="beacon.do?BId=${dto.B_ID}"
									data-target="#modal_test" type="button" data-toggle="modal">${dto.B_SPOTNAME}</a></td>
								<td class="bLoaction"><a type="button" href="${dto.B_PAGE}">${dto.B_LOCACTION}</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
			<!-- end service-box -->


		</div>
	</div>


	<!-- footer -->
	<div data-role="footer" data-id="persistFooter" data-position="fixed"
		data-theme="c">
		<div data-role="navbar">
			<ul>
				<li><a href="index.do" data-icon="home">Home</a></li>
				<li><a href="fileBoardDtoFormView.do" data-icon="star">Insert</a></li>
				<li><a href="myPlace.do" data-icon="search">MyList</a></li>
				<li><a href="beaconlist.do" data-icon="check">Beacon</a></li>
				<li><a href="setting.do" data-icon="gear">Setting</a></li>
			</ul>
		</div>
	</div>
	<!-- end footer -->

	<!-- back to top -->
	<a href="#0" class="cd-top"><i class="ion-android-arrow-up"></i></a>
	<!-- end back to top -->



	<!-- jQuery -->
	<script src="js/jquery-2.1.1.js"></script>
	<!--  plugins -->
	<script src="js/bootstrap.min.js"></script>
	<script src="js/menu.js"></script>
	<script src="js/animated-headline.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>


	<!--  custom script -->
	<script src="js/custom.js"></script>


	<div class="modal" id="modal_test">

		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<a type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</a>
					<h2 class="modal-title text-center fc-orange">${vo.bSpotName}</h2>
				</div>
				<div class="modal-body">
					<!-- main-container -->
					<div class="content">
						<div class="col-md-3">
							<h3 class="text-uppercase">대 제목</h3>
							<h5>소 제목</h5>
							<div class="h-30"></div>
							<p>내용: ${vo}</p>
							<div class="contact-info">
								<p>
									<i class="ion-android-call"></i> 010 9295 4920
								</p>
								<p>
									<i class="ion-ios-email"></i> box@info.com
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

</body>

</html>