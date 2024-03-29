<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
<link rel="stylesheet"
	href="../../../../resources/css/board/common/template.css" />
<link rel="stylesheet"
	href="../../../../resources/css/board/info/infoRegistr.css" />
<link rel="stylesheet"
	href="../../../../resources/css/board/common/CkEditor5.css" />

<script
	src="https://cdn.ckeditor.com/ckeditor5/41.0.0/super-build/ckeditor.js"></script>

</head>
<body>
	<!-- 전체 구조 -->
	<div class="page-wrapper" id="main-wrapper" data-layout="vertical"
		data-navbarbg="skin6" data-sidebartype="full"
		data-sidebar-position="fixed" data-header-position="fixed">

		<jsp:include page="../common/nav.jsp" />
		<!-- 페이지 오른쪽 컨텐츠 영역 -->
		<div class="body-wrapper">
			<!-- 헤더 영역 -->
			<jsp:include page="../common/header.jsp" />

			<div class="container-fluid">
				<h1 class="card-project-name">게시글 등록</h1>
			</div>
			<form action="/info/SubmitRegistr" method="post" id="submitForm">
				<div class="row">
					<div class="main-section">
						<div class="container-fluid">
							<div class="container-fluid">
								<div class="card">
									<div class="main-boardList">
										<div>
											<p class="form-lable">제목</p>
											<input type="text" name="infoTitle" class="form-input"
												placeholder="제목을 입력해주세요">
										</div>
										<div>
											<p class="form-lable">카테고리</p>
											<select id="category" name="infoCategory" class="form-input">
												<option value="">선택해주세요</option>
												<option value="programming">프로그래밍 언어</option>
												<option value="framework">프레임워크 및 라이브러리</option>
												<option value="database">데이터베이스</option>
												<option value="webDev">웹개발</option>
												<option value="mobileDev">모바일 개발</option>
												<option value="machineLearning">기계학습 / 인공지능</option>
												<option value="cloud">클라우드 & 서버</option>
												<option value="devTools">개발 도구</option>
												<option value="portfolio">프로젝트 & 포트폴리오</option>
											</select>
										</div>

										<div>
											<p class="form-lable">본문</p>
											<!-- CKEditor를 위한 div 태그 -->
											<div id="editor">
												<!-- CKEditor가 초기화 되는곳 -->
											</div>
										</div>
										<!-- 숨겨진 필드로 에디터의 데이터를 전송 -->
										<input type="hidden" name="infoContent" id="editorData">
										<div>
											<p class="form-lable">태그</p>
											<div class="form-tag-div">
												<p class="form-input-tag-text">#</p>
												<input type="text" name="infoTag1" class="form-input-tag"
													placeholder="태그를 입력해주세요">
												<p class="form-input-tag-text">#</p>
												<input type="text" name="infoTag2" class="form-input-tag"
													placeholder="태그를 입력해주세요">
												<p class="form-input-tag-text">#</p>
												<input type="text" name="infoTag3" class="form-input-tag"
													placeholder="태그를 입력해주세요">
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="button-wrapper">
						<a href="#" onclick="cancelAndBack(event)"
							class="board-update-btn">취소하기</a>
						<button type="submit" id="submit" class="board-update-btn">등록하기</button>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>

</html>

