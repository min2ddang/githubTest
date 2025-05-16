<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:if test="${not empty dto}">
	<table border="1" width="700">
		<tr>
			<th>제목</th>
			<td>${dto.title}</td>
		</tr>
		
		<tr>
			<th>글 번호</th>
			<td>${dto.id}</td>
		</tr>
	
		<tr>
			<th>작성자</th>
			<td>${dto.writer}</td>
		</tr>	
	
		<tr>
			<th>내용</th>
			<td>${dto.content}</td>
		</tr>

		<tr>
			<th>조회수</th>
			<td>${dto.readCount}</td>
		</tr>
		
		<tr>
			<th>작성일</th>
			<td><fmt:formatDate value="${dto.boardWriteTime}" pattern="yyyy/MM/dd hh:mm:ss"/></td>
		</tr>
		
		<c:if test="${dto.isFile == 1}">
			<tr>
				<th>첨부파일</th>
				<td>
					<img src="/upload/${dto.uploadFileName}" width="300" >
				</td>
			
			</tr>
		</c:if>
		
		
	</table>
</c:if>

<button onclick="location.href='/board/list?page=${page}'">글목록</button>
<button onclick="location.href='/board/update?id=${dto.id}&page=${page}'">글수정</button>
<button onclick="location.href='/board/delete?id=${dto.id}&page=${page}'">글삭제</button>



















