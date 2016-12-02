<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum=scale=1.0,minimum-scale=1.0,user-scalable=no">
    <script type="text/javascript" src="js/jindo_coo_ajax.js"></script>
    <title>Box personal portfolio Template</title>
    <link rel="icon" href="img/circlelogo.png" type="image/x-icon">

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ionicons/css/ionicons.min.css" rel="stylesheet">
    <link href="css/comment.css" rel="stylesheet">

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
	    <span class="box-menu-text">MENU</span><span class="box-menu-icon"></span>
	</a>
	<!-- box-primary-nav-trigger -->
	</header>
	<!-- end box header -->

	<!-- nav -->
	<nav>
		<ul class="box-primary-nav">
			<li class="box-label">MENU</li>           
			<li><a href="index.do">Home</a></li>
			<li><a href="fileBoardDtoFormView.do">Insert</a><i class="ion-ios-circle-filled color"></i></li>
			<li><a href="myPlace.do">MyList</a></li>
			<li><a href="beaconlist.do">Beacon</a></li>
			<li><a href="setting.do">Setting</a></li>
		</ul>
	</nav>
	<!-- end nav -->


    <!-- top bar -->
    <div class="top-bar">
        <h1>IN MY LIST</h1>
    </div>
    <!-- end top bar -->

<!-- main-container -->
<div class="container main-container">

		<div class="col-md-6">
			<img src="imgLoad.do?fileName=${picFile}" class="img-responsive" />
		</div>
		<div class="col-md-6">
			<h3 class="uppercase">${docTle}</h3>
			
			<h5>Where : ${place}</h5>
			<div class="h-30"></div>
			<p>${docCon}</p>

			<p>with ${docTag}</p>
			<div class="h-10"></div>
<c:if test="${sessionScope.userid eq userid }">
			<div class="col-md-12">
				<a href="updateContentView.do?seq=${docNum}&seq2=${userid}" class="btn btn-box"
					type="button" >수정</a>
			</div>
			<div class="col-md-12">
				<a href="deletePlace.do?seq=${docNum}&seq1=${userid}" class="btn btn-box"
					type="button" >삭제</a>
			</div>
			</c:if>
		</div>

		<!-- comment -->
		<div id="replyajax">
		
		</div>
		
		<div class="col-md-12">
				<div id="main-post-send">
					<div id="title-post-send">Add your comment</div>
					<form id="contact" method="post">
						<fieldset>
							<p>
								<textarea id="message" name="message" maxlength="500"
									placeholder="Votre Message" tabindex="5" cols="30" rows="4"></textarea>
							</p>
						</fieldset>
						<div style="text-align: center;">
							<input type="button" id="insertReply" class="btn btn-box" onclick="insertFunc();" value="댓글" />
						</div>
					</form>
				
			</div>
		</div>
		<!-- END comment -->
	</div>
	<!-- end Main container -->
	
    <!-- jQuery -->
    <script src="js/jquery-2.1.1.js"></script>
    <!--  plugins -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/menu.js"></script>
    <script src="js/animated-headline.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>

    <!--  custom script -->
    <script src="js/custom.js"></script>
    
    <!-- 댓글 조회 시작 -->
    <script type="text/javascript">
 // 호출하는 URL이 현재 페이지의 URL과 다른 경우, CORS 방식으로 호출한다. XHR2 객체 또는 IE8,9는 XDomainRequest를 사용한다.
 function loadReply() {   
 var loadAjax = new jindo.$Ajax('replySearch.do?docNum=${docNum}', {
        type : 'xhr',
        method : 'get',     // GET 방식으로 통신
        onload : function(res){ // 요청이 완료되면 실행될 콜백 함수
          $('#replyajax').html(res.text());
        },
        timeout : 0,      // 3초 이내에 요청이 완료되지 않으면 ontimeout 실행 (생략 시 0)
        ontimeout : function(){ // 타임 아웃이 발생하면 실행될 콜백 함수, 생략 시 타임 아웃이 되면 아무 처리도 하지 않음
          alert("Timeout!");
        },
        onerror : function(){ // 타임 아웃이 발생하면 실행될 콜백 함수, 생략 시 타임 아웃이 되면 아무 처리도 하지 않음
          alert("댓글조회error");
        },
        async : true      // 비동기로 호출하는 경우, 생략하면 true
    });
    loadAjax.request();
 }
    </script>
    <!-- 댓글 조회 끝 -->
	<!-- 댓글 등록 시작 -->
	<script type="text/javascript">
	
	function insertFunc() {
		var insertAjax = new jindo.$Ajax('reply.do?reCon='+$('#message').val()+'&docNum=${docNum}', {
		    type : 'xhr',
		    method : 'get',
		    onload : function(res){ // 요청이 완료되면 실행될 콜백 함수
		    	loadReply();
		    },
		    timeout : 3,      // 3초 이내에 요청이 완료되지 않으면 ontimeout 실행 (생략 시 0)
		    ontimeout : function(){ // 타임 아웃이 발생하면 실행될 콜백 함수, 생략 시 타임 아웃이 되면 아무 처리도 하지 않음
		      alert("Timeout!");
		    },
		    async : true      // 비동기로 호출하는 경우, 생략하면 true
		});
		
		insertAjax.request();
	}
	
	loadReply();
	</script>
	<!-- 댓글등록 끝 -->
	
	<!-- 댓글삭제 시작 -->
	<script type="text/javascript">
	function deleteReply(object1, object2){
		var insertAjax = new jindo.$Ajax('replyDelete.do?seq='+object1+'&seq2='+object2, {
		    type : 'xhr',
		    method : 'get',
		    onload : function(res){ // 요청이 완료되면 실행될 콜백 함수
		    	loadReply();
		    },
		    timeout : 3,      // 3초 이내에 요청이 완료되지 않으면 ontimeout 실행 (생략 시 0)
		    ontimeout : function(){ // 타임 아웃이 발생하면 실행될 콜백 함수, 생략 시 타임 아웃이 되면 아무 처리도 하지 않음
		      alert("Timeout!");
		    },
		    async : true      // 비동기로 호출하는 경우, 생략하면 true
		});
		
		insertAjax.request();
	}
	
	</script>

</body>

</html>