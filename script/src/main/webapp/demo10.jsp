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
	<h1>함수1</h1>
	
<script type="text/javascript">
/*
	함수
 		+ 프로그램내에서 반복적으로(여러 군데에서) 실행되는 수행문을 모아놓은 이름있는 코드블록이다.
 		+ 다른 프로그래밍 언어의 메소드와 유사하다.
 		+ 사용자가 화면의 요소와 상호작용할 때마다 실행할 작업을 함수로 구현할 수 있다.
 	함수의 정의
 		함수선언식
 			function 함수명(매개변수명, 매개변수명, 매개변수명) {
				수행문;
				수행문;
			}
			* function키워드는 함수임을 나타낸다.
			* 함수명은 다른 함수가 구별되는 함수의 고유한 이름이다.
			* 매개변수는 함수를 호출할 때 전달된 값을 저장하는 변수다.
			* 자바와 차이점
				- 접근제한자가 없다.
				- 반환타입이 없다.
				- 매개변수의 타입이 없다.
			
		함수표현식
			* 자바스크립트에서는 함수도 값이다.
			* 자바스크립트에서 함수는 조금 특별한 값으로 취급한다.
			* 함수가 값으로 취듭되기 때문에 변수에 대입할 수 있고,
			  매개변수로 전달할 수 있고, 반환값으로 사용할 수 있다.
			  
			let 변수 = function() {
				수행문;
				수행문;
			};
			* 이름없는 함수를 생성하고 변수에 대입하는 것이 함수표현식으로 함수를 정의하는 방법이다.
			
			function x(value1, value2) {
				console.log('연습', value1, value2);
			}
			
			* 함수표현식으로 함수 정의
			let y = function(value1, value2) {
				console.log('연습', value1, value2);
			}
			
			let z = x;
			
			* 함수 실행
			x(10, 20);	// 함수명이 x인 함수를 실행한다.
			y(10, 20);	// 변수 y에 대입된 함수를 실행한다.
			z(10, 20); 	// 변수 z에 대입된 함수를 실행한다.
			
			* 함수선언과 함수표현식의 차이
				- 함수선언방식으로 함수를 생성하면, 
					+ 함수가 독립된 구문형태로 존재한다.
					+ 어느 위치에서든 실행할 수 있다.(그 전까지 수행문이 실행되지 않아도 더 위에서 실행이 가능하다.)
					+ 함수선언방식으로 정의된 함수는 자바스크립트 실행엔진이 준비단계에서 함수 선언문을 찾고, 해당 함수를 미리 생성한다.
					+ 함수선언방식으로 정의된 함수는 함수 선언문 이전 코드에서도 실행할 수 있다.
				- 함수표현식방식으로 함수를 생성하면,
					+ 함수가 표현식의 일부로 존재하게 된다.
					+ 수행문의 일부이기 때문에 그 전까지 수행문이 실행이 완료되어야 실행된다.
					+ 함수표현방식으로 정의 함수는 실제 실행흐름이 해당 위치에 도달했을 때 함수가 생성된다.
					+ 따라서, 함수표현방식으로 선언된 함수는 함수표현식 이전 코드에서 실행할 수 없다.
 */
 
 	test1(10, 20);
// 	test2(10, 20);
			
 	// "함수선언" 방식으로 함수 정의하기
 	function test1(x, y) {
		console.log("함수선언", x, y);
	}
			
 	// "함수표현식" 방식으로 함수 정의하기
 	let test2 = function(x, y) {
		console.log('함수표현식', x, y);
 	}
 	
 	test1(100, 200);
 	test2(100, 200);
</script>
</body>
</html>