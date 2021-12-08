<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
 	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" />
	<title>전전포럼</title>
</head>
<body>
<h1>
	전전포럼
</h1>

<div class="container"> 
	<div class="table">
		<table class="list card">
			<thead>
				<tr>
					<th scope="col" class="number">번호</th>
					<th scope="col" class="title">
						<span>제목</span>
					</th>
					<th scope="col" class="author">글쓴이</th>
					<th scope="col">날짜</th>
					<th scope="col">조회수</th>
					<th scope="col">추천</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td class="no">1</td>
					<td class="title">제목</td>
					<td class="author">익명</td>
					<td class="time">12.08</td>
					<td class="like">77</td>
					<td class="views">7</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="btn">
		<button type="button">글쓰기</button>
	</div>
</div>
</body>
</html>
