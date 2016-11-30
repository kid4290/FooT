<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="work.com.byebye.dto.UserDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum=scale=1.0,minimum-scale=1.0,user-scalable=no">
<title>SETTING</title>

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

	<style>
	input[type="buttonn" i], input[type="file" i]::-webkit-file-upload-button, button {
		align-items: flex-start;
		text-align: center;
		color: buttontext;
		background-color: buttonface;
		box-sizing: border-box;
	}
	input[type="file" i] {
		align-items: baseline;
		color: inderit;
		text-align: start;
	}
	.imagebtn {
		border: 0;
		height: 100%;
		width: 100%;
		padding: 0;
		align-items: flex-start;
		text-align: center;
	}
	.imagediv {
		height: 152px;
		width: 152px;
		display: block;
		border-radius: 50%;
		box-sizing: border-box;
		overflow: hidden;
		margin: 0px auto;
	}
	.imagepart {
		width: 100%;
		height: 100%;
		
		left: 0;
		top: 0;
		margin: 0;
		padding: 0;
		border: 0;
		font: inherit;
		vertical-align: baseline;
		text-align: center;
	}
	.myimage2 {
		width: auto;
		height: auto;
		float: left;
	}
	.myimage {
		flex-shrink: 0;
		align-items: stretch;
		box-sizing: border-box;
		display: flex;
		-webkit-box-orient: vertical;
		-webkit-box-direction: normal;
		flex-direction: column;
		margin-top: 20px;
		float:center;
	}
	.tl_settingtable {
		margin: 0px auto;
		width: 90%;
	}
	.tl_trr {
		text-align: center;
	}
	.tl_tdd {
		text-align: center;
		height: auto; 
	}
	</style>

</head>
<body>

<div data-role="header" data-position="fixed">
	<header class="box-header">
	<div class="box-logo">
	<a href="index.do"><img src="img/circlelogo.png" width="50" alt="Logo"></a>
	</div>
	</header>
</div>

<div class="main-container portfolio-inner clearfix">
	<!-- top bar -->
	<div class="top-bar">
		<h1>Setting</h1>
		<p><a href="#">당신의 설정을 도와드립니다.</a></p>
	</div>
	<!-- end top bar -->
	
<div class="tl_settingform">
<table class="tl_settingtable">
	<tr class="tl_trr">
	<td class="tl_tdd">
	<div class="myimage">
		<div class="imagediv">
			<div class="imagebtn">
			<img alt="프로필 사진 바꾸기" class="imagepart" src="${dto.userimg}">
			</div>

		</div>
		
	<div class="myimage2">
		<form>
			<input type="file" accept="image/jpeg" class="imagefile">
		</form>
	</div>

	</div>
	</td>
	</tr>
	
	<tr class="tl_tr">
	<td class="tl_td" height="200" style="border: 1px solid green;">내가 쓴 댓글</td>
	</tr>
	
	<tr class="tl_tr">
	<td class="tl_td" height="50">
<!-- 		<a type="button" href="logout.do">로그아웃</a> -->
			<input type="button" value="카카오톡로그아웃" onclick="kakaologout()">
	</td>
	</tr>
	
	<tr class="tl_tr">
	<td class="tl_td" height="50">
		<a type="button" href="#">알림설정</a>
	</td>
	</tr>
	
	<tr class="tl_tr">
	<td class="tl_td" height="50">
		<a type="button" href="#">회원탈퇴</a>
	</td>
	</tr>
</table>
</div>

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

	<script type="text/javascript">
//    Kakao.init('397aabd494fcce05ada8693f67c2c1fa');
//    function loginWithKakao() {
//     Kakao.Auth.login({
//     success: function(authObj) {
//     Kakao.API.request({
//    url: '/v1/user/me',
//      });
//     },
//     fail : function(err) {
//        alert(JSON.stringfy(err));
//     }
//   });
//  }
   function kakaologout() {
      Kakao.Auth.logout(function() {
         console.log("logged out.");
         location.replace("http://<%=request.getServerName()%>:8090/byebye/login.do"); 
      });
   }
   </script>

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