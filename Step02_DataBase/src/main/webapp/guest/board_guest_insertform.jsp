<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/guest/board_guest_insertform.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
</head>
<body>
	<div class = "container">
		<h1>방명록 남기기</h1>
		<form action = "board_guest_insert.jsp" method = "post">
			<div class = "mb-1">
				<label for = "writer" class = "form-label">작성자</label>
				<input class = "form-control" type="text" id="writer" name="writer"/>
			</div>
			<div class = "mb-1">
				<label for = "content" class = "form-label">방명록내용</label>
				<textarea cols="40" rows="8" class = "form-control" id = "content" name="content" onclick="this.value=''">방명록을 입력해주세요!</textarea>
			</div>
			<div class = "mb-1">
				<label for = "pwd" class = "form-label">비밀번호</label>
				<input class = "form-control" type="text" id="pwd" name="pwd"/>
			</div>
			<button class = "btn btn-success" type = "submit">글올리기</button>
		</form>
	</div>
</body>
</html>