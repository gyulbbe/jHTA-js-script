<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>엘리먼트 조작하기</h1>
	
	<h3>innerHTML 연습</h3>
	<div id="box-1">
		<p>연습하기</p>
	</div>
	
	<h3>innerHTML 연습</h3>
	<div id="box-2">
		<p>내용</p>
		<p>내용</p>
		<p>내용</p>
		<p>내용</p>
		<p>내용</p>
		<p>내용</p>
		<p>내용</p>
	</div>
	
	<h3>innerHTML 연습</h3>
	<div id="box-3" ></div>

<script type="text/javascript">
	// div내의 HTML 컨텐츠 변경하기
	document.getElementById("box-1").innerHTML = '<p class="text-primary">공부하기</p>';
	
	// div내의 HTML 컨텐츠 삭제하기
	document.getElementById("box-2").innerHTML = '';
	
	// div내의 HTML 컨텐츠 추가하기
	let names = ['김유신', '홍길동', '강감찬'];
	let contents = "";
	for (let name of names) {
		contents += `<p>\${name}</p>`
	}
	document.getElementById("box-3").innerHTML = contents;
	
</script>
</body>
</html>