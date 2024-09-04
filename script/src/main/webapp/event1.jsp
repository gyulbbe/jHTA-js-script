<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
</head>
<body>
	<h1>이벤트 처리</h1>
	
	<h3>인라인 이벤트 처리</h3>
	<div>
		<button id="btn-1" onclick="handler1(event)">버튼1</button>
		<button id="btn-2" onclick="handler2(10)">버튼2</button>
		<button id="btn-3" onclick="handler3(event, 20)">버튼3</button>
	</div>
	
	<h3>엘리먼트의 이벤트 프로퍼티를 이용한 이벤트 처리</h3>
	<div>
		<button id="btn-4" data-no="4">버튼4</button>
		<button id="btn-5" data-book-no="100" data-book-amount="1">버튼5</button>
		<button id="btn-6" data-price="35000">버튼6</button>
	</div>
	
	<h3>엘리먼트의 addEventListener()를 이용한 이벤트 처리</h3>
	<div>
		<button id="btn-7">버튼7</button>
		<button id="btn-8">버튼8</button>
		<button id="btn-9">버튼9</button>
	</div>
	
<script type="text/javascript">
//	.addEventListener('이벤트종류', 콜백함수)
	document.getElementById("btn-7").addEventListener('click', function(event) {
		console.log("버튼7 클릭됨");
	})
	
	document.getElementById("btn-8").addEventListener('click', event => {
		console.log("버튼8 클릭됨");
	});
	
	document.getElementById("btn-9").addEventListener('click', event => {
		console.log("버튼9 클릭됨");
	});
	
//	.onclick = 콜백함수
	let btn4 = document.getElementById('btn-4');
	btn4.onclick = function(event) {
		let btn = event.target;
		let no = btn.getAttribute("data-no")
		console.log("버튼4 클릭되었습니다.", no);
	}
	document.getElementById('btn-5').onclick = function(event) {
		let btn = event.target;
		let bookNo = btn.getAttribute("data-book-no");
		let bookAmount = btn.getAttribute("data-book-amount");
		console.log("버튼5가 클릭됨", bookNo, bookAmount);
	}
	document.getElementById('btn-6').onclick = (event) => {
		let btn = event.target;
		let price = btn.getAttribute("data-price");
		console.log("버튼6이 클릭됨", price);
	}

	function handler1(event) {
		console.log("버튼 1이 클릭됨");
		console.log(event);
	}
	
	function handler2(no) {
		console.log("버튼2이 클릭됨");
		console.log(no);
	}
	
	function handler3(event, no) {
		console.log("버튼3이 클릭됨");
		console.log(event, no);
	}
</script>
</body>
</html>