<script>
    let editor;
          CKEDITOR.ClassicEditor.create(document.getElementById("editor"), {
            toolbar: {
                    items: [
                        'heading', '|',
                        'bold', 'italic', 'strikethrough', 'underline', 'code', '|',
                        'bulletedList', 'numberedList', 'todoList', '|',
                        'outdent', 'indent', '|',
                        'undo', 'redo',
                        'fontSize', 'fontFamily', 'fontColor', 'fontBackgroundColor', 'highlight', '|',
                        'alignment', '|',
                        '-',
                        'link', 'uploadImage', 'blockQuote', 'insertTable', 'mediaEmbed', 'codeBlock', 'htmlEmbed', '|',
                        'sourceEditing'
                    ],
                    shouldNotGroupWhenFull: true
                },
                list: {
                    properties: {
                        styles: true,
                        startIndex: true,
                        reversed: true
                    }
                },
             heading: {
                    options: [
                        { model: 'paragraph', title: 'Paragraph', class: 'ck-heading_paragraph' },
                        { model: 'heading1', view: 'h1', title: 'Heading 1', class: 'ck-heading_heading1' },
                        { model: 'heading2', view: 'h2', title: 'Heading 2', class: 'ck-heading_heading2' },
                        { model: 'heading3', view: 'h3', title: 'Heading 3', class: 'ck-heading_heading3' },
                        { model: 'heading4', view: 'h4', title: 'Heading 4', class: 'ck-heading_heading4' },
                        { model: 'heading5', view: 'h5', title: 'Heading 5', class: 'ck-heading_heading5' },
                        { model: 'heading6', view: 'h6', title: 'Heading 6', class: 'ck-heading_heading6' }
                    ]
                },
               placeholder: '내용을 입력해주세요.',
                fontFamily: {
                    options: [
                        'default',
                        'Arial, Helvetica, sans-serif',
                        'Courier New, Courier, monospace',
                        'Georgia, serif',
                        'Lucida Sans Unicode, Lucida Grande, sans-serif',
                        'Tahoma, Geneva, sans-serif',
                        'Times New Roman, Times, serif',
                        'Trebuchet MS, Helvetica, sans-serif',
                        'Verdana, Geneva, sans-serif'
                    ],
                    supportAllValues: true
                },
            fontSize: {
                    options: [ 10, 12, 14, 'default', 18, 20, 22 ],
                    supportAllValues: true
                },
             htmlSupport: {
                    allow: [
                        {
                            name: /.*/,
                            attributes: true,
                            classes: true,
                            styles: true
                        }
                    ]
                },
          htmlEmbed: {
                    showPreviews: true
                },
         link: {
                    decorators: {
                        addTargetToExternalLinks: true,
                        defaultProtocol: 'https://',
                        toggleDownloadable: {
                            mode: 'manual',
                            label: 'Downloadable',
                            attributes: {
                                download: 'file'
                            }
                        }
                    }
                },
              mention: {
                    feeds: [
                        {
                            marker: '@',
                            feed: [
                                '@apple', '@bears', '@brownie', '@cake', '@cake', '@candy', '@canes', '@chocolate', '@cookie', '@cotton', '@cream',
                                '@cupcake', '@danish', '@donut', '@dragée', '@fruitcake', '@gingerbread', '@gummi', '@ice', '@jelly-o',
                                '@liquorice', '@macaroon', '@marzipan', '@oat', '@pie', '@plum', '@pudding', '@sesame', '@snaps', '@soufflé',
                                '@sugar', '@sweet', '@topping', '@wafer'
                            ],
                            minimumCharacters: 1
                        }
                    ]
                },
             removePlugins: [
               'AIAssistant',
                    'CKBox',
                    'CKFinder',
                    'EasyImage',
               'RealTimeCollaborativeComments',
                    'RealTimeCollaborativeTrackChanges',
                    'RealTimeCollaborativeRevisionHistory',
                    'PresenceList',
                    'Comments',
                    'TrackChanges',
                    'TrackChangesData',
                    'RevisionHistory',
                    'Pagination',
                    'WProofreader',
               'MathType',
               'SlashCommand',
                    'Template',
                    'DocumentOutline',
                    'FormatPainter',
                    'TableOfContents',
                    'PasteFromOfficeEnhanced',
                    'CaseChange'
                ]
            })
            .then(newEditor => {
                console.log("a : " + newEditor);
                editor = newEditor;
            });

        //저장 
          document.querySelector('#submit').addEventListener('click', function(event) {
              const title = document.querySelector('input[name="infoTitle"]').value;
              const category = document.querySelector('#category').value;
              const editorData = editor.getData();

              if (!title) {
                  alert('제목을 작성해주세요.');
                  event.preventDefault();
                  return;
              }
              if (!category) {
                  alert('카테고리를 선택해주세요.');
                  event.preventDefault();
                  return;
              }
              if (!editorData) {
                  alert('내용을 작성해주세요.');
                  event.preventDefault();
                  return;
              }

              const shouldSubmit = window.confirm("등록하시겠습니까?");
              if (shouldSubmit) {
                  document.querySelector('#editorData').value = editorData;
                  document.querySelector('#submitForm').submit(); 
              } else {
                  event.preventDefault();
              }
          });


          
          // 취소하기 버튼 클릭 시
          function cancelAndBack(event) {
              event.preventDefault(); 
              var confirmed = confirm('작성 중인 내용이 사라집니다. 정말로 취소하시겠습니까?');
              if (confirmed) {
                  history.back();
              }
          }

</script>