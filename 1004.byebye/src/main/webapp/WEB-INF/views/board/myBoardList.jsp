<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>my photo</title>
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
			<li><a href="insertBoard.do">Insert</a></li>
			<li><a href="myBoardList.do">MyList</a><i class="ion-ios-circle-filled color"></i></li>
			<li><a href="beaconlist.do">Beacon</a></li>
			<li><a href="setting.do">Setting</a></li>
		</ul>
	</nav>
	<!-- end nav -->


    <!-- top bar -->
    <div class="top-bar">
        <h1>MY LIST</h1>
    </div>
    <!-- end top bar -->

<!-- main-container -->
<div class="container main-container">
        <!-- portfolio div -->
        <div class="portfolio-div">
            <div class="portfolio">

                <!-- portfolio_container -->
                <div class="no-padding portfolio_container clearfix">
                    <!-- single work -->
                    <c:if test="${requestScope.list eq null or fn:length(requestScope.list) eq 0}">
                 <h1>조회결과없음</h1>
                 </c:if>
                    <c:forEach var="dto" items="${requestScope.list}"> 
                    <div class="col-md-4 col-sm-6  fashion logo">
                        <a href="boardDetail.do?seq=${dto.getDocNum()}" class="portfolio_item">
                            <img src="imgLoad.do?fileName=${dto.getPicFile()}" class="img-responsive" style="width:100%" />
                            <div class="portfolio_item_hover">
                                <div class="portfolio-border clearfix">
                                    <div class="item_info">
<%--                                         <span>${dto.getPlace()}</span> --%>
<%--                                         <p>${dto.getDocNum()} --%>
                                        <em>${dto.getPlace()}</em>
                                    </div>
                                </div>
                            </div>
                            
                        </a>
                    </div>
                    </c:forEach>
                    
                    <!-- end single work -->
                </div>
                <!-- end portfolio_container -->
            </div>
            <!-- portfolio -->
        </div>
        <!-- end portfolio div -->
    </div>
    <!-- end main container -->


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