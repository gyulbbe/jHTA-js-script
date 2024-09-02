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
	<h1>반복문</h1>
	
<script type="text/javascript">
	// 반복문
	//		for문(초기식; 조건식; 증감식) {
	//			수행문;
	//			수행문;
	//	}
	//		* 자바스크립트의 for문의 java의 for문과 사용방법이 동일하다.
	
	// 1 ~ 10 까지 출력하기
	for (let num = 1; num <= 10; num++) {
		console.log(num);
	}
	
	// 1 ~ 100까지 합계 구하기
	let total = 0;
	for (let num = 1; num <= 100; num++) {
		total += num;
	}
	console.log('total: ', total);
	
	function gugudan(dan) {
		for (let num = 1; num <= 9; num++) {
			console.log(`\${dan} + \${num} = \${dan*num}`);
		}
	}
	gugudan(10);
	
	//	break와 continue
	//		break: 반복문을 빠져나옵니다.
	//		continue: 다음번 반복으로 넘어간다.

	let total1 = 0;
	let limit = 1000;
	for (let num = 1; num <= 100; num++) {
		total1 += num;
		if (total1 >= limit) {
			break;
		}
	}
	console.log(total1);
	
	// 다음번 반복으로 넘어가기
	// 1 ~ 100까지 숫자를 출력했을 때, 짝수만 출력하기
	for (let num = 1; num <= 100; num++) {
		if (num % 2 !== 0) {
			continue;
		}
		console.log(num);
	}
	
	// while문
	// 반복의 횟수를 지정하지 않고 반복작업을 수행할 때 사용된다.
	// 무한반복을 구현할 때 사용한다.
	while (true) {
		let value = prompt("숫자를 입력하세요", "");
		if (!value) {	// 숫자가 입력되지 않으면 반복을 중단한다.
			break;
		}
		console.log('입력값', value);
	}
	
</script>
</body>
</html>