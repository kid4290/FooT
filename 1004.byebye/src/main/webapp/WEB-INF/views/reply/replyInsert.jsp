<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum=scale=1.0,minimum-scale=1.0,user-scalable=no">
<title>INSERT</title>

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

<div class="container-fluid"> 

<!-- box-header -->
<header class="box-header">
	<div class="box-logo">
	    <a href="index.html"><img src="img/logo.png" width="80" alt="Logo"></a>
	</div>
</header>
<!-- end box-header -->
        
<!-- nav -->
<nav>
<ul class="box-primary-nav">
	<li class="box-label">FootFoot</li>
	
	<li><a href="index.html">HOME</a></li>
	<li><a href="fileBoardDtoFormView.do">INSERT</a></li>
	<li><a href="listResult.do">BEACON</a></li>
	<li><a href="myPlace.do">MYLIST</a><i class="ion-ios-circle-filled color"></i></li>
	<li><a href="#">SETTING</a></li>

	<li class="box-label">Follow me</li>

	<li class="box-social"><a href="#0"><i class="ion-social-facebook"></i></a></li>
	<li class="box-social"><a href="#0"><i class="ion-social-instagram-outline"></i></a></li>
	<li class="box-social"><a href="#0"><i class="ion-social-twitter"></i></a></li>
	<li class="box-social"><a href="#0"><i class="ion-social-dribbble"></i></a></li>
</ul>
</nav>
<!-- end nav -->  
</div>

<!-- Top bar -->
<div class="top-bar">
	<h1>내 프로필 정도?</h1>
	<p><a href="#">Home 링크</a> / About me</p>
</div>
<!-- end Top bar -->
    
<!-- Main container -->
<div class="container main-container clearfix"> 
	<form action="reply.do?seq=${docNum}" method="POST">
	<div class="col-md-6">
	<h3 class="uppercase"><input type="text" name="docNum" id="docNum" value="${docNum}" readOnly> </h3>
	<h5>Writer : <input type="text" name="userId" id="userId" value="${userid}" readOnly></h5>
	<div class="h-30"></div>
	<p>reply <input type="text" name="reCon" id="reCon"> </p>
	<div class="h-10"></div>
	<ul class="social-ul">
		<li class="box-social"><a href="#0"><i class="ion-social-facebook"></i></a></li>
		<li class="box-social"><a href="#0"><i class="ion-social-instagram-outline"></i></a></li>
		<li class="box-social"><a href="#0"><i class="ion-social-twitter"></i></a></li>
		<li class="box-social"><a href="#0"><i class="ion-social-dribbble"></i></a></li>
	</ul>
	
	<div class="col-md-12">
		<input type="submit" class="btn btn-box" value="확인"/>
	</div>
	</div>
	</form>
</div>
<!-- end Main container -->

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

</body>
</html>