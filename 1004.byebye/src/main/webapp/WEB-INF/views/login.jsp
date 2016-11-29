<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>LOGIN</title>
<link rel="icon" href="img/circlelogo.png" type="image/x-icon">
<style>
.tl_container {
   width: 100%;
    /* height: 100%; */
    background-repeat: no-repeat;
}

.card-container.card {
    max-width: 350px;
    padding: 40px 40px;
}

/*
 * Card component
 */
.card {
    background-color: #F7F7F7;
    /* just in case there no content*/
    padding: 20px 25px 30px;
    margin: 0 auto 25px;
    margin-top: 50px;
    /* shadows and rounded borders */
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    border-radius: 2px;
    -moz-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    -webkit-box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
}

.profile-img-card {
    width: 96px;
    height: 96px;
    margin: 0 auto 10px;
    display: block;
    -moz-border-radius: 50%;
    -webkit-border-radius: 50%;
    border-radius: 50%;
}

/*
 * Form styles
 */
.profile-name-card {
    font-size: 16px;
    font-weight: bold;
    text-align: center;
    margin: 10px 0 0;
    min-height: 1em;
}

.form-signin .form-control:focus {
    border-color: rgb(104, 145, 162);
    outline: 0;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgb(104, 145, 162);
}
.form-signin {
padding-left: 60px;
}
.tl_formtd {
align:center;
}
.tl_formtr {
align:center;
}
</style>


<!-- API -->
<script src="http://apis.google.com/js/platform.js" async defer></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>
<body>
<div class="tl_container">
   <div class="card card-container">
   <img id="profile-img" class="profile-img-card" src="img/circlelogo.png" />
   <p id="profile-name" class="profile-name-card"></p>
   <form class="form-signin">
   <!-- Kakao Login Api -->
   <tr class="tl_formtr">
   <td class="tl_formtd">
   <a id="custom-login-btn" href="javascript:loginWithKakao()"> 
   <img src="//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg" width="226" height="49" />
   </a>
   <script type="text/javascript">
   Kakao.init('397aabd494fcce05ada8693f67c2c1fa');
   function loginWithKakao() {
    Kakao.Auth.login({
    success: function(authObj) {
    Kakao.API.request({
   url: '/v1/user/me',
   success: function(res) {
      console.log(res.id)
      console.log(res.properties.nickname)
      console.log(res.properties.profile_image)
       window.location.href = 'http://<%=request.getServerName()%>:8090/byebye/kakaoLogin.do?userid=' + res.id 
             + '&nickname=' + res.properties.nickname
             + '&userimg=' + res.properties.profile_image;
       },
       fail : function(error) {
          alert(JSON.stringfy(error));
       }
     });
    },
    fail : function(err) {
       alert(JSON.stringfy(err));
    }
  });
 }
   function kakaologout() {
      Kakao.Auth.logout(function() {
         console.log("logged out.");
      });
   }
   </script>
   </td>
   </tr>
   
   <hr style="width:150px; height:3px; border:none; color:#F7F7F7; background-color:#F7F7F7;">
   
   <!-- Naver Login Api -->
   <tr class="tl_formtr">
   <td class="tl_formtd">
   <div id="naver_id_login" class="tl_btn"></div> 
   <script type="text/javascript">
   var naver_id_login = new naver_id_login("GH_SzlC7NpwkTA2bByHO", "http://<%=request.getServerName()%>:8090/byebye/login.do");
   var state = naver_id_login.getUniqState();
   naver_id_login.setButton("green", 3, 49);
   naver_id_login.setDomain(".service.com");
   naver_id_login.setState(state);
   naver_id_login.init_naver_id_login();
   function naverSignInCallback() {
      window.location.href = 'http://<%=request.getServerName()%>:8090/byebye/naverLogin.do?userid=' 
            + naver_id_login.getProfileData('id')
            + '&nickname=' + naver_id_login.getProfileData('nickname')
            + '&userimg=' + naver_id_login.getProfileData('profile_image');
   }
   naver_id_login.get_naver_userprofile("naverSignInCallback()");
   </script>
   </td>
   </tr>
   
   <!-- facebook login -->
   <tr class="tl_formtr">
   <td class="tl_formtd">
   <script>
   function statusChangeCallback(response) {
      if (response.status === 'connected') {
         testAPI();
   } else if (response.status === 'not_authorized') {
        document.getElementById('status').innerHTML = 'Please log ' +
          'into this app.';
      } else {
        document.getElementById('status').innerHTML = 'Please log ' +
          'into Facebook.';
      }
   }
   
    function checkLoginState() {
      FB.getLoginStatus(function(response) {
        statusChangeCallback(response);
      });
    }
   
    window.fbAsyncInit = function() {
    FB.init({
      appId      : '{1338492349518851}',
      cookie     : true,  
                          
      xfbml      : true,  
      version    : 'v2.8' 
    });
    };
   
    (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.8&appId=1338492349518851";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));
    
    function testAPI() {
      FB.api('/me', function(response) {
         var userImg = "http://graph.facebook.com/"+response.id+"/picture"
         window.location.href = 'http://<%=request.getServerName()%>:8090/byebye/facebookLogin.do?userid=' + response.id + '&nickname=' + response.name + '&userimg=' + userImg;
      });
    }
   </script>
   
   <hr style="width:150px; height:3px; border:none; color:#F7F7F7; background-color:#F7F7F7;">

<fb:login-button scope="public_profile,email" onlogin="checkLoginState();" v="2" size="xlarge">
페북으로 로그인
</fb:login-button>

<div id="status">
</div>

   </td>
   </tr>
   
   
   </form>
   </div>

<!-- script -->
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

</div>
</body>
</html>