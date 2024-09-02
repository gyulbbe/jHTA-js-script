<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>자바스크립트 내장객체</h1>
	
<script type="text/javascript">
	// 자바스크립트 내장객체
	/*
		String 객체
			- 문자열을 표현하는 객체
			- property
				length
					문자열의 길이 표현하는 프로퍼티
			- method
				toUpperCase()
					대문자로 변환된 문자열을 반환한다.
				toLowerCase()
					소문자로 변환된 문자열을 반환한다.
				substr(start, length)
					start위치부터 length길이만큼 문자열을 잘라서 반환한다.
				substring(start, end)
					start위치부터 end위치 앞까지 문자열을 잘라서 반환한다.
					end를 생략하면 start위치부터 문자열의 끝까지 잘라서 반환한다.
				split(separator)
					문자열을 지원된 구분문자로 자른다음 배열로 반환한다.
				search(searchValue)
					문자열에 지정된 searchValue값이 있으면 index를 없으면 -1을 반환한다.
				replace(searchValue, newValue)
					문자열의 일부분을 변경한다.
				startWith(searchValue)
					문자열이 지정된 값으로 시작하면 true를 반환한다.
				endsWith(searchValue)
					문자열이 지정된 값으로 종료되면 true를 반환한다.
				trim()
					문자열 좌우의 공백문자가 제거된 문자열을 반환한다.
				indexOf(searchValue)
					문자열에 지정된 문자열의 위치를 반환한다.
				charAt(index)
					문자열에서 지정된 위치의 문자하나를 반환한다.
		Number 객체
			- 숫자를 표현하는 객체다.
			- method
				Number.isInteger(값)
					지정된 값이 정수일 때 true를 반환한다.
				Number.isNaN(값)
					지정된 값이 NaN일 때 true를 반환한다.
					예)
						Number.isNaN(10)	- false
						Number.isNaN(0/0)	- true
				toFixed(자릿수)
					숫자를 지정된 자릿수로 반올림한다.
					예)
						let num = 5.56432
						let x = num.toFixed(2);
						console.log(x);		// 5.56
						
				toLocaleString()
					숫자를 세자리마다 ,가 포함된 문자열로 반환한다.
					예)
						let num = 1000000;
						let text = num.toLocaleString()
						console.log(text);	// '10,000,000'
		Date 객체
			- 날짜와 시간정보를 표현하는 객체다.
			- 생성자 함수
				new Date()
					시스템의 현재 날짜와 시간정보를 표현하는 Date객체를 생성
				new Date(밀리초)
					지정된 유닉스타임에 해당하는 Date객체를 생성
					
			- method
				getFullYear()
					년도 반환한다.
				getMonth()
					월을 반환한다.(0부터 시작하는 값)
				getDate()
					날짜를 반환한다.
				getHours()
					시간을 반환한다.
				getMinutes()
					분을 반환한다.
				getSeconds()
					초를 반환한다.
				getTime()
					유닉스타임을 반환한다.
				toLocaleDateString()
					날짜를 'yyyy.M.d' 형식의 문자열로 반환한다.
				toLocaleString()
					날짜를 'yyyy.M.d a h:m:s' 형식의 문자열로 반환한다.
					
		Math 객체
			- 수학계산과 관련된 기능을 제공하는 객체다.
			- 주요기능
				Math.round(값)
				Math.ceil(값)
				Math.floor(값)
				Math.abs(값)
				Math.random()
		Object 객체
			- 자바스크립트 객체를 표현하는 객체다.
			- method
				Object.entries(객체)
					해당객체의 프로퍼티들을 전부 반환한다.
				Object.keys(객체)
					해당객체의 모든 프로퍼티이름을 반환한다.
				Object.getOwnPropertyNames(객체)
					해당객체의 모든 프로퍼티이름을 반환한다.
		RegExp 객체
			- 정규표현식을 표현하는 객체다.
			- 정규표현식은 지정된 패턴의 문자열을 문자열에서 검색하거나
						지정된 패턴의 문자열을 문자열에서 찾아서 변경하거나
						지정된 패턴의 문자열인지를 체크한다.
			- 정규표현식은 아이디, 비밀번호, 이름, 이메일, 전화번호, 등의 입력값이 유효한 형식의 입력값인지 체크할 때 주로 사용한다.
		JSON 객체
			- JSON형식의 데이터를 생성하거나 분석할 때 사용하는 객체
			- method
				JSON.parse(json형식의 텍스트)
					json형식의 텍스트를 분석해서 자바스크립트 객체나 배열로 변환한다.
					
				JSON.stringify(객체 혹은 배열)
				
	*/
</script>
</body>
</html>