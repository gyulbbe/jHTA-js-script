<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>
</head>
<body>
	<h1>기본동작 실행방지</h1>
	
	<h3>로그인 폼</h3>
	<p>form태그의 submit 이벤트에 대한 기본동작 방해</p>
	<form method="post" action="login.jsp" onsubmit="return checkForm();">
		<input type="text" name="id"><br/>
		<input type="password" name="pwd"><br/>
		<button type="submit">로그인</button>
	</form>
	
	<h3>도서 갤러리</h3>
	<div id="big-image-box">
		<img alt="책사진" id="big" width="200" height="300" src="image/1.jpg">
	</div>
	<div id="thumbnail-image-box">
		<a href="image/1.jpg" onclick="changeImage(event)">
			<img src="image/1.jpg" width="60" height="90">
		</a>
		<a href="image/2.jpg" onclick="changeImage(event)">
			<img src="image/2.jpg" width="60" height="90">
		</a>
		<a href="image/3.jpg" onclick="changeImage(event)">
			<img src="image/3.jpg" width="60" height="90">
		</a>
		<a href="image/4.jpg" onclick="changeImage(event)">
			<img src="image/4.jpg" width="60" height="90">
		</a>
		<a href="image/5.jpg" onclick="changeImage(event)">
			<img src="image/5.jpg" width="60" height="90">
		</a>
	</div>
<script type="text/javascript">
	function checkForm() {
		let id = document.querySelector("[name=id]").value;
		if (id == "") {
			alert("아이디는 필수입력값입니다.");
			document.querySelector("[name=id]").focus();
			return false;
		}
		
		let pwd = document.querySelector("[name=pwd]").value;
		if (pwd == "") {
			alert("비밀번호는 필수입력값입니다.");
			document.querySelector("[name=pwd]").focus();
			return false;
		}
		
		return true;
	}

	/*
		1. thumbnail 이미지를 클릭한다.
		2. click 이벤트가 발생한다.
		3. click 이벤트가 a태그로 전달된다.
		4. a태그의 changeImage() 함수가 생성된다.
		5. changeImage() 함수내에서 a태그의 기본동작 실행을 방해한다.
		6. changeImage() 함수에서 event.target을 이용해서 실제 이벤트가 발생했던 img 엘리먼트를 조회한다.
		7. img 엘리먼트의 src 속성을 조회해서 이미지 경로를 조회한다.
		8. 이미지를 크게 표시하는 img 엘리먼트를 조회한다.
		9. 이미지를 크게 표시하는 img 엘리먼트의 src속성값을 7번에서 획득한 값으로 변경한다.
	 */
	function changeImage(event) {
		// 이벤트에 대한 기본동작 실행을 방해한다.
		// 여기서는 click이벤트에 대한 a태그(엘리먼트)이 기본동작
		// 실행을 방해하였다.
		event.preventDefault();
		
		// 이벤트가 발생할 엘리먼트를 조회한다.
		// 여기서는 썸네일을 표시하는 img 엘리먼트다.
		let img = event.target;
		// 썸네일을 표시하는 img 엘리먼트의 src속성값을 읽어온다.
		let imgPath = img.getAttribute("src");
		
		// 큰 이미지를 표시하는 img 엘리먼트를 조회한다.
		let bigImg = document.querySelector("#big-image-box img");
		// 큰 이미지를 표시하는 img 엘리먼트의 속성값을 변경한다.
		bigImg.setAttribute("src", imgPath);
	}
</script>
</body>
</html>