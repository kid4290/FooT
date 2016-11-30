<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum=scale=1.0,minimum-scale=1.0,user-scalable=no">
<title>BEACON LIST</title>

<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css" />
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="icon" href="img/circlelogo.png" type="image/x-icon">

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="ionicons/css/ionicons.min.css" rel="stylesheet">

<!-- main css -->
<link href="css/style.css" rel="stylesheet">

<!-- modernizr -->
<script src="js/modernizr.js"></script>
<script src="js/jindo_coo_ajax.js"></script>

</head>
<body>

<div data-role="header" data-position="fixed">
	<header class="box-header">
	<div class="box-logo">
	<a href="index.do"><img src="img/circlelogo.png" width="50" alt="Logo"></a>
	</div>
	</header>
</div>

<div class="container main-container">
	<!-- top bar -->
	<div class="top-bar">
		${mac}
		<h1>BEACON</h1>
		<p><a href="#">Home</a> / BEACON</p>
	</div>
	<!-- end top bar -->

	<div class="clearfix">
		<!-- service-box -->
		<div class="col-md-4 service-box">
		<i class="ion-android-favorite-outline size-50"></i>
		<h3>BEACON LIST</h3>
		<div class="h-10"></div>
		
		<table border="1">
		<colgroup>
			<col width="100">
			<col width="100">
			<col width="110">
			<col width="100">
			<col width="100">
		</colgroup>
						
		<thead>
			<tr>
				<th scope="col">No.1</th>
				<th scope="col">Beacon</th>
				<th scope="col">Location</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="dto" items="${list}">
			<tr>
				<td class="bId"><input readonly="readonly" value="${dto.B_ID}"></td>
				<td class="bSpotName"><a data-target="#modal_test" type="button" data-toggle="modal" onclick="modalC('${dto.B_SPOTNAME}','${dto.B_LOCACTION}','${dto.B_PAGE}','${dto.B_ID}','${dto.B_IMG}');">${dto.B_SPOTNAME}</a></td>
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
<div data-role="footer" data-id="persistFooter" data-position="fixed" data-theme="c">
<div data-role="navbar" >
	<ul>
	<li><a href="index.do" data-icon="home" >Home</a></li>
	<li><a href="fileBoardDtoFormView.do" data-icon="star">Insert</a></li>
	<li><a href="myPlace.do" data-icon="search" >MyList</a></li>
	<li><a href="beaconlist.do" data-icon="check" >Beacon</a></li>
	<li><a href="setting.do" data-icon="gear">Setting</a></li>
	</ul>
</div>
</div>
<!-- end footer -->

<!-- div 종료 -->

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
		<a type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</a>
		<h2 class="modal-title text-center fc-orange" id="bigName1">메인</h2>
	</div>
	
	<div class="modal-body">
		<!-- main-container -->
		<div class="content">
			<div class="col-md-3">
			<h3 class="text-uppercase" id="bigName2">대 제목</h3>
			<h5 id="bigName4">소 제목</h5>
				<div class="h-30"></div>
				<p><img id="imgSrc" src="img/lotte.png"></p>
				<div class="contact-info">
<!-- 				<p><i class="ion-android-call"></i>전화번호 넣을자리</p> -->
				<i class="ion-ios-email"></i><p id="bigName3"></p>
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
<script type="text/javascript">
function modalC(object1,object2,object3,object4,object5){
	$('#bigName1').html(object1);
	$('#bigName2').html(object2);
	$('#bigName3').html(object3);
	$('#bigName4').html(object4);
	$('#imgSrc').attr("src",object5);
}
</script>
</body>
</html>