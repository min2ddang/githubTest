<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%request.setCharacterEncoding("UTF-8"); %>

<%
	int logingCheck = dao.loginCheck(dto);

	if(logingCheck > 0) {
		session.setAttribute("sid", dto.getId());
		response.sendRedirect("main.jsp");
	} else {%>
		<script>
			alert("아이디/비번을 확인하세요");
			location.href="loginForm.jsp"
		</script>
	<%}




%>
ㅁㄴㅇㅁㄴㅇㄴ

<h1>03250219</h1>
테스트입니다
sadasdadadasd
eee

+hwen
