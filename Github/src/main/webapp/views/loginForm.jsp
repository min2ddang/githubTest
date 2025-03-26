<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>로그인</title>
</head>
<body>
    <h1>로그인</h1>
    <form action="loginPro.jsp" method="post">
        아이디: <input type="text" name="id" required /><br/>
        비밀번호: <input type="password" name="pw" required /><br/>
        <button type="submit">로그인</button>
    </form>

    <p>아직 회원이 아니신가요? </p>
    <a href="../register/registerChoice.jsp">회원가입</a> <!-- 회원가입 페이지로 연결 -->
</body>
</html>
