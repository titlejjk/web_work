<%@page import="test.guest.dao.GuestDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	int inputPwd = Integer.parseInt("pwd");
	
	GuestDao dao = GuestDao.getInstance();
	String dbPwd = dao.getPwd(num);
	
	if(dbPwd.equals(Integer.toString(inputPwd))){
		dao.delete(num);
	}
	
%>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
</head>
<body>
	<form method = "post" action = "/guest/delete.jsp">
		<input type = "hidden" name = "no" value = "<%=num %>">
		<table>
			<tr>
				<td>비밀번호</td>
				<td><input type = "password" name = "pwd"></td>
				<td><input type = "submit" value = "확인"></td>
			</tr>
		</table>
	</form>
	<a href = "/board_guest_list">방명록으로 돌아가기</a>
</body>
</html>