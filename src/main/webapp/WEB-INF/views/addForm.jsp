<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css?ver=1" />
<title>글쓰기</title>
</head>
<body>
	<div class="app-layout">
		<main class="app-content app-clearfix">
			<div id="app-board" class="app-board-skin">
				<div class="card">
					<div class="app-board-section app-board-section-padding">
						<form action="writing-complete" method="post">
							<div class="tw-flex tw-items-center tw-mb-3"></div>
							<!-- 상단 레이아웃 -->
							<div class="tw-flex tw-items-center sm:tw-block tw-mb-6">
								<!-- 카테고리 -->
								<div class="app-select sm:tw-mb-3 sm:tw-w-full tw-mr-3"></div>
								<!-- 제목 -->
								<input type="text" name="title" title="제목" placeholder="제목을 입력해주세요." class="app-input tw-flex-1 sm:tw-w-full">
							</div>
							<div class="tw-flex tw-items-center sm:tw-block tw-mb-6">
									<textarea name="content" class="app-input tw-flex-1 sm:tw-w-full"></textarea>
							</div>
								<!-- 버튼 -->
							<div class="sm:tw-block tw-flex tw-items-center">
								<!-- 좌측 -->
								<div class="tw-flex tw-items-center sm:tw-pb-3"></div>
								<div class="tw-flex-1"></div>
								<!-- 우측 -->
								<div class="tw-flex">
									<a href="/csee" class="app-button tw-mr-2 sm:tw-flex-1">취소</a>
									<button type="submit" class="app-button primary sm:tw-flex-1">등록</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
</html>