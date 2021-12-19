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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css?ver=3" />
	<title>전전포럼</title>
</head>
<body>
<h1>
	전전포럼
</h1>

<div class="app-layout">
	<main class="app-content app-clearfix">
		<div class="app-clearfix">
			<div id="app-board" class="app-board-skin">
				<div id="board-list">
					<div class="app-board-section">
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
											<a href="visit/${post.no}">
												<span class="title-link">${post.title}</span>
											</a>
										</td>
										<td class="author">${post.author}</td>
										<td class="time">
											<fmt:formatDate pattern="MM/dd" value="${post.date}" />
										</td>
										<td class="views">${post.views}</td>
										<td class="like">${post.likes}</td>
									</tr>
								<c:set value="${index-1}" var="index" />
								</c:forEach>
							</tbody>
						</table>
					</div>
					<div class="sm:tw-block tw-flex tw-items-center">
						<button type="button" onclick="location.href='/login/logout'" class="app-button tw-mr-2 sm:tw-flex-1">로그아웃</button>
						<div class="tw-flex tw-items-center sm:tw-pb-3"></div>
						<div class="tw-flex-1"></div>
						<div class="tw-flex write-btn">
							<button type="button" onclick="location.href='write'" class="app-button primary sm:tw-flex-1">글쓰기</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main> 
</div>
</body>
</html>
