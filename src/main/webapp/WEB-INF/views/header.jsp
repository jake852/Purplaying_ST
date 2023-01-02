<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<%-- <%@ page session="false" %> --%>    <!-- 이페이지에서는 세션을 새로 시작하지 않음 -->
<c:set var="loginout" value="${sessionScope.user_id == null ? 'Login' : 'Logout' }"/>
<c:set var="loginHidden" value="${sessionScope.user_id == null ? '' : 'display:none' }"/>
<c:set var="loginDisplay" value="${sessionScope.user_id == null ? 'display:none' : '' }"/>
<c:set var="adminWrite" value="${sessionScope.user_role eq '1' ? '' : 'display:none' }"/>

	
  <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
    <symbol id="bootstrap" viewBox="0 0 118 94">
      <path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"></path>
    </symbol>
    <symbol id="home" viewBox="0 0 16 16">
      <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z"/>
    </symbol>
    <symbol id="speedometer2" viewBox="0 0 16 16">
      <path d="M8 4a.5.5 0 0 1 .5.5V6a.5.5 0 0 1-1 0V4.5A.5.5 0 0 1 8 4zM3.732 5.732a.5.5 0 0 1 .707 0l.915.914a.5.5 0 1 1-.708.708l-.914-.915a.5.5 0 0 1 0-.707zM2 10a.5.5 0 0 1 .5-.5h1.586a.5.5 0 0 1 0 1H2.5A.5.5 0 0 1 2 10zm9.5 0a.5.5 0 0 1 .5-.5h1.5a.5.5 0 0 1 0 1H12a.5.5 0 0 1-.5-.5zm.754-4.246a.389.389 0 0 0-.527-.02L7.547 9.31a.91.91 0 1 0 1.302 1.258l3.434-4.297a.389.389 0 0 0-.029-.518z"/>
      <path fill-rule="evenodd" d="M0 10a8 8 0 1 1 15.547 2.661c-.442 1.253-1.845 1.602-2.932 1.25C11.309 13.488 9.475 13 8 13c-1.474 0-3.31.488-4.615.911-1.087.352-2.49.003-2.932-1.25A7.988 7.988 0 0 1 0 10zm8-7a7 7 0 0 0-6.603 9.329c.203.575.923.876 1.68.63C4.397 12.533 6.358 12 8 12s3.604.532 4.923.96c.757.245 1.477-.056 1.68-.631A7 7 0 0 0 8 3z"/>
    </symbol>
    <symbol id="table" viewBox="0 0 16 16">
      <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm15 2h-4v3h4V4zm0 4h-4v3h4V8zm0 4h-4v3h3a1 1 0 0 0 1-1v-2zm-5 3v-3H6v3h4zm-5 0v-3H1v2a1 1 0 0 0 1 1h3zm-4-4h4V8H1v3zm0-4h4V4H1v3zm5-3v3h4V4H6zm4 4H6v3h4V8z"/>
    </symbol>
    <symbol id="people-circle" viewBox="0 0 16 16">
      <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
      <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
    </symbol>
    <symbol id="grid" viewBox="0 0 16 16">
      <path d="M1 2.5A1.5 1.5 0 0 1 2.5 1h3A1.5 1.5 0 0 1 7 2.5v3A1.5 1.5 0 0 1 5.5 7h-3A1.5 1.5 0 0 1 1 5.5v-3zM2.5 2a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 1h3A1.5 1.5 0 0 1 15 2.5v3A1.5 1.5 0 0 1 13.5 7h-3A1.5 1.5 0 0 1 9 5.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zM1 10.5A1.5 1.5 0 0 1 2.5 9h3A1.5 1.5 0 0 1 7 10.5v3A1.5 1.5 0 0 1 5.5 15h-3A1.5 1.5 0 0 1 1 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3zm6.5.5A1.5 1.5 0 0 1 10.5 9h3a1.5 1.5 0 0 1 1.5 1.5v3a1.5 1.5 0 0 1-1.5 1.5h-3A1.5 1.5 0 0 1 9 13.5v-3zm1.5-.5a.5.5 0 0 0-.5.5v3a.5.5 0 0 0 .5.5h3a.5.5 0 0 0 .5-.5v-3a.5.5 0 0 0-.5-.5h-3z"/>
    </symbol>
  </svg>	
  
 <!--헤더 컨테이너-->
 <h1 class="visually-hidden">Header</h1>
  <header class="p-3 border-bottom">
    <div class="container">
      <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/purplaying/" class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
          <svg class="logo" width="140" height="36" aria-label="Bootstrap"></svg>
        </a>

        <div class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
          <div class="dropdown"><a href="#" class="nav-link dropdown-toggle px-2 link-secondary fw-bold mx-2"  role="button" data-bs-toggle="dropdown" aria-expanded="false">
          											장르별</a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/genre/literature">문학</a></li>
              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/genre/poemessay">시/에세이</a></li>
              <li><a class="dropdown-item" href="${pageContext.request.contextPath}/genre/webtoon">웹툰</a></li>
            </ul>
          </div>
          <div><a href="${pageContext.request.contextPath}/popularFunding" class="nav-link px-2 link-dark fw-bold mx-2">인기펀딩</a></div>
          <div><a href="${pageContext.request.contextPath}/newFunding" class="nav-link px-2 link-dark fw-bold mx-2">신규펀딩</a></div>
          <div><a href="${pageContext.request.contextPath}/comingsoonFunding" class="nav-link px-2 link-dark fw-bold mx-2">펀딩예정</a></div>
        </div>

        <!-- 검색창 -->
		<form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" name="searchform" role="search" method="get" onsubmit="return searchCheck()" action="${pageContext.request.contextPath}/searchResult" >
          <input type="text" class="form-control" name="keyword" placeholder="Search..." aria-label="Search">
        </form>

        <div class="dropdown text-end">
	        <sec:authorize access="isAnonymous()">
	          <div> <!-- 로그인 전 보이는 화면 : 로그인, 회원가입 -->
		          <a class="btn btn-outline-primary me-2" href="/purplaying/user/login">Login</a>
		          <button type="button" class="btn btn-primary" onclick="location.href='/purplaying/user/signup'">Sign-up</button><!-- goPost() -->
	          </div>
	        </sec:authorize>
          <sec:authorize access="isAuthenticated()">
	          <div> <!-- 로그인 후 보이는 화면 : 프로필-->
		          <a href="/purplaying/" class="d-block link-dark text-decoration-none dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
		            <img src="${sessionScope.UserDto.user_profile}" alt="${sessionScope.UserDto.user_name }" width="32" height="32" class="rounded-circle">
		          </a>
		          <ul class="dropdown-menu text-small">
		          	<%-- <c:if test="${sessionScope.user_role eq '1'}"> --%>
		          	<sec:authorize access="hasRole('ROLE_ADMIN')">
		          		<li><a class="dropdown-item" href="/purplaying/admin/userlist">Admin 페이지</a></li>
		            </sec:authorize>
		            <li><a class="dropdown-item link-primary" href="/purplaying/project/write"><strong>신규 프로젝트 올리기</strong></a></li>
		            <li><hr class="dropdown-divider"></li>
		            <li><button class="dropdown-item" id="iamport" data-bs-toggle="modal" data-bs-target="#pointpayModal">포인트 충전하기 <i class="fa-solid fa-sack-dollar" style="color:#9E62FA"></i></button></li>
		            <li><a class="dropdown-item" href="/purplaying/mypage">마이페이지</a></li>
		            <li><a class="dropdown-item" href="/purplaying/setting">설정</a></li>
		            <li><a class="dropdown-item" href="/purplaying/notice/list">고객센터</a></li>
		            <li><hr class="dropdown-divider"></li>
		            <li><form id="form_logout" action="<c:url value='/user/logout'/>" method="post"><input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /><a class="dropdown-item" onclick="logoutSubmit()">로그아웃</a></form></li>
		          </ul>
		          <%@ include file ="iamport.jsp" %>
	          </div>
	    </sec:authorize>
        <!--   <script type="text/javascript">
          		function goPost(){
          			let form = document.createElement('form');
          			form.setAttribute('method','post');
          			form.setAttribute('action','/purplaying/user/signup');
          			document.body.appendChild(form);
          			form.submit();
          		}
          </script> -->
<!-- 검색어 == null Alert 띄우기  -->      
<script type="text/javascript">
function searchCheck()
{
     var str_keyword = window.searchform.keyword.value;
     if(!str_keyword || str_keyword == "")
     {
          window.alert("검색어를 입력해주시기 바랍니다.");
          window.searchform.keyword.focus();
          return false;
     }
     window.sendform.submit();
}

function logoutSubmit(){
	$('#form_logout').submit();
}
	</script>

		
          
        </div>
      </div>
    </div>
  </header>