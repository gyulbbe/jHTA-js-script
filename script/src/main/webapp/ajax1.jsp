<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>ajax</h1>
	<p>아이디 중복검사 기능을 ajax로 구현하기</p>
		
	<form action="ajax1-res.jsp" onkeyup="checkId()">
		<div>
			<label>아이디</label><br/>
			<input type="text" name="id">
			<p id="msg"></p>
		</div>
		<div>
			<label>비밀번호</label><br/>
			<input type="text" name="password">
		</div>
		<div>
			<label>이름</label><br/>
			<input type="text" name="name">
		</div>
		<div>
			<button type="submit">회원가입</button>
		</div>
	</form>
	
<script type="text/javascript">
	// 입력필드에 글자가 입력될 때마다
	// 아이디값을 서버로 보내서, 중복여부체크를 요청하고
	// 응답결과를 화면에 표시한다.
	function checkId() {
		let value = document.querySelector("[name=id]").value;
		if (value.length < 3) {
			document.getElementById("msg").textContent = "3글자 이상 입력하세요.";
			return;
		}
		
		// 1. XMLHttpRequest 객체 생성하기
		let xhr = new XMLHttpRequest();
		
		// 콜백함수 등록
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				let el = document.getElementById('msg');
				let data = xhr.responseText;
				//console.log('응답데이터', data);
				if (date == 'none') {
					el.textContent = "사용가능한 아이디입니다.";
				} else if (data == 'exist') {
					el.textContent = "이미 존재하는 아이디입니다.";
				}
			}
		};
		
		// 2. XMLHttpRequest 객체 초기화하기
		//	요청방식, 요청 URL을 지정한다.
		xhr.open('GET', "ajax1-res.jsp?id=" + value);
		
		// 3. XMLHttpRequest 객체로 서버에 요청을 보낸다.
		xhr.send();
	}
</script>
</body>
</html>