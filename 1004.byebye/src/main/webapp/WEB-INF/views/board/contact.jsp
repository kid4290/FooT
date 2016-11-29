<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css" />
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>
    <title>등록 페이지</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="ionicons/css/ionicons.min.css" rel="stylesheet">
    <link rel="icon" href="img/circlelogo.png" type="image/x-icon">

    <!-- main css -->
    <link href="css/style.css" rel="stylesheet">

    <!-- modernizr -->
    <script src="js/modernizr.js"></script>

</head>

<body>

<div data-role="header" data-position="fixed" >
        <!-- box-header -->
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
            <!-- box-primary-nav-trigger -->
        </header>
        <!-- end box-header -->
        </div>

	<div class="content">
        <!-- nav -->
        <nav>
            <ul class="box-primary-nav">
				<li class="box-label">FootFoot</li>
		         <li><a href="index.do">HOME</a></li>
		         <li><a href="fileBoardDtoFormView.do">INSERT</a>
		         <i class="ion-ios-circle-filled color"></i></li>
		         <li><a href="myPlace.do">MYLIST</a></li>
		         <li><a href="beaconlist.do">BEACON</a></li>
		         <li><a href="setting.do">SETTING</a></li>

                <li class="box-label">Follow me</li>

                <li class="box-social"><a href="#0"><i class="ion-social-facebook"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-instagram-outline"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-twitter"></i></a></li>
                <li class="box-social"><a href="#0"><i class="ion-social-dribbble"></i></a></li>
            </ul>
        </nav>
        <!-- end nav -->
        </div>


 <div class="content">
    <!-- top bar -->
    <div class="top-bar">
        <h1>Insert</h1>
        <p><a href="#">Home </a> /</p>
    </div>
    <!-- end top bar -->

    <!-- main-container -->
    
        <div class="col-md-6">
            <form action="multiInsert.do" method="POST" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-md-6">
                        
                        <!-- upload -->
                       <div class="col-md-6">
                        <div class="input-contact">
                            <input type="text" name="place">
                            <span>place</span>
                        </div>
                    </div>                   
                    <div class="col-md-6">
                        <div class="input-contact">
                            <input type="checkbox" name="docTf" value="O">
                            <span>open?</span>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="input-contact">
                            <input type="text" name="docTle">
                            <span>Title</span>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="textarea-contact">
                            <textarea name="docCon"></textarea>
                            <span>Context</span>
                        </div>
                    </div>
                     <div class="input-contact">
                            <input type="text" name="docTag">
                            <span>with who?</span>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="input-contact">
                            <input type="file" name="picFile">
                            <span>choice photo</span>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <input type="submit" class="btn btn-box"/>
                    </div>
                </div>
            </form>
        </div>

        <div class="col-md-6">
            <h3 class="text-uppercase"></h3>
            <h5></h5>
            <div class="h-30"></div>
            <p>aa </p>
            <div class="contact-info">
                <p><i class="ion-android-call"></i> 010 9295 4920</p>
                <p><i class="ion-ios-email"></i> box@info.com</p>
            </div>
        </div>


    </div>
    <!-- end main-container -->

    <!-- footer -->
    <div data-role="footer" data-id="persistFooter" data-position="fixed" data-theme="c">
  <div data-role="navbar" >
   <ul>
    <li><a href="index.do" data-icon="home" class="">Home</a></li>
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