<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<!doctype html>
<html lang="ko">
<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>애플리케이션</title>
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
</head>
<body>
	<h1>연산자</h1>

<script type="text/javascript">
	// 사칙연산자
		// 덧셈연산자: +
		// 뺄셈연산자: -
		// 곱셈연산자: *
		// 나눗셈연산자: /
		// 나머지연산자: %
		// 거듭제곱연산자: **
	let num1 = 3;
	let num2 = 5;
	
	console.log(num1 + num2);
	console.log(num1 - num2);
	console.log(num1 * num2);
	console.log(num1 / num2);	// 0.6이 출력된다.
	console.log(num1 / 0);		// Infinity가 출력된다.
	console.log("안녕하세요"/num1);	// NaN이 출력된다.
	console.log(num1 % num2);
	console.log(num1 ** num2);
	
	// NaN은 Not a Number의 줄임말이다.
	// NaN은 계산중에 오류가 발생했음을 나타내는 값이다.
	// 자바스크립트는 사칙연산 과정에 올바르지 않은 값이 사용되면
	// 오류가 발생하는 대신 NaN값을 최종결과값으로 반환한다.
	// NaN은 오라클의 null처럼 값에 포함되기만 해도 null을 출력하는 것처럼 동작한다.
	
	// 덧셈연산자의 예외적 사용
	// + 덧셈연산자의 좌항 혹은 우항에 문자열이 있으면
	//   덧셈연산자는 두 항의 값을 이어붙인 문자열을 반환한다.
	let message = "안녕하세요";
	console.log(message + num1);
	console.log(num1 + num2 + message);
	console.log(message + num1 + num2);
	
	// 사칙연산에서 undefined, null, true, false
	// undefuned + 1 --> NaN
	// null + 1 --> 1
	// true + 1 --> 2
	// false + 1 --> 1
	// null은 0, truesms 1, false는 0으로 변환한 후 연산한다.
	
	// 비교연산자
	// <, <, >=, <=, ==, !=
	// ===, !==
	
	let value1 = "23";
	let value2 = 23;
	
	console.log(value1 == value2);	// true
	console.log(value1 === value2);	// false
	
	console.log(value1 != value2);	// false
	console.log(value1 !== value2);	// true
	
	// 문자열 비교
	console.log("안녕" === "안녕");	// true
	console.log("안녕" === "하이");	// false
	
	// 논리연산자
	// && || !
	
	let distance = 10000;
	let year = 2;
	
	// 운행거리가 15000이상이거나 사용기간이 3년 이상이면 유상수리로 판정한다.
	let isPay = distance >= 15000 || year >= 3;
	console.log("유상수리 여부: ", isPay);
	
	// 자바스크립트가 논리적으로 false로 여기는 것
	// false
	// undefuned
	// NaN
	// null
	// 0
	// '' "" ``
	// * 자바스크립트는 논리연산자의 
	//		좌항과 우항에 true/flase로 판정되는 연산식이 위치할 수 있다.
	//			let isPay = distance >= 15000 || year >= 3;
	//			이 경우 isPay에 대입되는 최종결과는 true/false값 중 하나다.
	//		좌항과 우항에 값이 바로 위치할 수 있다.
	//			let page = page || 1
	//			위의 경우 값을 위의 판정기준에 따라서 true/false로 판정한다.
	//			이 경우 page에 대입되는 최종결과는 true/false값이 아닐 수 있다.
	
	// 조건연산자(삼항연산자)
	// 조건식 ? 값1 : 값2
	// * 조건식에 비교연산자/논리연산자를 이용한 연산식이 올 수 있다.
	// * 조건식에 연산식 대신 값이 위치할 수 있다.
	let average = 70;
	let message1 = average >= 60 ? "합격" : "불합격";
	console.log(message1);
	
	let inputValue = '';
	let message2 = inputValue ? '입력완료' : '값을 입력하세요';
	console.log(message2);

</script>
</body>
</html>