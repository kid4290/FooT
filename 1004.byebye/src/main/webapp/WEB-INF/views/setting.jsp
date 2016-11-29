<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum=scale=1.0,minimum-scale=1.0,user-scalable=no">
<title>Header,Footer 고정</title>
<!-- <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css" /> -->
<link href="css/jquery.mobile-1.3.1.min.css" rel="stylesheet">
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

<style type="text/css">
.tl_tr {
text-align: center;
}
.tl_tb {
text-align: center;
}
</style>

</head>
<body>

 <div data-role="header" data-position="fixed" >
   <header class="box-header">
      <div class="box-logo">
         <a href="index.do">
         <img src="img/circlelogo.png" width="50" alt="Logo">
         </a>
      </div>
            <!-- box-nav -->
            <a class="box-primary-nav-trigger" href="#0">
                <span class="box-menu-text">Menu</span><span class="box-menu-icon"></span>
            </a>
        </header>
        </div>
        
        <div class="content">
        <!-- nav -->
        <nav >
            <ul class="box-primary-nav">
                 <li class="box-label">FootFoot</li>
		         <li><a href="index.do">HOME</a></li>
		         <li><a href="fileBoardDtoFormView.do">INSERT</a></li>
		         <li><a href="myPlace.do">MYLIST</a><i class="ion-ios-circle-filled color"></i></li>
		         <li><a href="beaconlist.do">BEACON</a></li>
		         <li><a href="setting.do">SETTING</a></li>
		         
                <li class="box-label">Follow me</li>

                <li class="box-social"><a href="http://m.facebook.com"><i class="ion-social-facebook"></i></a></li>
                <li class="box-social"><a href="http://www.instagram.com"><i class="ion-social-instagram-outline"></i></a></li>
                <li class="box-social"><a href="http://mobile.twitter.com"><i class="ion-social-twitter"></i></a></li>
                <li class="box-social"><a href="http://m.naver.com"><i class="ion-steam"></i></a></li>
            </ul>
        </nav>
        <!-- end nav -->
        </div>
 
<<<<<<< HEAD
 <div class="main-container portfolio-inner clearfix">
 <!-- top bar -->
    <div class="top-bar">
        <h1>my photo</h1>
        <p><a href="#">Home</a> </p>
    </div>
    <!-- end top bar -->
 
  <table>
   <tr>
    <td height="300">content1</td>
   </tr>
    <tr>
    <td height="300">content1</td>
   </tr>
    <tr>
    <td height="300">content1</td>
   </tr>
    <tr>
    <td height="300">content1</td>
   </tr>
    <tr>
    <td height="300">content1</td>
   </tr>
    <tr>
    <td height="300">content1</td>
   </tr>
    <tr>
    <td height="300">content1</td>
   </tr>
  </table>
 
  </div>
  
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
 
 
 <!-- div 종료 -->
=======
<div class="main-container portfolio-inner clearfix">
	<!-- top bar -->
	<div class="top-bar">
		<h1>Setting</h1>
		<p><a href="#">당신의 설정을 도와드립니다.</a></p>
	</div>
	<!-- end top bar -->

	<table>
	<tr class="tl_tr">
	<td class="tl_td" height="150" style="border: 1px solid red;">로그인 계정정보</td>
	</tr>
	
	<tr class="tl_tr">
	<td class="tl_td" height="150" style="border: 1px solid orange;">로그아웃</td>
	</tr>
	
	<tr class="tl_tr">
	<td class="tl_td" height="150" style="border: 1px solid yellow;">내가 쓴 댓글</td>
	</tr>
	
	<tr class="tl_tr">
	<td class="tl_td" height="150" style="border: 1px solid green;">알림 설정</td>
	</tr>
	
	<tr class="tl_tr">
	<td class="tl_td" height="150" style="border: 1px solid blue;">회원탈퇴</td>
	</tr>
	</table>
</div>

<div data-role="footer" data-id="persistFooter" data-position="fixed"
	data-theme="c">
<div data-role="navbar">
	<ul>
	<li><a href="index.do"><i class="ion-android-home"></i>&nbsp;Home</a></li>
	<li><a href="fileBoardDtoFormView.do"><i class="ion-android-create"></i>&nbsp;Insert</a></li>
	<li><a href="myPlace.do"><i class="ion-android-list"></i>&nbsp;MyList</a></li>
	<li><a href="list.do"><i class="ion-android-wifi"></i>&nbsp;Beacon</a></li>
	<li><a href="setting.do"><i class="ion-android-settings"></i>&nbsp;Setting</a></li>
	</ul>
</div>
</div>


<!-- div 종료 -->
>>>>>>> branch 'master' of https://github.com/kid4290/FootFoot.git

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
