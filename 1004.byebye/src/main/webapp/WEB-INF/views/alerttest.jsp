<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="picfile"></div>
<div id="json"></div>
<script type="text/javascript" src="js/jindo_coo_ajax.js"></script>
<script type="text/javascript" src="js/jquery-2.1.1.js"></script>
<script type="text/javascript">
var json;
var oAjax = new jindo.$Ajax('alert.do', {
    type : 'xhr',
    method : 'get',     // GET 방식으로 통신
    onload : function(res){ // 요청이 완료되면 실행될 콜백 함수
    	$('#picFile').html(jindo.$Json(res.text()).get("picFile"));
      $('#json').html(res.text());
    },
    onerror : function(){
    	alert(error);
    },
    timeout : 0,      // 3초 이내에 요청이 완료되지 않으면 ontimeout 실행 (생략 시 0)
    ontimeout : function(){ // 타임 아웃이 발생하면 실행될 콜백 함수, 생략 시 타임 아웃이 되면 아무 처리도 하지 않음
      alert("Timeout!");
    },
    async : true      // 비동기로 호출하는 경우, 생략하면 true
});
oAjax.request();
</script>
</body>
</html>