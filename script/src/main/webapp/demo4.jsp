<%@ page contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<!doctype html>
<html lang="ko">
<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>애플리케이션</title>
</head>
<body>
	<h1>자바스크립트의 리터럴</h1>
	<p>리터럴 : 상수값을 표현하는 방법</p>
	
<script type="text/javascript">
	// 숫자 리터럴
	let num1 = 10; // 정수
	let num2 = 3.14; // 실수
	let num3 = 5.3e3 // 5.3*10^3 (5300)
	let num4 = 1e-3 // 0.003
	
	//문자열 리터럴
	let str1 = '안녕하세요'; // 작은 따옴표
	let str2 = "안녕하세요"; // 큰 따옴표
	let str3 = `안녕하세요`; // 백틱
	let str4 = `
		안녕하세요
		문자열을 여러 줄에 걸쳐서 작성할 수 있습니다.
		백딕을 사용하면..
	`; // 자바의 """
	
	let name = "홍길동";
	let kor = 100;
	let eng = 80;
	let math = 60;
	let text = `
		\${name}님의 성적을 확인해주세요.
	
		국어점수: \${kor}
		영어점수: \${eng}
		수학점수: \${math}
		종합점수: \${kor + eng + math}
		평균점수: \${(kor + eng + math)/3}
	`
	alert(text);
	
	// 불린형
	// 블린형의 값은 true, false 두 종류의 값이 있다.
	let b1 = true;
	let b2 = false;
	
	// 배열
	// 자바스크립트의 배열은 [값, 값, 값]의 형식으로 작성한다.
	// 자바스크립트의 배열은 값이 서로 다른 타입이어도 상관없다.
	let arr = [];
	let arr2 = [10, 20, 30];
	let arr3 = ["홍길동", "김유신", "강감찬"];
	let arr4 = ["홍길동", "hong@gmail.com", 35, 173.1, 68.1, "A"];
	
</script>
</body>
</html>