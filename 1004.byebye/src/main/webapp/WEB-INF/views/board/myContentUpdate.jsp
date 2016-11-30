<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>
    <title>수정 페이지</title>
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


 <div data-role="header" data-position="fixed" >
       <!-- box-header -->
        <header class="box-header">
      <div class="box-logo">
         <a href="index.do">
         <img src="img/circlelogo.png" width="50" alt="Logo">
         </a>
         <!-- 뒤로가기 버튼 -->
         <span class="box-menu-text">
        <a href="#" onClick="history.back()" style="width:70px;float:right;" data-role="button" data-icon="back" data-theme="c" 			aria-hidden="true">이전</a>
        </span>
      </div>
        </header>
        <!-- end box-header -->
        </div>
        
        <div class="content"> 
    </div>
    
    <div class="container main-container clearfix">
    <!-- Top bar -->
    <div class="top-bar">
        <h1>내 프로필 정도?</h1>
        <p><a href="#">Home 링크</a> / About me</p>
    </div>
    <!-- end Top bar -->
    
    <!-- Main container -->
     
        <div class="col-md-6">
            <img src="http://localhost:8090/spring15/imgLoad.do?fileName=${picFile}" class="img-responsive" />
        </div>
        <form action="updateContent.do?seq=${docNum}" method="POST">
        <div class="col-md-6">
           <h3 class="uppercase"><input type="text" name="docNum" id="docNum" value="${docNum}" readOnly> </h3>
           <h5>Where : <input type="text" name="place" id="place" value="${place}"></h5>
           <div class="h-30"></div>
            <p>Contents <input type="text" name="docCon" id="docCon" value="${docCon}"> </p>

            <p>with <input type="text" name="docTag" id="docTag" value="${docTag}"></p>
            <div class="h-10"></div>

		<div class="col-md-12">
            <input type="submit"  value="확인"/>
        
        </div>
        </div>
        </form>
    </div>
    <!-- end Main container -->


    <!-- footer -->
   <div data-role="footer" data-id="persistFooter" data-position="fixed" data-theme="c">
  <div data-role="navbar">
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