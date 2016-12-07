<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript" src="js/jquery-2.1.1.js"></script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/jindo_coo_ajax.js"></script>

<title>Insert title here</title>
</head>
<body>

	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary btn-lg"
		data-toggle="modal" data-target="#alertModal">Launch demo
		modal</button>

	<!-- Modal -->
	<div class="modal fade" id="alertModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">Modal title</h4>
				</div>
				<div class="modal-body">
					<div id="picFile"></div>
					<div id="json"></div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		var json;
		var oAjax = new jindo.$Ajax('alert.do', {
			type : 'xhr',
			method : 'get', // GET 방식으로 통신
			onload : function(res) { // 요청이 완료되면 실행될 콜백 함수
				json = jindo.$Json(res.text());
			if(json.get('docNum') != ''){
				$('#picFile').html(json.get("picFile"));
				$('#json').html(res.text());
				$('#alertModal').modal('show');
			}
			},
			onerror : function() {
				alert(error);
			},
			timeout : 0, // 3초 이내에 요청이 완료되지 않으면 ontimeout 실행 (생략 시 0)
			ontimeout : function() { // 타임 아웃이 발생하면 실행될 콜백 함수, 생략 시 타임 아웃이 되면 아무 처리도 하지 않음
				alert("Timeout!");
			},
			async : true
		// 비동기로 호출하는 경우, 생략하면 true
		});
		oAjax.request();
	</script>
</body>
</html>