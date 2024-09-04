<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<style type="text/css">
	div {
		border: 1px solid black;
		padding: 20px;
		margin: 15px;
	}
</style>
</head>
<body>
	<h1>이벤트 버블링</h1>
	
	<h3>이벤트 버블링 확인하기</h3>
	<div onclick="fn1(event)">
		<div onclick="fn2(event)">
			<button onclick="fn3(event)">버튼</button>
		</div>
	</div>
	
<script type="text/javascript">
	function fn1(event) {
		console.log("fn1함수가 실행됨")
	}
	
	function fn2(event) {
		console.log("fn2함수가 실행됨")
	}
	
	function fn3(event) {
		event.stopPropagation();
		console.log("fn3함수가 실행됨")
	}
</script>
</body>
</html>