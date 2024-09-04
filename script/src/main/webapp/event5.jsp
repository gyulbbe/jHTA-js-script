<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<style>
	#thumbnail-image-box img {
		width: 60px;
		height: 90px;
		opacity: 0.4;
	}
</style>
</head>
<body>
	<h1>마우스 이벤트 </h1>
	
	<div id="big-image-box">
		<img alt="책사진" id="big" width="300" height="400" src="image/1.jpg">
	</div>
	<div id="thumbnail-image-box">
		<img src="image/1.jpg" width="60" height="90" onmouseenter="fn1(event)" onmouseleave="fn2(event)">
		<img src="image/2.jpg" width="60" height="90" onmouseenter="fn1(event)" onmouseleave="fn2(event)">
		<img src="image/3.jpg" width="60" height="90" onmouseenter="fn1(event)" onmouseleave="fn2(event)">
		<img src="image/4.jpg" width="60" height="90" onmouseenter="fn1(event)" onmouseleave="fn2(event)">
		<img src="image/5.jpg" width="60" height="90" onmouseenter="fn1(event)" onmouseleave="fn2(event)">
	</div>
<script type="text/javascript">
	function fn1(event) {
		let thumbImg = event.target;
		thumbImg.style.opacity = "1.0";
		
		let imgPath = thumbImg.getAttribute("src");
		document.getElementById('big').setAttribute("src", imgPath);
	}
	
	function fn2(event) {
		let thumbImg = event.target;
		thumbImg.style.opacity = "0.4"
	}
</script>
</body>
</html>