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
	// 배열
	/*
		배열
			- 순서가 있는 콜렉션이다.
			- 자바스크립트의 배열은 가변길이 배열이다.
			* 자바의 ArrayList와 유사하다.
			
		배열의 선언
			let arr = [];
			let arr2 = [값, 값, 값, 값, ...];
			
		배열의 요소 수정/추가하기
			let arr1 = [];
			arr1[0] = 값;			arr1 -> [값]
			arr1[1] = 값;			arr1 -> [값, 값]
			arr1[4] = 값;			arr1 -> [값, 값, undefined, undefined, 값];
			* 인덱스를 잘 활용해서 배열의 특정위치에 값을 저장할 수 있다.
			* 배열에 같이 저장될 때 마다 배열의 크기는 자동으로 변한다.
			
		배열의 값 변경하기
			let arr1 = ['김유신', '강감찬', '홍길동'];
			arr1[1] = "류관순"; arr -> ['김유신', '류관순', '홍길동']
			* 인덱스를 활용해서 저장된 위치의 값을 변경할 수 있다.
			
		배열의 length 프로퍼티
			length 프로퍼티는 배열의 길이를 나타낸다.
			let arr1 = ['김유신', '강감찬', '홍길동'];
			console.log(arr1.length);	// 3이 출력된다.
			
			* 자바스크립트 배열의 length는 쓰기가 가능하다.
			let arr1 = ['김유신', '강감찬', '홍길동'];
			arr1.length = 1;	arr1 -> ['김유신']
			* 배열의 모든 요소를 지우기
			arr1.length = 0;	arr1 -> []
	*/
	
	// 배열의 선언
	let arr1 = [];
	let arr2 = ['김유신', '강감찬', '홍길동'];
	
	// 배열에 값 추가하기
	arr1[0] = 100;
	arr1[1] = 200;
	arr1[4] = 300;
	
	console.log(arr1);
	console.log(arr2);
	
	console.log('arr1 배열의 길이', arr1.length);
	console.log('arr2 배열의 길이', arr2.length);
	
	arr1.length = 0;
	arr2.length = 1;
	
	console.log('arr1 배열의 길이', arr1.length);
	console.log('arr2 배열의 길이', arr2.length);
</script>
</body>
</html>