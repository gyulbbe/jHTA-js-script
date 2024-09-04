<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
</head>
<body>
	<h1>키보드 이벤트</h1>
	<form action="">
		<label>아이디</label>
		<input type="text" name="id" onkeyup="fn3(event)" />
		<p id="msg"></p>
	</form>
	
<script type="text/javascript">
	// 키보드 이벤트
	/*
		키보드 이벤트
			- 키보드의 키를 입력할 때 마다 발생하는 이벤트다.
			- keydown, keypress, keyup이벤트가 있다.
			- 키보드를 입력하면 keydown -> keypress -> keyup의 순서로 이벤트가 발생한다.
			- 사용자와 상호작용에 주로 활용하는 이벤트는 keyup 이벤트다.
				* keyup 이벤트가 발생했을 때는 입력필드에 지금 입력한 글자가 나타난다.
				* 즉, 사용자가 입력필드에 입력한 내용을 읽어올 수 있다.
				
		입력필드에서 onchange 이벤트
			- 입력필드에서 입력을 끝내고 포커스가 달느 곳으로 이동했을 때 발생한다.(단, 입력필드의 원래값과 값이 달라야 한다.)
				* 입력필드에 글자를 입력할 때마다 발생하는 것이 아니다.
				* 입력필드에 대해서 onchange 이벤트를 잘 사용하지 않는다.
	*/
	
	// 아이디 정규표현식
	/*
		- //는 정규표현식 객체를 생성하는 리터럴이다.
		- ^는 시작을 나타낸다.
		- $는 끝을 나타낸다.
		- []는 사용가능한 문자를 내부에 포함한다.
		  [abc]는 abc 중 아무 문자가 가능하다.
		  [a-z]는 영어소문자 중 아무 문자가 가능하다.
		  [a-zA-Z0-9]는 영어소문자, 영어대문자, 숫자 중 아무 문자가 가능하다.
		- [a-z]+는 영어소문자가 1글자 이상이라는 의미다.
		- {}는 등장회수를 지정한다.
		  {1,} 1글자 이상
		  {1, 6} 1글자 이상 6글자 이하
		- [a-z0-9]{5, 19}는 영어소문자와 숫자가 5글자 이상 19글자 이하
	*/
	let regexp = /^[a-z]+[a-z0-9]{5,19}$/;
	
	function fn3(e) {
		let value = document.querySelector("[name=id]").value;
		if (regexp.test(value)) {
			document.querySelector("#msg").textContent = "유효한 아이디입니다.";
		} else {
			document.querySelector("#msg").textContent = "유효하지 않는 아이디 형식입니다.";
		}
	}

</script>
</body>
</html>