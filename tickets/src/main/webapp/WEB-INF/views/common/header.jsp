<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
		<!-- bootstrap js: jquery load 이후에 작성할것.-->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

		<!-- css 시작  -->
			<!-- journal 테마 -->
        <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" />
		<!-- css 끝 -->
<style>
@font-face {
     font-family: 'S-CoreDream-3Light';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}
            
*{
	font-family: 'S-CoreDream-3Light' !important;
	font-size: 17px;
}

#member-menu > a{
	font-size:14px;
}
</style>
        
<title>티캣츠</title>

<script>

<%-- RedirectAttributes에 등록된 msg값 존재여부 확인 후 출력 --%>
<c:if test="${ not empty msg }">
	alert('${ msg }');
	console.log('${ msg }');
</c:if>

</script>
</head>
<body>

<div id="container" class="mx-auto" style="width: 75%;">
	<header>
	<div class="" id="header-container" >
		
		<div class="text-right" id="member-menu">
			<c:if test="${ empty loginMember }">
			<a class="text-secondary" href="${pageContext.request.contextPath }/member/memberLoginForm.do">로그인</a><span class="text-secondary">&nbsp;|</span>
			</c:if>
			<c:if test="${ not empty loginMember }">
			<a class="text-secondary" href="${pageContext.request.contextPath }/member/memberLogout.do">로그아웃</a><span class="text-secondary">&nbsp;|</span>
			</c:if>
			<c:if test="${ empty loginMember }">
			<a class="text-secondary" href="${pageContext.request.contextPath }/member/memberEnrollForm.do">회원가입</a><span class="text-secondary">&nbsp;|</span>
			</c:if>
			<a class="text-secondary" href="#">고객센터 </a>
			<c:if test="${ not empty loginMember }">
			<div><span class="text-danger">${ loginMember.name }</span>님, 어서오세요!</div>
			</c:if>
		</div>
		<div class="d-block dropdown-divider"></div>
		<div class="m-3 text-center">
			<a href="${pageContext.request.contextPath}"><img src="${pageContext.request.contextPath }/resources/images/도안6-4.png" style="height:130px;"/></a>
			<form class="mx-2 d-inline-block form-inline my-3 text-center align-bottom" style="width:50%;"
				  action="${pageContext.request.contextPath}/search">
			    <input class="form-control mr-sm-2" style="width:75%;" type="text" id="keyword" name="keyword" placeholder="Search">
			    <button class="btn btn-primary" type="submit">						  		 
			    	<svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-search" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
					<path fill-rule="evenodd" d="M10.442 10.442a1 1 0 0 1 1.415 0l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1 1 0 0 1 0-1.415z"/>
					<path fill-rule="evenodd" d="M6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11zM13 6.5a6.5 6.5 0 1 1-13 0 6.5 6.5 0 0 1 13 0z"/>
					</svg> 
					검색
				</button>
		    </form>
		</div>
	</div>
	
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary mx-auto my-3 rounded">
		<div class="mx-5">
		  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
		    	<span class="navbar-toggler-icon" ></span>
		  	</button>
		
		  	<div class="collapse navbar-collapse" id="navbarColor01">
		    	<ul class="navbar-nav mr-auto">
		     		<li class="nav-item active">
		        		<a class="nav-link" href="${pageContext.request.contextPath}"> Home &nbsp;&nbsp;<span class="sr-only">(current)</span></a>
		      		</li>
		      		<li class="nav-item">
		        		<a class="nav-link" href="${pageContext.request.contextPath }/list?category=뮤지컬">뮤지컬 &nbsp;</a>
		      		</li>
		      		<li class="nav-item">
		        		<a class="nav-link" href="${pageContext.request.contextPath }/list?category=연극">연극 &nbsp;</a>
		      		</li>
		      		<li class="nav-item">
		        		<a class="nav-link" href="${pageContext.request.contextPath }/list?category=콘서트">콘서트 &nbsp;</a>
		      		</li>
		      		<li class="nav-item">
		        		<a class="nav-link" href="${pageContext.request.contextPath }/list?category=클래식">클래식 &nbsp;</a>
		      		</li>
		      		<li class="nav-item">
		        		<a class="nav-link" href="${pageContext.request.contextPath }/list?category=전시">전시 &nbsp;</a>
		      		</li>
		      		<c:if test="${ not empty loginMember }">
			      	<li class="nav-item dropdown" style="right: 0px !important">
			        	<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">My Page </a>
			        	<div class="dropdown-menu">
			          		<a class="dropdown-item" href="#">내 정보</a>
			          		<a class="dropdown-item" href="#">예매 확인/취소</a>
			          		<a class="dropdown-item" href="#">쿠폰</a>
			          		<c:if test="${ loginMember.memberRole eq 'A' }">
			          		<a class="dropdown-item" href="${pageContext.request.contextPath}/member/memberList.do">회원목록</a>
			          		</c:if>
			          		<c:if test="${ loginMember.memberRole ne 'A' }">
			          		<div class="dropdown-divider"></div>
			          			<a class="dropdown-item" href="#">회원 탈퇴</a>
			          		</c:if>
				        </div>
			      	</li>
			      	</c:if>
		    	</ul>


		  	</div>
	  	</div>
	</nav>


	</header>


	<section id="content">