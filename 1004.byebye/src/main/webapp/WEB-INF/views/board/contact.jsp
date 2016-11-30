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
    <script src="js/jindo_coo_ajax.js"></script>
<script type="text/javascript"
      src="http://apis.daum.net/maps/maps3.js?apikey=d9d5aabffb52cda458f3d0c2f07c8553&libraries=services"></script>
    

</head>

<body>

<div data-role="header" data-position="fixed">
   <header class="box-header">
   <div class="box-logo">
   <a href="index.do"><img src="img/circlelogo.png" width="50" alt="Logo"></a>
   </div>
   </header>
</div>

    <!-- top bar -->
    <div class="top-bar">
        <h1>Insert</h1>
        <p><a href="#">Home </a> /</p>
    </div>
    <!-- end top bar -->

<!-- main-container -->
<div class="container main-container">

   <div class="col-md-4">
      <h3 class="text-uppercase"></h3>
      <h5>선택된 사진/이미지</h5>
      <div class="contact-info" style="width:100%;height:300px;background-color:#333;">
      <img src="" alt=""/>
      </div>
   </div>

   <div class="col-md-8">
   <form action="multiInsert.do" method="POST" enctype="multipart/form-data">
   <div class="row">
   <div class="col-md-12">
   
      <div class="col-md-10">    
      <label for="name">Place</label> 
         <div data-role="fieldcontain">
         <input type="text" name="place" />
         </div>   
      </div>
   
      <div class="col-md-10">           
         <div data-role="fieldcontain">
         <fieldset data-role="controlgroup">
         <input type="checkbox" name="docTf" id="checkbox-2" class="custom" />
         <label for="checkbox-2">공개</label>
         </fieldset>
         </div>
      </div>
      
      <div class="col-md-10">
      <label for="name">Title</label>
         <div data-role="fieldcontain">
         <input type="text" name="docTle" />
         </div>
      </div>
      
      <div class="col-md-10">
      <label for="textarea">Textarea</label>
         <div data-role="fieldcontain">
         <textarea name="docCon" ></textarea>
         </div>
      </div>
      
      <div class="col-md-10">
      <label for="name">with who?</label>
         <div data-role="fieldcontain">
         <input type="text" name="docTag" />
         </div>
      </div>
   
      <div class="col-md-6">
         <div>
         <label for="name">picture</label>
         <input type="file" name="picFile" accept="image/*;capture=camera"/>
         </div>
      </div>
      
      <br><br>
      <div class="col-md-6">
         <input type="submit" value="등록" />
      </div>
      
   </div>
   </div>
</form>
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