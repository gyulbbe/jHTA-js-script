<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>객체의 활용</h1>
	
	<h3><button onclick="loadUser();">사용자 정보</button></h3>
	<form>
		<label>번호</label>
		<input type="text" name="no" /><br/>
		<label>이름</label>
		<input type="text" name="name" /><br/>
		<label>메일</label>
		<input type="text" name="email" /><br/>
		<label>전화</label>
		<input type="text" name="tel" /><br/>
		<label>날짜</label>
		<input type="date" name="createdDate" /><br/>
		<label>점수</label>
		<input type="text" name="point" /><br/>
	</form>
	
	<h3>직원 목록 <button onclick="loadEmployees()">불러오기</button></h3>
	<table id="table-employees" border="1" style="width: 500px;">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>직종</th>
				<th>급여</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table>
	
<script type="text/javascript">
	// 객체의 활용
	/*
		객체의 활용
			+ 자바스크립트 객체는 key:value의 쌍으로 다양한 타입의 값을 담을 수 있다.
			+ 자바스크립트 객체를 이용하면 복잡한 구조의 데이터를 쉽게 다룰 수 있다.
			+ 서버에서 응답으로 보내준 데이터를 자바스크립트 객체나 배열의 형태로 변환하면 쉽게 필요한 데이터를 조회할 수 있다.
	*/
	
	// 사용자 정보를 표현하는 객체
	let user = {
		no: 10,
		name: '홍길동',
		email: "hong@gmail.com",
		tel: '010-1234-5678',
		point: 100000,
		createdDate: new Date()
	};
	
	function getDateString(date) {
		let year = date.getFullYear();
		let month = date.getMonth() + 1;
		let day = date.getDate();
		
		return `\${year}-\${month >= 10 ? month : '0' + month}-\${day >= 10 ? day : '0' + day}`;
	}
	
	function loadUser() {
		document.querySelector("input[name=no]").value = user.no;
		document.querySelector("input[name=name]").value = user.name;
		document.querySelector("input[name=tel]").value = user.tel;
		document.querySelector("input[name=email]").value = user.email;
		document.querySelector("input[name=point]").value = user.point;
		document.querySelector("input[name=createdDate]").value = getDateString(user.createdDate);
	}
	
	// 직원목록 정보를 표현하는 객체
	let employees = [
		{no:10, name:"김유신", job:'영업', salary:300},
		{no:20, name:"강감찬", job:'기술', salary:600},
		{no:30, name:"이순신", job:'홍보', salary:400},
	];
	
	function loadEmployees() {
		// 배열의 요소(객체) -> html태그
		// emp: {no:10, name:"김유신", job:'영업', salary:300},
		// -> 자바스크립트 객체를 태그로 변환시킨 것
		let rows = employees.map(function(emp){
			return `
				<tr>
					<td>\${emp.no}</td>
					<td>\${emp.name}</td>
					<td>\${emp.job}</td>
					<td>\${emp.salary}</td>
				</tr>
			`;
			// 배열에 있는 요소를 하나의 문자열로 만듦
		}).join("");
		
		document.querySelector('#table-employees > tbody').innerHTML = rows;
	}
</script>
</body>
</html>