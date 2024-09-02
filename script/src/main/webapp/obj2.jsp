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
	// 객체 생성하기
	/*
		객체 생성하기 - 객체 리터럴과 생성자 함수
		
		+ 객체 리터럴을 이용해서 객체 생성하기
		let user1 = {
			name: "홍길동",
			email: "hong@gmail.com",
			tel: "010-1111-111",
			age: 30
		}
	
		let user2 = {
			name: "김유신",
			email: 'kim@gmail.com',
			tel: "010-2222-2222",
			age: 50
		}
	
		+ 생성자 함수를 이용해서 객체 생성하기
		function User() {
			this.name = a;
			this.email = b;
			this.tel = c;
			this.age = d;
		}
	
		* 생성자 함수는 다른 함수와 구별하기 위해서 함수명을 대문자로 시작한다.
		* 생성자 함수는 일반함수와 동일한 함수다.
		  단, 생성자함수는 일반함수 실행하듯이 실행하지 않고 new 키워드와 함께 실행해야 한다.
		* 생성자 함수는 new 키워드로 생성된 객체의 초기화를 담당한다.
		* 생성자함수로 객체 생성하기
			let user = new User("홍길동", "hong@gmail.com", "010-1111-1111", 30);
			1. new 키워드 때문에 새로운 객체가 생성된다.
			2. User() 함수를 실행한다.
			  * 1번에서 생성한 객체의 주소값이 User함수의 this로 전달된다.
			  * 즉, User함수 수행문에서 사용되는 this에는 방금 새로 생성된 객체가 연결되어 있다.
			  * 따라서, User함수 수행문에서 새로 생성된 객체에 대한 초기화 작업을 수행할 수 있다.
			3. User() 함수의 실행이 완료되면 user변수에 새로 생성된 객체가 대입된다.
		  
		let user1 = new User();
		let user2 = new User();
		let user3 = new User();		새로운 객체가 생성되고 user3에 대입된다.
		let user4 = User();			User() 함수가 실행되고, user4에 undefined
	*/
	
	// 생성자 함수 정의하기
	function User(name, email, tel, age) {
		this.name = name;
		this.email = email;
		this.tel = tel;
		this.age = age;
	}

	let user1 = new User("홍길동", "hong@gmail.com", "010-1111-1111", 30);
	let user2 = new User("김유신", "kim@naver.com", "010-2222-2222", 25);
	
	console.log(user1);
	console.log(user2);
	
	// 자바스크립트가 제공하는 생성자 함수
	let obj1 = new Object();
	let obj2 = new Array();
	let obj3 = new Boolean("false");
	let obj4 = new Number(4);
	let obj5 = new Date();
	
	console.log(obj1);
	console.log(obj2);
	console.log(obj3);
	console.log(obj4);
	console.log(obj5);
</script>
</body>
</html>