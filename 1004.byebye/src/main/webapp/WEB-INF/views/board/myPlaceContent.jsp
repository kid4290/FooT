<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum=scale=1.0,minimum-scale=1.0,user-scalable=no">
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css" />
   <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
   <script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>
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
    

    <div data-role="header" data-position="fixed"> 
       <!-- box-header -->
       <header class="box-header">
      <div class="box-logo">
         <a href="index.do">
         <img src="img/circlelogo.png" width="50" alt="Logo">
         </a>
         <!-- 뒤로가기 버튼 -->
         <span class="box-menu-text">
        <a href="#" onClick="history.back()" style="width:70px;float:right;" data-role="button" data-icon="back" data-theme="c"          aria-hidden="true">이전</a>
        </span>
      </div>
        </header>
        </div>
        
        <div class="content">
        <!-- nav -->
        <nav>
            <ul class="box-primary-nav">
                 <li class="box-label">FootFoot</li>
               <li><a href="index.do">HOME</a></li>
               <li><a href="fileBoardDtoFormView.do">INSERT</a></li>
               <li><a href="myPlace.do">MYLIST</a><i class="ion-ios-circle-filled color"></i></li>
               <li><a href="beaconlist.do">BEACON</a></li>
               <li><a href="myInfo.do">SETTING</a></li>
            </ul>
        </nav>
        <!-- end nav -->  
    </div>
    
    <div class="container main-container clearfix">
    <!-- Top bar -->
    <div class="top-bar">
        <h1>내 컨텐츠</h1>
        <p><a href="#">Home 링크</a> / About me</p>
    </div>
    <!-- end Top bar -->
    
    <!-- Main container -->
     
        <div class="col-md-6">
            <img src="imgLoad.do?fileName=${picFile}" class="img-responsive" />
        </div>
        <div class="col-md-6">
           <h3 class="uppercase">${docNum} </h3>
           <h5>Where : ${place}</h5>
           <div class="h-30"></div>
            <p>${docCon} </p>

            <p>with ${docTag}</p>
            <div class="h-10"></div>
   
		<div class="col-md-12">
                <a href="updateContentView.do?seq=${docNum}&seq2=${userid}"><input type="button"  value="수정"/></a>
        </div>
         <div class="col-md-12">
            <a href="replyInsertView.do?seq=${docNum}"><input type="button" class="btn btn-box" value="REPLY"></a>
        </div>
        <div class="col-md-12">
        	<a href="replySearch.do"><input type="button" class="btn btn-box" value="replySearch"></a>
        </div>
        </div>

<!-- comment -->
                   <div class="col-md-12">
                       <div class="image-reply-post"></div>
                       <div class="name-reply-post">Igor vlademir</div>
                       <div class="text-reply-post">Awesome mockup, i like it very much ! It will help me for my website i was looking for since few days. Thank you a lot.</div>
                   </div>
                    
                    <div class="col-md-12">
                       <div class="image-reply-post-2"></div>
                       <div class="name-reply-post-2">Nathan Shaw</div>
                       <div class="text-reply-post-2">Well done ! I like the way you did it. Awesome ! </div>
                   </div>
                    
                   <div class="col-md-12">
                       <div id="main-post-send"> 
                            <div id="title-post-send">Add your comment</div>
                     <form id="contact" method="post" action="/onclickprod/formsubmit_op.asp">
                         <fieldset>
                           <p><textarea id="message" name="message" maxlength="500" placeholder="Votre Message" tabindex="5" cols="30" rows="4"></textarea></p>
                        </fieldset>
                        <div style="text-align:center;"><input type="submit" name="envoi" value="Envoyer" /></div>
                       </form>
                        </div>
               </div>
<!-- END comment -->        
    </div>
    <!-- end Main container -->
    


    <!-- footer -->
    <div data-role="footer" data-id="persistFooter" data-position="fixed" data-theme="c">
  <div data-role="navbar" >
   <ul>
    <li><a href="index.do" data-icon="home">Home</a></li>
    <li><a href="fileBoardDtoFormView.do" data-icon="star">Insert</a></li>
    <li><a href="myPlace.do" data-icon="search" >MyList</a></li>
    <li><a href="beaconlist.do" data-icon="check" >Beacon</a></li>
    <li><a href="setting.do" data-icon="gear">Setting</a></li>
   </ul>
  </div>
 </div>
    
    <!-- end footer -->

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