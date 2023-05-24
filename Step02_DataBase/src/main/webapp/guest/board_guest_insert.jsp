<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	
	GuestDto dto = new GuestDto();
	dto.setWriter(writer);
	dto.setContent(content);
	dto.setPwd(pwd);
	
	GuestDao dao = GuestDao.getInstance();
	boolean isSuccess = dao.insert(dto);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/guest/board_guest_insert.jsp</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
</head>
<body>
	<div class = "container mt5">
		<h1>알림</h1>
		<%if(isSuccess){ %>
			<p class = "alert alert-success">
				<strong><%=writer %></strong>님의 작성하신 방명록이 저장되었습니다.
				<a class = "alert-link" href = "board_guest_list.jsp">확인</a>
			</p>
		<%}else{ %>
			<p class = "alert alert-warning">
				방명록 등록에 실패했습니다!!!
				<a class = "alert-link" href = "board_guest_insertform.jsp">재등록</a>
			</p>
		<%} %>
	</div>
</body>
</html>