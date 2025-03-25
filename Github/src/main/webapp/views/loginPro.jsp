<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="dto" class="academic.member.dto.MemberDTO" />
<jsp:useBean id="dao" class="academic.member.dao.MemberDAO" />
<jsp:setProperty property="*" name="dto" />

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