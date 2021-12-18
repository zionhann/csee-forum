<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style data-styles="">ion-icon{visibility:hidden}.hydrated{visibility:inherit}</style>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css?ver=2" />
<title>${post.title}</title>
</head>
<body>
	<div class="app-layout">
		<main class="app-content app-clearfix">
			<div class="app-clearfix">
				<script type="module" src="https://unpkg.com/ionicons@5.2.3/dist/ionicons/ionicons.esm.js"></script>
				<div id="app-board" class="app-board-skin">
					<div class="app-article-wrap">
						<div class="app-card app-board-section">
							<div class="app-board-article-head">
								<div class="app-board-container">
									<div class="app-article-category"></div>
									<h1 class="tw-font-bold tw-text-xl md:tw-text-xl">${post.title}</h1>
									<div class="tw-flex tw-items-end">
										<div class="app-board-article-profile tw-flex tw-items-center">
											<div class="app-profile-image app-avatar" title="${post.author}">
												<ion-icon name="person-sharp" role="img" class="md hydrated" aria-label="person sharp">
													<div class="icon-inner">
														<svg xmlns="http://www.w3.org/2000/svg" class="ionicon s-ion-icon" viewBox="0 0 512 512">
															<title>Person</title>
															<path d="M256 256a112 112 0 10-112-112 112 112 0 00112 112zm0 32c-69.42 0-208 42.88-208 128v64h416v-64c0-85.12-138.58-128-208-128z"></path>
														</svg>
													</div>
												</ion-icon>
											</div>
											<div class="tw-flex-1 app-profile-body">
												<span class="tw-flex tw-items-center tw-font-bold tw-text-sm link author">${post.author}</span>
												<div class="app-article-meta">
													<div class="app-article-meta-item">
														<fmt:formatDate pattern="MM/dd" value="${post.date}" />
													</div>
													<div class="app-article-meta-divider"> · </div>
													<div class="app-article-meta-item">조회 수 ${post.views}</div>
													<div class="app-article-meta-divider"> · </div>
													<div class="app-article-meta-item">추천 수 ${post.likes}</div>
												</div>
											</div>
										</div>
										<div class="tw-flex-1"></div>
									</div>
								</div>
							</div>
							<div class="app-board-container app-article-container">
								<div class="app-article-content app-clearfix">
									<div class="rhymix_content xe_content">
										${post.content}
									</div>
									<div class="tw-flex tw-pt-8">
										<div class="tw-flex-1"></div>
									</div>
								</div>
								<div class="app-article-footer">
									<div class="app-article-vote" data-target-srl="4991726">
    									<button class="app-article-vote__up" data-type="up" onclick="appArticleVote(this)">
           								 	<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
        										<path d="M2 10.5a1.5 1.5 0 113 0v6a1.5 1.5 0 01-3 0v-6zM6 10.333v5.43a2 2 0 001.106 1.79l.05.025A4 4 0 008.943 18h5.416a2 2 0 001.962-1.608l1.2-6A2 2 0 0015.56 8H12V4a2 2 0 00-2-2 1 1 0 00-1 1v.667a4 4 0 01-.8 2.4L6.8 7.933a4 4 0 00-.8 2.4z"></path>
     										</svg>
            								<span class="app-article-vote__count">${post.likes}</span>
    									</button>
      
    									<!-- <button class="app-article-vote__down" data-type="down" onclick="appArticleVote(this)">
      										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
        										<path d="M18 9.5a1.5 1.5 0 11-3 0v-6a1.5 1.5 0 013 0v6zM14 9.667v-5.43a2 2 0 00-1.105-1.79l-.05-.025A4 4 0 0011.055 2H5.64a2 2 0 00-1.962 1.608l-1.2 6A2 2 0 004.44 12H8v4a2 2 0 002 2 1 1 0 001-1v-.667a4 4 0 01.8-2.4l1.4-1.866a4 4 0 00.8-2.4z"></path>
      										</svg>
      
      										<span class="app-article-vote__count">0</span>
    									</button> -->
    								</div>
								</div>
							</div>
							<div class="app-article-toolbar">
      							<div class="app-board-container">
        							<a class="app-link" href="/">
         								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
            								<path fill-rule="evenodd" d="M9.707 16.707a1 1 0 01-1.414 0l-6-6a1 1 0 010-1.414l6-6a1 1 0 011.414 1.414L5.414 9H17a1 1 0 110 2H5.414l4.293 4.293a1 1 0 010 1.414z" clip-rule="evenodd"></path>
          								</svg>
          								<span>목록으로</span>
        							</a>
        
	        						<div class="tw-flex-1"></div>
	     							<div class="tw-flex">
										<a href="/edit?no=${post.no}" class="app-button tw-mr-2 sm:tw-flex-1">수정</a>
										<a href="/" class="app-button sm:tw-flex-1">삭제</a>
									</div>
      							</div>
   						 	</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
</html>