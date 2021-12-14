<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="false" %>
<html>
<head>
 	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css?ver=1" />
	<title>전전포럼</title>
</head>
<body>
<h1>
	전전포럼
</h1>

<div class="container"> 
	<div class="table">
		<table class="list card app-board-section">
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
				<c:set value="${num}" var="index" />
				<c:forEach items="${board}" var="post">
					<tr>
						<td class="no">${index}</td>
						<td class="title">
							<c:url value= "visit" var="visitURI">
								<c:param name="postNo" value="${post.no}" />
							</c:url>
							<a href="${visitURI}">${post.title}</a>
						
						</td>
						<td class="author">${post.author}</td>
						<td class="time">
							<fmt:formatDate pattern="MM/dd" value="${post.date}" />
						</td>
						<td class="like">${post.likes}</td>
						<td class="views">${post.views}</td>
					</tr>
				<c:set value="${index-1}" var="index" />
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="sm:tw-block tw-flex tw-items-center">
		<div class="tw-flex tw-items-center sm:tw-pb-3"></div>
		<div class="tw-flex-1"></div>
		<div class="tw-flex write-btn">
			<button type="button" onclick="location.href='write'" class="app-button primary sm:tw-flex-1">글쓰기</button>
		</div>
	</div>
</div>
</body>
</html>
