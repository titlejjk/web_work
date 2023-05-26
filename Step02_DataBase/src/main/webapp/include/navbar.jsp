<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 어두운색 계열의 navbar 배경색이면 data-bs-theme="dark"속성을 추가한다. 
		 navbar-expend-md 는 md영역 이상에서 navbar-collspse가 펼쳐 지도록 한다.
	-->
<nav class="navbar bg-primary navbar-expand-md" data-bs-theme="dark">
  	<div class="container-fluid">
    	<a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">
      		<img src="https://getbootstrap.com/docs/5.2/assets/brand/bootstrap-logo.svg" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
      		Acorn
    	</a>
    	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText">
            <span class="navbar-toggler-icon"></span>
       	</button>
       	<%
       		//어느 페이지에 포함되었는지 정보를 얻어오기
       		String current=request.getParameter("current"); //"index" or "member" or "guest"
       		
       	%>
       	<div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav me-auto">
              	<li class="nav-item">
              		<%if(current.equals("member")){ %>
              			<a class="nav-link active" href="${pageContext.request.contextPath}/member/list.jsp">회원목록</a>
              		<%}else{ %>
                   		<a class="nav-link" href="${pageContext.request.contextPath}/member/list.jsp">회원목록</a>
              		<%} %>
              	</li>
              	<li class="nav-item">
                   	<a class="nav-link <%=current.equals("guest") ? "active" : "" %>" href="${pageContext.request.contextPath}/guest/list.jsp">방명록</a>
              	</li>
            </ul>
            <form class="d-flex">
            	<input class ="form-control me-2" type = "search" placeholder = "Search">
            	<button class = "btn btn-info" type="submit">Search</button>
            </form>
            <span class = "navbar-text ms-2" data-bs-theme="dark" >
            	Made by kimgura
            </span>
       	</div>
  	</div>
</nav>