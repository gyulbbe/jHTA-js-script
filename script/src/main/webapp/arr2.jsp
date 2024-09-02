<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>배열</h1>
	
<script type="text/javascript">
	// 배열에 저장된 값을 반복처리하기
	/*
		for문을 이용하면 배열에 저장된 값을 순환하며 처리할 수 있다.
		
		let arr = ['김유신', '홍길동', '강감찬']
	
		+ 전통적인 for문으로 배열 반복처리하기
			for (let index = 0; index < arr.length; index++) {
				let value = arr[index];
				console.log(index, value);
			}
		+ for..of 구문으로 배열 반복처리하기
		
	*/
	let arr = ['김유신', '홍길동', '강감찬']
	for (let index = 0; index < arr.length; index++) {
		let value = arr[index];
		console.log(index, value);
	}
		
		// 자바스크립트의 for..of구문은 java의 향상된 for문과 유사하다.
		for (let value of arr) {
			console.log(value);
		}
		
</script>
</body>
</html>