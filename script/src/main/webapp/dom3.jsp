<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>엘리먼트 객체 생성, 추가, 삭제</title>
<style type="text/css">
div {
	border: 1px solid black;
	margin: 10px;
	padding: 15px;
}
</style>
</head>
<body>
	<h1>엘리먼트 객체 생성, 추가, 삭제</h1>

	<h3>엘리먼트 추가</h3>
	<div id="box-1"></div>

	<h3>엘리먼트 추가</h3>
	<div>
		<div id="box-2"></div>
	</div>

	<h3>엘리먼트 추가</h3>
	<div id="box-3"></div>

<script type="text/javascript">
	// 엘리먼트 객체 생성하기
	// <p>안녕하세요</p>
	let el1 = document.createElement('p');
	el1.classList.add('text-primary');
	el1.textContent = "안녕하세요";
	
	let el2 = document.createElement('p');
	el2.classList.add('text-danger');
	el2.textContent = "안녕하세요2";
	
	// 생성된 엘리먼트 추가하기
	document.getElementById('box-1').append(el1);
	document.getElementById('box-1').append(el2);
	
	let el3 = document.createElement("p");
	let el4 = document.createElement("p");
	let el5 = document.createElement("p");
	let el6 = document.createElement("p");
	el3.textContent = "prepend";
	el4.textContent = "append";
	el5.textContent = "before";
	el6.textContent = "after";
	
	document.getElementById('box-2').prepend(el3); // 첫번째 자식으로 추가
	document.getElementById('box-2').append(el4); // 마지막 자식으로 추가
	document.getElementById('box-2').before(el5); // 형엘리먼트로 추가
	document.getElementById('box-2').after(el6); // 동생엘리먼트로 추가
	
	// html컨텐츠를 추가하기
	document.getElementById("box-3").insertAdjacentHTML("afterbegin","<p>prepend</p>");
	document.getElementById("box-3").insertAdjacentHTML("beforeend","<p>append</p>");
	document.getElementById("box-3").insertAdjacentHTML("beforebegin","<p>before</p>");
	document.getElementById("box-3").insertAdjacentHTML("afterend","<p>after</p>");
	
	/*
	 	<div id=box-3"> <---- begin
	 		[afterbegin]
	 		<p>내용</p>
	 		<p>내용</p>
	 		[beforeend]
	 	</div>			<---- end
	 */
</script>
</body>
</html>