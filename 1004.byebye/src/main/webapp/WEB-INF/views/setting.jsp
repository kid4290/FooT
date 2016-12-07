<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="work.com.byebye.dto.UserDto"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum=scale=1.0,minimum-scale=1.0,user-scalable=no">
<title>SETTING</title>

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
		margin-bottom: 10px;
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
	.tl_tr {
		text-align: center;
	}
	.tl_td {
		text-align: center;
	}
	
	.tl_span1 {
		color: #fff;
		font-weight: 900;
	}
	.tl_span2 {
		color: #333;
	}
	.tl_tablediv {
		margin: 0px auto;
		margin-left: 5%;
		margin-right: 5%;
		background: #ffbf00;
		color: #333;
	}
	.main-containers {
		padding-top: 0;
		margin-bottom: 50px;
    }
	</style>

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
				<li><a href="index.do">Home</a></li>
				<li><a href="insertBoard.do">Insert</a></li>
				<li><a href="myBoardList.do">MyList</a></li>
				<li><a href="beaconlist.do">Beacon</a></li>
				<li><a href="setting.do">Setting</a><i class="ion-ios-circle-filled color"></i></li>
            </ul>
        </nav>
        <!-- end nav -->


	<!-- top bar -->
	<div class="top-bar">
		<h1>Setting</h1>
	</div>
	<!-- end top bar -->
<div class="main-containers">
<div class="portfolio-inner clearfix">
<div class="tl_settingform">
<table class="tl_settingtable">
	<tr class="tl_trr">
	<td class="tl_tdd">
	<div class="myimage">
		<div class="imagediv">
			<div class="imagebtn">
			<c:if test="${!empty dto.userimg}">
				<img alt="프로필 사진 바꾸기" class="imagepart" src="${dto.userimg}">
			</c:if>
			<c:if test="${empty dto.userimg}">
				<img alt="프로필 사진 바꾸기" class="imagepart" src="img/default.png">
			</c:if>
			</div>
		</div>
	</div>
	</td>
	</tr>

	<tr class="tl_trr">
	<td class="tl_td" height="100">
	<div class="tl_tablediv">
	<span class="tl_span1">${dto.nickname}</span> 님 반갑습니다.
	<br/>
	<span class="tl_span2">FootFoot</span> 이 당신의 설정을 도와드립니다.
	</div>
	</td>
	</tr>	
	
	<tr class="tl_tr">
	<td class="tl_td" height="50">
		<a type="button" href="logout.do" class="btn btn-box">로그아웃</a>
	</td>
	</tr>
	
<!-- 	<tr class="tl_tr"> -->
<!-- 	<td class="tl_td" height="50"> -->
<!-- 		<a type="button" href="deleteUser.do" class="btn btn-box">회원탈퇴</a> -->
<!-- 	</td> -->
<!-- 	</tr> -->
</table>
</div>
</div>
</div>
<!-- div 종료 -->

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