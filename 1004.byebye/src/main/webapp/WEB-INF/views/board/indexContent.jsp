<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum=scale=1.0,minimum-scale=1.0,user-scalable=no">
    <title>Box personal portfolio Template</title>
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
                <a href="index.do"><img src="img/circlelogo.png" width="100" alt="Logo"></a>
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
				<li><a href="insertBoard.do">Insert</a></li>
				<li><a href="myBoardList.do">MyList</a></li>
				<li><a href="beaconlist.do">Beacon</a></li>
				<li><a href="setting.do">Setting</a></li>
            </ul>
        </nav>
        <!-- end nav -->    

<!-- 뒤로가기 버튼 -->
<!--  <span class="box-menu-text"> -->
<!-- <a href="#" onClick="history.back()" style="width:70px;float:right;" data-role="button" data-icon="back" data-theme="c" 			aria-hidden="true">이전</a> -->
<!-- </span> -->

<div data-role="content">
    
    <!-- Top bar -->
    <div class="top-bar">
        <h1>Posts</h1>
    </div>
    <!-- end Top bar -->
    
    <!-- Main container -->
     <div class="container main-container">
        <div class="col-md-6">
            <img src="imgLoad.do?fileName=${picFile}" class="img-responsive" alt="" />
        </div>
        <div class="col-md-6">
           <h3 class="uppercase">${docNum} </h3>
           <h5>Where : ${place}</h5>
           <div class="h-30"></div>
            <p>${docCon} </p>
            <p>with ${docTag}</p>
            
		<div class="col-md-12">
			<a href="otherPlaceList.do?id=${userid}"><input type="button" value="남의것조회"/></a>
		</div>
		<div class="col-md-12">
            <a href="updateContentView.do?seq=${docNum}&&seq1=${userid}"><input type="button"  value="수정"/></a>
        </div>
        <span class="col-md-12">
        	<a href="deletePlace.do?seq=${docNum}&&seq1=${userid}"><input type="button"  value="삭제"/></a>
        </span>
        </div>
    </div>
    <!-- end Main container -->
</div>
    
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