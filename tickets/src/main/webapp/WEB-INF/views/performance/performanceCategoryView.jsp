<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- 한글 인코딩 처리  -->
<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="" name="pageTitle"/>
</jsp:include>
	<link type="text/css" href="${pageContext.request.contextPath }/resources/css/styles.css" rel="stylesheet" />
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/waltzerjs.min.js"></script>
	<link type="text/css" href="${pageContext.request.contextPath }/resources/css/set1.css" rel="stylesheet" />

<div id="category-container" class="mx-auto pb-5">

	<div id="category-header" class="my-3 text-center">
		<h2 class="text-primary my-4"> ${ categoryName }</h2>	
			
		<!-- 추천 뮤지컬 반복문 블록 시작 -->
		<div id="carousel" class='outerWrapper'>
			<!-- <div style="width: 220px; height:400px;" class="item text-center d-inline-block m-3"> -->
			<c:forEach items="${ slideList }" var="per" begin="0" end="3" step="1" varStatus="status" >
				<div style="width: 220px; height:400px;" class="item text-center mx-2 d-inline-block">
					<a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=${ per.perNo }" class="none">
						<img src="${pageContext.request.contextPath }/resources/upload/performance/${ per.perImgRenamedFileName }" 
							 alt="포스터" height="300px" width="214px" class="mb-2"/>
					</a>
						<h6>${ per.perTitle }</h6>
						<small>${ dateformat.format(per.perStartDate) } - ${ dateformat.format(per.perEndDate) }</small>
				</div>
			</c:forEach>
			<!-- 추천 뮤지컬 반복문 블록 끝 -->

		</div>
	</div>
	
	<!-- 구분선 -->
	<div class="d-block dropdown-divider"></div>
	<br />
	
	<div id="category-body" class="my-3 text-center d-block" style="height:650px;" >
	<div class="grid">
		<!-- 공연 반복문 블록 시작 (해당 카테고리 공연 수만큼 반복 돌리기) -->
		<c:if test="${ not empty list }">
		<c:forEach items="${ list }" var="per">
		
		<!-- 공연 시작(오픈) 날짜비교 -->
		<jsp:useBean id="now" class="java.util.Date" />
		<fmt:formatDate value="${ now }" pattern="yyyyMMddhhmm" var="nowDate" />             <%-- 오늘날짜 --%>
		<fmt:formatDate value="${ per.perStartDate }" pattern="yyyyMMddHHmm" var="openDate"/>     <%-- 시작날짜 --%>
		
			<%-- <c:choose>
				<c:when test="${ loginMember ne null }">
				</c:when>
				<c:otherwise>
					<a href="${pageContext.request.contextPath }/performance/performanceInfoView2_notLogin.do?perNo=${ per.perNo }">					
								<img
								src="<c:url value='/resources/upload/performance/${ per.perImgRenamedFileName}' />"
								style="width: 200px" />
					</a>				
				
				</c:otherwise>
			
			</c:choose> --%>
		<%-- <c:if test="${openDate < nowDate }">
		</c:if> --%>
<%-- 		<div style="width: 235px"class="text-center d-inline-block p-3 align-top">
			<a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=${ per.perNo }">
				<sec:authorize access="isAuthenticated()">&memberId=<sec:authentication property="principal.userName"/></sec:authorize>">					
						<img
						src="<c:url value='/resources/upload/performance/${ per.perImgRenamedFileName}' />"
						style="width: 200px; height:270px;" class=" mb-2"/>
			</a>
			<h6>${ per.perTitle }</h6>
			<p style="font-size:13px;" class="mb-0">${ dateformat.format(per.perStartDate) } - ${ dateformat.format(per.perEndDate) }<br />${ per.theaterName }</p>
		</div> --%>
				
					<figure class="effect-honey">
						<img src="<c:url value='/resources/upload/performance/${ per.perImgRenamedFileName}' />" 
							 alt="${ per.perTitle }"
							 style="width: 200px; height:270px;" class=" mb-2">
						<figcaption>
							<h5><span><i>${per.perTitle } <br /><small>${ dateformat.format(per.perStartDate) } - ${ dateformat.format(per.perEndDate) }</small></i></span></h5>
							<a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=${ per.perNo }">View more</a>
						</figcaption>			
					</figure>
				
		</c:forEach>
		</c:if>
		
		<c:if test="${ empty list }">
			<div>공연이 존재하지 않습니다.</div>
		</c:if>
		<!-- 뮤지컬 반복문 블록 끝 -->
	
	</div>
	</div>
	
	<div class="align-center d-block">
    	<ul class="pagination justify-content-center">
	    
		            ${ pageBar }     

    	</ul>
	</div>	



</div>
<script>
$('#carousel').waltzer({scroll:1});
</script>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
   
