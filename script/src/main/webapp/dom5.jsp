<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>클래스와 속성 조작하기</title>
</head>
<body>
	<h1>폼 입력 요소</h1>
	<form method="post" action="add.jsp">
		<div>
			<label>아이디</label><br/>
			<input type="text" name="id" />
		</div>
		<div>
			<label>비밀번호</label><br/>
			<input type="text" name="password" />
		</div>
		<div>
			<label>이름</label><br/>
			<input type="text" name="name" />
		</div>
		<div>
			<label>이름</label><br/>
			<input type="radio" name="gender" id="gender-1" value="femail" checked>여성
			<input type="radio" name="gender" id="gender-2" value="mail">남성
		</div>
		<div>
			<label>이메일</label><br/>
			<input type="text" name="email1" />
			<select name="email2">
				<option value="" selected disabled>선택하세요</option>
				<option value="@naver.com">naver.com</option>
				<option value="@daum.net">daum.net</option>
				<option value="@hamail.net">hamail.net</option>
				<option value="@gmail.com">gmail.com</option>
				<option value="">직접 입력</option>
			</select>
			<input type="hidden" name="email2" disabled />
		</div>
		<div>
			<label>전화번호</label><br/>
			<input type="text" name="tel" />
		</div>
	</form>
<script type="text/javascript">
	// 폼 입력요소의 값 조회 및 변경
	/*
		일반 입력필드의 입력값 조회하기
			let value1 = document.querySelector("[name=tel]").value;
		일반 입력필드의 입력값 변경하기
			document.querySelector("p[name=tel]").value = "010-1111-1111";
		
		라디오, 체크박스, 체크상태를 "체크함"로 변경하기
			document.querySelector("#gender-1").checked = true;
		라디오, 체크박스 체크상태를 "체크하지 않음"으로 변경하기
			document.querySelector("#gender-1").checked = false;
		
		셀렉트 박스에서 현재 선택된 값 조회하기
			let value2 = document.querySelector("name=email2").value;
		셀렉트 박스에서 지정된 값을 가진 옵션잉 선택되게 하기
			document.querySelector("[name=email2]").value = "naver.com";
		셀렉트 박스에서 지정된 인덱스(0번부터 시작)번째의 옵션이 선택되게 할 수 있다.
			document.querySelector("[name=email2]").selectedIndex = 0;
		
		폼입력요소를 비활성화 시키기
			document.querySelector("[name=password]").disabled = true;
		폼입력요소를 활성화 시키기
			document.querySelector("[name=password]").disabled = false;
	*/
	
	// 입력필드의 값 변경하기
	document.querySelector("input[name=id]").value = "hong";
	
	// 라디오버튼의 체크여부 변경하기
	document.querySelector("#gender-2").cheched = true;
	
	// select 박스에서 특정값을 가진 옵션을 선택하기
	document.querySelector("select[name=email2]").value = 'x';
	
	// input, radio, checkbox, select, textarea, button를 비활성화여부 변경하기
	document.querySelector("input[name=name]").disabled = true;
	
	// 화면에 표시되지 않게 하기
	document.querySelector("input[name=email2]").style.display = "none";
</script>
</body>
</html>