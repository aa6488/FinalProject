<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
  
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
  
 <!-- Sidebar Start -->
    <aside class="left-sidebar">
      <!-- Sidebar scroll-->
      <div class="scroll-sidebar" data-simplebar>
         	<a class="btn btn-primary" href="/member/mainForm.do" style="margin-bottom:10px; padding-left:50px; padding-right:50px">로그인홈 이동</a>
         	<a class="btn btn-primary" href="/board/" style="margin-bottom:10px; padding-left:50px; padding-right:50px">커뮤니티 이동</a>
        <div class="d-flex mb-4 align-items-center justify-content-between">
         	<a class="btn btn-primary" href="/colabo" style="margin-right:10px">협업홈 이동</a>
         	 <a class="btn btn-primary" href="/chat/room">채팅방 이동</a>
            <div class="close-btn d-xl-none d-block sidebartoggler cursor-pointer" id="sidebarCollapse">
            </div>
        </div>
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav">
          <ul id="sidebarnav" class="mb-4 pb-2">
            <li class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-5"></i>
              <span class="hide-menu">프로젝트 만들기</span>
            </li>
            <li class="sidebar-item">
              <a
                class="sidebar-link sidebar-link primary-hover-bg"
                href="/colabo/projectEnroll"
                aria-expanded="false"
              >
                <span class="aside-icon p-2 bg-light-primary rounded-3">
                  <i class="ti ti-layout-dashboard fs-7 text-primary"></i>
                </span>
                <span class="hide-menu ms-2 ps-1">프로젝트 생성</span>
              </a>
            </li>
             <li class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-5"></i>
              <span class="hide-menu">프로젝트 목록</span>
            </li>
            
            
            <div>
            	<c:forEach var="item" items="${sessionScope.projectList}">
		            <li class="sidebar-item">
		              <a
		                class="sidebar-link sidebar-link warning-hover-bg"
		                href="#" onclick="projectSession(${item.projectNo})"
		                aria-expanded="false"
		              >
		                <span class="aside-icon p-2 bg-light-warning rounded-3">
		                  <i class="ti ti-login fs-7 text-warning"></i>
		                </span>
		                <div>
		                <span class="hide-menu ms-2 ps-1" >${item.projectName} 프로젝트 </span>
		                </div>
		              </a>
		            </li>
	            </c:forEach>
            </div>
	            
	            
	            
            <li class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-5"></i>
              <span class="hide-menu">협업프로젝트</span>
            </li>
             <li class="sidebar-item">
              <a
                class="sidebar-link sidebar-link indigo-hover-bg"
                href="/colabo/colaboBasicPage"
                aria-expanded="false"
              >
                <span class="aside-icon p-2 bg-light-indigo rounded-3">
                  <i class="ti ti-typography fs-7 text-indigo"></i>
                </span>
                <span class="hide-menu ms-2 ps-1">프로젝트 기본개요</span>
              </a>
            </li>
            <li class="sidebar-item">
              <a
                class="sidebar-link sidebar-link warning-hover-bg"
                href="/colabo/colaboNotice"
                aria-expanded="false"
              >
                <span class="aside-icon p-2 bg-light-warning rounded-3">
                  <i class="ti ti-article fs-7 text-warning"></i>
                </span>
                <span class="hide-menu ms-2 ps-1">팀 공지</span>
              </a>
            </li>
            <li class="sidebar-item">
              <a
                class="sidebar-link sidebar-link danger-hover-bg"
                href="/colabo/colaboSchedule"
                aria-expanded="false"
              >
                <span class="aside-icon p-2 bg-light-danger rounded-3">
                  <i class="ti ti-alert-circle fs-7 text-danger"></i>
                </span>
                <span class="hide-menu ms-2 ps-1">일정</span>
              </a>
            </li>
            <li class="sidebar-item">
              <a
                class="sidebar-link sidebar-link success-hover-bg"
                href="/colabo/colaboDraw"
                aria-expanded="false"
              >
                <span class="aside-icon p-2 bg-light-success rounded-3">
                  <i class="ti ti-cards fs-7 text-success"></i>
                </span>
                <span class="hide-menu ms-2 ps-1">그림판</span>
              </a>
            </li>
            <li class="sidebar-item">
              <a
                class="sidebar-link sidebar-link primary-hover-bg"
                href="/colabo/projectEditForm"
                aria-expanded="false"
              >
                <span class="aside-icon p-2 bg-light-primary rounded-3">
                  <i class="ti ti-file-description fs-7 text-primary"></i>
                </span>
                <span class="hide-menu ms-2 ps-1">프로젝트 수정</span>
              </a>
            </li>
            <li class="sidebar-item">
              <a
                class="sidebar-link sidebar-link primary-hover-bg"
                href="/colabo/colaboSkill"
                aria-expanded="false"
              >
                <span class="aside-icon p-2 bg-light-primary rounded-3">
                  <i class="ti ti-file-description fs-7 text-primary"></i>
                </span>
                <span class="hide-menu ms-2 ps-1">프로젝트 기능분담</span>
              </a>
            </li>
          </ul>
          <div class="pb-3 options text-nowrap">
            <div class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-5"></i>
              <span class="hide-menu">인삿말</span>
            </div>

            <ul class="sidebar-list">
              <li class="sidebar-list-item">
                <i class="ti ti-circle text-primary fs-4"></i>
                <span class="hide-menu ms-2">찾아와</span>
              </li>
              <li class="sidebar-list-item">
                <i class="ti ti-circle text-danger fs-4"></i>
                <span class="hide-menu ms-2">주셔서</span>
              </li>
              <li class="sidebar-list-item">
                <i class="ti ti-circle text-warning fs-4"></i>
                <span class="hide-menu ms-2">감사합니다</span>
              </li>
            </ul>
          </div>
        </nav>
        <!-- End Sidebar navigation -->
      </div>
      <!-- End Sidebar scroll-->
    </aside>
    <!--  Sidebar End -->
    
    <script>
    	function projectSession(no){
    		console.log(no);
    		
    		$.ajax({
    			url: '/colabo/getProjectSession.do',
    			type: 'post',
    			data: {
    				projectNo: no
    			},
    			success: function(data) {
    				window.location.href = "/colabo/colaboBasicPage";
    			},
    			error: function(err) {

    			}
    		});
    		
    	}
    </script>
    
    