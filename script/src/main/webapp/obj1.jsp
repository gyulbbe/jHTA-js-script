<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>객체</h1>
	
<script type="text/javascript">
	// 자바스크립트의 객체
	/*
		객체
			- key:value의 쌍으로 구성된 property를 여러개 담을 수 있다.(자바의 Map과 유사하다)
			- 자바스크립트의 객체는 Property들의 집합(순서없는 콜렉션)이다.
			
		객체의 생성
			- 빈(Empty) 객체 생성하기
				let obj = {};		// 객체 리터럴을 이용해서 빈 객체 생성한다.
			- 프로퍼티가 있는 객체 생성하기
				let user = {
					// 프로퍼티 정의
					name: "홍길동",
					email: "hong@gmail.com",
					tel: "010-1111-1111",
					getName: function() {
						return this.name;
					}
				}
			- 프로퍼티의 사용
				+ 프로퍼티값 조회하기
					let value = user.name;
					let value = user['name'];
				+ 프로퍼티값 변경하기
					user.name = "김유신";
					user['name'] = "김유신";
			- 프로퍼티의 추가/삭제
				+ 프로퍼티 추가
					let user = {};
			
					user.name = "홍길동";		user -> {name:'홍길동'}
					user.age = 30;			user -> {
													 name: '홍길동',
													 age: 30
													}
					user.age = 40;			user -> {
													 name: '홍길동',
													 age: 40
													}
					* user가 참조하는 객체에
						age 프로퍼티가 없으면 새 프로퍼티 추가
						age 프로퍼티가 있으면 값 변경
				+ 프로퍼티 삭제
					delete user.name;
	*/
	
	// 빈 객체 생성하기
	let user = {};
	console.log(user);
	
	// 현재 객체에 존재하지 않는 프로퍼티값 조회하기
	// 오류가 발생하는 대신 undefined값이 출력된다.
	console.log(user.name);	// undefined 값이 출력된다.
	
	// 새로운 프로퍼티 추가하기
	user.name = "홍길동";
	user['email'] = "hong@gmail.com";
	user['tel'] = '010-1111-111';
	user['info'] = function(){
		console.log('실행');
		console.log(this.name);
		console.log(this.tel);
		console.log(this.email);
	};
	
	console.log(user);
	
	// 프로퍼티값 조회하기
	console.log(user.name);
	console.log(user.email);
	console.log(user['tel']);
	user.info();
</script>
</body>
</html>