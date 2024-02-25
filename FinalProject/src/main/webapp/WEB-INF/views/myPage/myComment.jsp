<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>profile</title>
<%@ include file="/WEB-INF/views/myPage/common/head.jsp"%>
</head>

<body>

	<!-- 전체 구조 -->
	<div class="page-wrapper" id="main-wrapper" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed">
		<!-- 페이지 완쪽 사이드바 영역-->
		<%@ include file="/WEB-INF/views/myPage/common/sidebar.jsp"%>
		<!-- 페이지 오른쪽 컨텐츠 영역 -->
		<div class="body-wrapper">
			<!-- 헤더 영역 -->
			<jsp:include page="./../board/common/header.jsp" />
				<div class="row">
					<div class="main-section">
						<div class="container-fluid">
							<div class="container-fluid">
								<!-- Card 안쪽 -->
								<div class="card">
									<h1 class="card-project-name bottomMargin20">My Comment</h1>
									<!-- card body -->
									<div class="card-body height500 direction1"
										style="padding-top: 0;">
										<!-- card -->
										<div class="direction1 width100 boxShadow borderDefault bottomMargin20 borderRadiusd2">
    <h1 class="titleText1">댓글 모음</h1>

    <!-- infoComment 모음 -->
    <div class="main-commentList bottomBorder bottomPadding10">
        <c:if test="${not empty infoComment}">
            <c:forEach var="infoComment" items="${infoComment}">
                <div class="main-boardList-info">
                    <div class="direction1 commentCard">
                        <div class="direction2 alignCenter bottomMargin10">
                            <img src="../../../..${infoComment.imageFilePath}${infoComment.imageFileName}" alt="" width="30"
                                height="30"
                                class="main-boardList-user-img commentItem">
                            <p class="main-boardList-info-text commentItem">닉네임:
                                ${infoComment.nickname}</p>
                            <p class="main-boardList-info-text commentItem">등록일:
                                ${infoComment.infoCommentDate}</p> 
                            <p class="main-boardList-info-text commentItem">게시글
                                이름: ㅁㅁ</p>
                        </div>
                        <div class="direction2">
                            <p class="commentItem">댓글 내용:
                                ${infoComment.infoCommentContent}</p> <!-- 수정된 부분 -->
                        </div>
                    </div>
                </div>
            </c:forEach>
        </c:if>

        <c:if test="${empty infoComment}">
            <p class="no-comments-message">등록된 댓글이 없습니다.</p>
        </c:if>
    </div>

    <!-- freeComment 모음 -->
    <div class="main-commentList bottomBorder bottomPadding10">
        <c:if test="${not empty freeComment}">
            <c:forEach var="freeComment" items="${freeComment}">
                <div class="main-boardList-info">
                    <div class="direction1 commentCard">
                        <div class="direction2 alignCenter bottomMargin10">
                            <img src="../../../..${freeComment.imageFilePath}${freeComment.imageFileName}" alt="" width="30"
                                height="30"
                                class="main-boardList-user-img commentItem">
                            <p class="main-boardList-info-text commentItem">닉네임:
                              </p>
                            <p class="main-boardList-info-text commentItem">등록일:
                                ${freeComment.freeCommentDate}</p>
                            <p class="main-boardList-info-text commentItem">게시글 제목 : 
                               
                        </div>
                        <div class="direction2">
                            <p class="commentItem">댓글 내용:
                                ${freeComment.freeCommentContent}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </c:if>

        <c:if test="${empty freeComment}">
            <p class="no-comments-message">등록된 댓글이 없습니다.</p>
        </c:if>
    </div>
</div>
						<!-- 페이지네이션 -->
						<!-- <div class="pagination">
								<a href="#">&lt;</a> <a href="#" class="active">1</a> <a
									href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a
									href="#">5</a> <a href="#">&gt;</a>
							</div> -->
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>