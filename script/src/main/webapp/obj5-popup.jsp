<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>팝업창</h1>

	<p>팝업창입니다.</p>
	<div>
		<button onclick="closeWindow();">닫기</button>
	</div>
	
<script>
	function closeWindow() {
		self.close();
	}
</script>
</body>
</html>