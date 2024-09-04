<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
<style type="text/css">
	div {
		width: 200px;
		height: 400px;
		border: 1px solid black;
		padding: 20px;
		margin-left: -100px;
	}
</style>
</head>
<body>
	<h1>이벤트 버블링</h1>
	
	<div id="box" onclick="toggleBox(event)">
	<h3 onclick="showMenu(event, 'book')">도서</h3>
		<ul id="book" style="display:none">
			<li>소설</li>
			<li>소설</li>
			<li>소설</li>
			<li>소설</li>
			<li>소설</li>
			<li>소설</li>
		</ul>
	<h3 onclick="showMenu(event, 'ticket')">티켓</h3>
		<ul id="ticket" style="display:none">
			<li>콘서트</li>
			<li>콘서트</li>
			<li>콘서트</li>
			<li>콘서트</li>
			<li>콘서트</li>
			<li>콘서트</li>
		</ul>
	</div>
<script type="text/javascript">
	let boxShown = false;
	
	function showMenu(event, id) {
		event.stopPropagation();
		document.getElementById(id).style.display = "";
	}
	
	function toggleBox(event) {
		let div = document.getElementById("box");
		
		if (boxShown) {
			div.style.marginLeft = "-180px";
			boxShown = false;
		} else {
			div.style.marginLeft = "-40px";
			boxShown = true;
		}
	}
</script>
</body>
</html>