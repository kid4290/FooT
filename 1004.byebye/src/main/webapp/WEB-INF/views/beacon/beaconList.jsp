<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum=scale=1.0,minimum-scale=1.0,user-scalable=no">
<title>BEACON LIST</title>

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
<script type="text/javascript"
		src="http://apis.daum.net/maps/maps3.js?apikey=d9d5aabffb52cda458f3d0c2f07c8553&libraries=services"></script>

</head>
<body>

        <!-- box header -->
        <header class="box-header">
            <div class="box-logo">
                <a href="index.do"><img src="img/circlelogo.png" width="50" alt="Logo"></a>
            </div>
            <!-- box-nav -->
            <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon"></span>
            </a>
            <!-- box-primary-nav-trigger -->
        </header>
        <!-- end box header -->

        <!-- nav -->
        <nav>
            <ul class="box-primary-nav">
                <li class="box-label">MENU</li>           
				<li><a href="index.do">Home</a><i class="ion-ios-circle-filled color"></i></li>
				<li><a href="fileBoardDtoFormView.do">Insert</a></li>
				<li><a href="myPlace.do">MyList</a></li>
				<li><a href="beaconlist.do">Beacon</a></li>
				<li><a href="setting.do">Setting</a></li>
            </ul>
        </nav>
        <!-- end nav -->

<div data-role="content">

	<!-- top bar -->
	<div class="top-bar">
		<h1>BEACON</h1>
	</div>
	<!-- end top bar -->


	<div class="clearfix">
		<!-- service-box -->
		<div class="col-md-4 service-box">
		<i class="ion-android-favorite-outline size-50"></i>
		<h3>BEACON LIST</h3>
		<div class="h-10"></div>
		
	<div class="container main-container">	
		<table style="width:100%;border:1px solid;">
		<colgroup>
			<col width="20%">
			<col width="40%">
			<col width="40%">
		</colgroup>
						
		<thead style="width:100%;border:1px solid;">
			<tr class="tl_theadtr">
				<th scope="col">No.1</th>
				<th scope="col">Beacon</th>
				<th scope="col">Location</th>
			</tr>
		</thead>
		
		<tbody>
			 <c:choose>
             <c:when test="${!empty list}">
			<c:forEach var="dto" items="${list}">
			<tr>
				<td class="bId"><a type="button" href="#">${dto.B_IDX}</a></td>
				<td class="bSpotName"><a data-target="#modal_test" type="button" data-toggle="modal" onclick="modalC('${dto.B_SPOTNAME}','${dto.B_LOCACTION}','${dto.B_PAGE}','${dto.B_ID}','${dto.B_IMG}');">${dto.B_SPOTNAME}</a></td>
				<td class="bLoaction"><a type="button" href="${dto.B_PAGE}">${dto.B_LOCACTION}</a></td>
			</tr>
			</c:forEach>
			</c:when>
			<c:otherwise>
			Bluetooth does not exist
			</c:otherwise>
       </c:choose>
		</tbody>
		</table>
		
		</div>
		<!-- end service-box -->
	</div>
</div>
</div>

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
				<p><img id="imgSrc" style="width:100%;"></p>
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