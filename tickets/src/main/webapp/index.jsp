<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%-- 한글 인코딩 처리 --%>
<fmt:requestEncoding value="utf-8"/>

<jsp:include page="/WEB-INF/views/common/header.jsp"/>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/set2.css" />
<script src="${pageContext.request.contextPath }/resources/js/jquery-isystkSlider.js"></script>

<style>
html,body{ height:100%; display: grid; grid-template-rows: auto 1fr auto;}
#container{ display: flex; flex-direction: column; min-height:100%; position:relative;} 
#main-container{ flex: 1; position:relative;} 
footer{ margin-top: 2000px; }

#best0 {
  animation-name: best;
  animation-duration: 2s;
  animation-fill-mode: forwards;
}
#best1 {
  animation-name: best;
  animation-duration: 2s;
  animation-delay: 1s;
  animation-fill-mode: forwards;
}
#best2 {
  animation-name: best;
  animation-duration: 2s;
  animation-delay: 2s;
  animation-fill-mode: forwards;
}

@keyframes best {
  from {color: #f8f9fa;}
  to {color: #eb6864;}
}

</style>

<!-- 오늘하루 그만보기 팝업창 -->
<script type="text/javascript">
function setCookie( name, value, expiredays ){
	var todayDate = new Date();
	todayDate.setDate( todayDate.getDate() + expiredays );
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}
function getCookie( name ){
	var nameOfCookie = name + "=";
	var x = 0;
	while ( x <= document.cookie.length ){
		var y = (x+nameOfCookie.length);
		if ( document.cookie.substring( x, y ) == nameOfCookie ) {
			if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
				endOfCookie = document.cookie.length;
			return unescape( document.cookie.substring( y, endOfCookie ) );
		}
		x = document.cookie.indexOf( " ", x ) + 1;
		if ( x == 0 )
			break;
	}
	return "";
}
if ( getCookie( "popup" ) != "done" ){
	noticeWindow =
		window.open('${pageContext.request.contextPath}/popup.do','safe_notice','width=450, height=470, left=200, top=130');
	noticeWindow.opener = self;
}
</script>


<div id="index-container site-content" >
	<div id="main-container">
		
		<!-- 슬라이드 시작 -->
		<div id="main-header" class="my-4 text-center" >
		
			<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
				    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
				</ol>
			  	<div class="carousel-inner">
				    <div class="carousel-item active" data-interval="2000">
				    
				    <a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=1">
				    	<img src="${pageContext.request.contextPath }/resources/images/banner/메인공연배너3.jpg" class="d-block w-100" alt="...">
<!-- 						      <div class="carousel-caption">
							      <h5>First slide label</h5>
							      <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
						      </div> -->
				    </a>
				    </div>
				    <div class="carousel-item" data-interval="2000">
					    <a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=182">
				    		<img src="${pageContext.request.contextPath }/resources/images/banner/연극이퀄.jpg" class="d-block w-100" alt="...">
					    </a>
				    </div>
				    <div class="carousel-item" data-interval="2000">
					    <a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=3">
					    	<img src="${pageContext.request.contextPath }/resources/images/banner/뮤지컬호프.jpg" class="d-block w-100" alt="...">
					    </a>
				    </div>
				    <div class="carousel-item" data-interval="2000">
				    	<a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=181">
					    	<img src="${pageContext.request.contextPath }/resources/images/banner/뮤지컬베르테르.jpg" class="d-block w-100" alt="...">
				    	</a>
				    </div>
				    <div class="carousel-item" data-interval="2000">
				    	<a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=183">
					    	<img src="${pageContext.request.contextPath }/resources/images/banner/뮤지컬블랙메리포핀스.jpg" class="d-block w-100" alt="...">
				    	</a>
				    </div>
			  	</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
					    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
					    <span class="sr-only">Previous</span>
					</a>
			  	<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			    	<span class="carousel-control-next-icon" aria-hidden="true"></span>
			    	<span class="sr-only">Next</span>
			  	</a>
			</div>
			
		</div>
		<!-- 슬라이드 끝 -->
		
		<!-- 탭 메뉴 시작-->
		<div class="d-block mx-auto mt-5">
			<ul class="nav nav-tabs justify-content-center">
				<li class="nav-item">
					<a class="nav-link" data-toggle="tab" href="#new"><h3 class="m-10 px-5">New!공연</h3></a>
				</li>
				<li class="nav-item">
					<a class="nav-link active" data-toggle="tab" href="#con"><h3 class="m-10 px-5">콘서트&페스티벌</h3></a>
				</li>
				<li class="nav-item">
					<a class="nav-link link" data-toggle="tab" href="#mu"><h3 class="m-10 px-5">뮤지컬&연극</h3></a>
				</li>
			</ul>
		</div>
			<!-- 탭 메뉴 내용 -->
		<div>
			<div id="myTabContent" class="tab-content d-block float-center mt-5 mb-5 ml-5">
			
				<div class="tab-pane fade grid mx-auto" id="new">
					<c:forEach items="${ newList }" var="per" begin="0" end="2" step="1" varStatus="status" >
					<jsp:useBean id="now" class="java.util.Date" />
					<fmt:formatDate value="${ now }" pattern="yyyyMMdd" var="nowDate" />               <%-- 오늘날짜 --%>
					<fmt:formatDate value="${ per.perStartDate }" pattern="yyyyMMdd" var="startDate"/>     <%-- 시작날짜 --%>
				       		        
					    <figure class="effect-apollo mb-5 mt-0 pt-0">
							<img src="<c:url value='/resources/upload/performance/${ per.perImgRenamedFileName}' />" alt="${per.perTitle }"
								 style="width:417px;">
							<figcaption>
								<h5>${per.perTitle }</h5>
								<p><small>${ dateformat.format(per.perStartDate) } <br /> -${ dateformat.format(per.perEndDate) }</small></p>
								<a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=${ per.perNo}">View more</a>
							</figcaption>			
						</figure>


					</c:forEach>

				</div>
				<div class="tab-pane fade active show grid mx-auto" id="con">
					<c:forEach items="${ concertList }" var="per" begin="0" end= "2" step="1" varStatus="status" >
<%-- 					<div class="d-inline-block px-3" style="vertical-align: top;" >
						<a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=${ per.perNo}">
							<img src="<c:url value='/resources/upload/performance/${ per.perImgRenamedFileName}' />" alt="포스터" style="width:150px;height:200px;"/>
						</a>
						<figcaption class="figure-caption text-center" style="width:150px;"><h5 class="card-title mt-2">${ per.perTitle }</h5></figcaption>  
					</div> --%>
						<figure class="effect-apollo mb-5 mt-0 pt-0">
							<img src="<c:url value='/resources/upload/performance/${ per.perImgRenamedFileName}' />" alt="${per.perTitle }"
								 style="width:417px;">
							<figcaption>
								<h5>${per.perTitle }</h5>
								<p><small>${ dateformat.format(per.perStartDate) } <br /> -${ dateformat.format(per.perEndDate) }</small></p>
								<a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=${ per.perNo}">View more</a>
							</figcaption>			
						</figure>
					
					</c:forEach>

				</div>
				<div class="tab-pane fade grid" id="mu">
				
					<c:forEach items="${ musicalList }" var="per" begin="0" end= "1" step="1" varStatus="status" >
<%-- 					<div class="d-inline-block px-3" style="vertical-align: top;">
						<a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=${ per.perNo}">
							<img src="<c:url value='/resources/upload/performance/${ per.perImgRenamedFileName}' />" alt="포스터" style="width:150px;height:200px;"/>
						</a>
						<figcaption class="figure-caption text-center" style="width:150px;"><h5 class="card-title mt-2">${ per.perTitle }</h5></figcaption>  
					</div>	 --%>		
						<figure class="effect-apollo mb-5 mt-0 pt-0">
							<img src="<c:url value='/resources/upload/performance/${ per.perImgRenamedFileName}' />" alt="${per.perTitle }"
								 style="width:417px;">
							<figcaption>
								<h5>${per.perTitle }</h5>
								<p><small>${ dateformat.format(per.perStartDate) } <br /> -${ dateformat.format(per.perEndDate) }</small></p>
								<a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=${ per.perNo}">View more</a>
							</figcaption>			
						</figure>		
					</c:forEach>
					<c:forEach items="${ theatreList }" var="per" begin="0" end= "0" step="1" varStatus="status" >
						<figure class="effect-apollo mb-5 mt-0 pt-0">
							<img src="<c:url value='/resources/upload/performance/${ per.perImgRenamedFileName}' />" alt="${per.perTitle }"
								 style="width:417px;">
							<figcaption>
								<h5>${per.perTitle }</h5>
								<p><small>${ dateformat.format(per.perStartDate) } <br /> -${ dateformat.format(per.perEndDate) }</small></p>
								<a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=${ per.perNo}">View more</a>
							</figcaption>			
						</figure>				
					</c:forEach>

				</div>
			</div>
		</div>
		<!-- 탭 메뉴 끝 -->
		
		<%-- <img src="${pageContext.request.contextPath }/resources/images/etc/배너.png" style="height:130px;width:900px"/> --%>
		
		<!-- 구분선 -->
		<br /><br /><br /><br /><br /><br />
		<div class="d-block dropdown-divider"></div>
			
		<div id="third-main" class="d-block">
			<div class="open-ticket mx-auto mt-5 float-left" style="width:35%; position:relative;">
			<h4 class="card-title">티켓오픈소식</h4>
				<div class="more" style="text-align:right;">
				<a href="${pageContext.request.contextPath}/performance/openNewsPerList.do">더보기 ❭</a>
				</div>
				<ul class="list-group list-group-flush">
					<c:forEach items="${ openList }" var="per" begin="0" end= "4" step="1" varStatus="status" >
					<li class="list-group-item" style="text-align:left;">
						<a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=${ per.perNo}" class="inner inner_ico text-decoration-none">
							<c:choose>
							<c:when test="${ per.aloneSale eq 'Y' }">
							<span class="badge badge-primary" style="float:left;"><span class="ico1">단독판매</span></span> <br />
							</c:when>
							<c:otherwise>
							</c:otherwise>
							</c:choose>
							<span>
								${ per.perTitle} 티켓 오픈 안내
								<br />
								<small class="text-muted">[오픈] 20<fmt:formatDate value="${ per.reservationStartDate }" pattern="yy.MM.dd (E) HH:mm"/></small>
							</span>
						</a>
					</li>
					</c:forEach>
					
					<!-- <li class="list-group-item" style="text-align:left;">
						<a href="#" class="inner inner_ico text-decoration-none">
							<span class="badge badge-primary mx-auto" style="float:left;"><span class="ico1">단독판매</span></span>
							<span>
								서울숲재즈페스티벌 2020 공식티켓 오픈 안내
								<br />
								<small class="text-muted">[오픈]20.09.11(금) 14:00</small>
							</span>
						</a>
					</li>  -->
				</ul>
			</div>
			<div class="time-ticket mt-5" style="width:30%;float:left;position:relative;">
				<h4 class="card-title">오늘 티켓</h4>
				<div class="more" style="text-align:right;">
					<a href="${pageContext.request.contextPath}/performance/todayPerList.do">더보기 ❭</a>
				</div>
				<h5 class="mt-3">
				<small class="text-muted">오늘 바로 저렴하게 이용할 수 있는</small><br />
				<a href="${pageContext.request.contextPath}/performance/todayPerList.do" role="button">마감임박 할인 오늘티켓</a>
				</h5>
				<img src="${pageContext.request.contextPath }/resources/images/etc/ticket.PNG" style="width:200px;"/>
				<p class="lead">
					<a class="btn btn-primary btn-lg" href="${pageContext.request.contextPath}/performance/todayPerList.do" role="button">목록보기</a>
				</p>
			</div>
			<div class="rank-ticket mx-auto mt-5" style="width:35%;float:right;position:relative;">
				<h4 class="card-title">랭킹</h4>
					<!-- <div class="more" style="text-align:right;">
						<a href="#">더보기 ❭</a>
					</div> -->
				<div class="d-block mx-auto mt-3">
					<ul class="nav nav-tabs justify-content-center">
						<li class="nav-item">
							<a class="nav-link" data-toggle="tab" href="#concert" id="concert"><span>콘서트</span></a>
						</li>
						<li class="nav-item">
							<a class="nav-link active" data-toggle="tab" href="#music" id="musical"><span>뮤지컬/연극</span></a>
						</li>
						<li class="nav-item">
							<a class="nav-link link" data-toggle="tab" href="#classic" id="classic"><span>클래식</span></a>
						</li>
					</ul>
				</div>
				<div id="rankContent" class="tab-content d-block mx-auto mt-5 text-left">
					<!-- <ol class="tab-pane fade" id="lankList"> -->
						<!-- 반복문 블록 -->
<%-- 						<li class="px-3 mb-3">
							<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/2.PNG" style="width:60px;height:90px;"/></a>
							<a href="#">
								<ul style="text-align:center;display:inline-block;list-style-type:none;" >
									<li>댕댕이 페스티벌</li>
									<li>20.09.11(금)</li>
								</ul>
							</a>
						</li>
						<li class="px-3 mb-3">
							<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/1.PNG" style="width:60px;height:90px;"/></a>
							<a href="#">
								<ul style="text-align:center;display:inline-block;list-style-type:none;">
									<li>옹성우 팬미팅</li>
									<li>20.09.11(금)</li>
								</ul>
							</a>
						</li>
						<li class="px-3">
							<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/3.PNG" style="width:60px;height:90px;"/></a>
							<a href="#">
								<ul style="text-align:center;display:inline-block;list-style-type:none;">
									<li>뮤지컬 제이미</li>
									<li>20.09.11(금)</li>
								</ul>
							</a>
						</li> --%>
					<!-- </ol> -->
					<ol class="tab-pane fade active show" id="">
  					<c:forEach items="${ muRank }" var="per" begin="0" end="2" step="1" varStatus="status">
						<li class="px-3 mb-3">
							<a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=${ per.perNo}">
								<img src="${pageContext.request.contextPath }/resources/upload/performance/${ per.perImgRenamedFileName }" style="width:75px;height:100px;"/>
							</a>
							<a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=${ per.perNo}">
								<ul style="display:inline-block;list-style-type:none; width:250px; vertical-align:middle;"class="text-center" >
									<li><span id="title"><strong>${ per.perTitle }</strong></span></li>
									<li><small>${ dateformat.format(per.perStartDate) }-${ dateformat.format(per.perEndDate) }</small></li>
									<%-- <li>${ dateformat.format(per.perStartDate) }</li> --%>
								</ul>
							</a>
						</li>
					</c:forEach>
<%--   						<li class="px-3 mb-3">
							<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/2.PNG" style="width:60px;height:90px;"/></a>
							<a href="#">
								<ul style="text-align:center;display:inline-block;list-style-type:none;">
									<li>댕댕이 페스티벌</li>
									<li>20.09.11(금)</li>
								</ul>
							</a>
						</li>
						<li class="px-3">
							<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/캣츠.jpg" style="width:60px;height:90px;"/></a>
							<a href="#">
								<ul style="text-align:center;display:inline-block;list-style-type:none;">
									<li>캣츠</li>
									<li>20.09.11(금)</li>
								</ul>
							</a>
						</li> --%>
					</ol>
					<ol class="tab-pane fade" id="">
<%--  						<li class="px-3 mb-3">
							<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/2.PNG" style="width:60px;height:90px;display:inline"/></a>
							<a href="#">
								<ul style="text-align:center;display:inline-block;list-style-type:none;">
									<li>댕댕이 페스티벌</li>
									<li>20.09.11(금)</li>
								</ul>
							</a>
						</li> 
						<li class="px-3 mb-3">
							<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/3.PNG" style="width:60px;height:90px;"/></a>
							<a href="#">
								<ul style="text-align:center;display:inline-block;list-style-type:none;">
									<li>뮤지컬 제이미</li>
									<li>20.09.11(금)</li>
								</ul>
							</a>
						</li>
						<li class="px-3">
							<a href="#"><img src="${pageContext.request.contextPath }/resources/images/poster/4.PNG" style="width:60px;height:90px;"/></a>
							<a href="#">
								<ul style="text-align:center;display:inline-block;list-style-type:none;">
									<li>ㅋㄷㅋㄷ 런</li>
									<li>20.09.11(금)</li>
								</ul>
							</a>
						</li>  --%>
					</ol>
				</div>
			</div>	
		</div>
			
			<div class="d-block mx-auto mt-5 mb-5">
				<div class="grid" id="new">
				<br />
			<div class="d-block dropdown-divider"></div>
			<h1 class="my-4">────〈&nbsp;티켓츠 PICK!&nbsp;〉────</h1>
					<c:forEach items="${ pickList }" var="per" begin="0" end="8" step="1" varStatus="status">
					<figure class="effect-ming">
						<img src="<c:url value='/resources/upload/performance/${ per.perImgRenamedFileName}' />" 
							 alt="${ per.perTitle }"
							 style="width:295px;">
						<figcaption>
							<h5>${ per.perTitle }</h5>
							<p><small>${ dateformat.format(per.perStartDate) } <br /> -${ dateformat.format(per.perEndDate) }</small></p>
							<a href="${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo=${ per.perNo}">View more</a>
						</figcaption>			
					</figure>

					</c:forEach>

				
		</div>
	</div>
</div>


<jsp:include page="/WEB-INF/views/common/footer.jsp"/>

<!-- <script src='//production-assets.codepen.io/assets/common/stopExecutionOnTimeout-b2a7b3fe212eaa732349046d8416e00a9dec26eb7fd347590fbced3ab38af52e.js'></script><script src='https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.7/vue.js'></script><script src='https://rawgit.com/Wlada/vue-carousel-3d/master/dist/vue-carousel-3d.min.js'></script>
<script >new Vue({
  el: '#carousel3d',
  data: {
    slides: 7
  },
  components: {
    'carousel-3d': Carousel3d.Carousel3d,
    'slide': Carousel3d.Slide
  }
})
</script> -->

<script>

$('.carousel').carousel({
	  interval: 2000
	});

</script>

<script>

$("#concert").click(function(){
	var code = { code1 : "C3" };
	selectPerRank(code)
});

$("#musical").click(function(){
	var code = { code1 : "C1", code2 : "C2" };
	selectPerRank(code)
	
});

$("#classic").click(function(){
	var code = { code1 : "C4" };
	selectPerRank(code)
});

function selectPerRank(code){
	console.log(code);
	
	var jsonStr = JSON.stringify(code);
	console.log("jsonStr="+jsonStr);
	
 	$(document).ajaxSend(function(e, xhr, options){
		xhr.setRequestHeader( "${_csrf.headerName}", "${_csrf.token}" );
	}); 

 	$.ajax({
		url: "${ pageContext.request.contextPath }/",
		data: jsonStr,
		method : "POST",
		contentType : "application/json; charset=utf-8",
		success : function(data){
			displayRankList(data);
		},
		error : function(xhr, status, err){
			console.log("처리실패", xhr, status, err);
		}
	});	 
}
function displayRankList(data){
	console.log(data);
	var $container = $("#rankContent");

	var html = "<ol class='tab-pane fade active show'>";
	var startDate;
	var endDate;
	
 	if(data.list.length > 0){
		for(var i in data.list){
			if(i<3){
			var per = data.list[i];
			
			console.log(per);
			startDate = new Date(per.perStartDate);
			endDate = new Date(per.perEndDate);

			var fmtStartDate = getFormatDate(startDate);
			var fmtEndDate = getFormatDate(endDate);

			html += "<li class='px-3 mb-3' id='best"+i+"'>";
			html += "<a href='${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo="+per.perNo+"' id='best"+i+"'>";
			html += "<img src='${pageContext.request.contextPath }/resources/upload/performance/"+per.perImgRenamedFileName+"' style='width:75px;height:100px;' id='best"+i+"'/>";
	        html += "</a>";
	        html += "<a href='${pageContext.request.contextPath }/performance/performanceInfoView2.do?perNo="+per.perNo+"' id='best"+i+"'>";
			html += "<ul style='display:inline-block;list-style-type:none; width:250px; vertical-align:middle' class='text-center'>";
			html += "<li><strong>"+per.perTitle+"</strong></li>";
			//html += "<li><small>"+per.perStartDate+"</small></li>";
			//html += "<li><small>"+fmtStartDate+"</small></li>";
			html += "<li><small>"+fmtStartDate+"-"+fmtEndDate+"</small></li>";
			html += "</ul></a></li>";
			//<fmt:formatDate pattern='yyyy-MM-dd HH:mm'  value='${boardVO.ntc_dt}' />

				}
		}
	} 

	html += "</ol>";
 	$container.html(html);
}

function getFormatDate(dateParam){
	var week = new Array('일', '월', '화', '수', '목', '금', '토');

	var year = dateParam.getFullYear();                                 //yyyy
	var month = (1 + dateParam.getMonth());                     //M
	month = month >= 10 ? month : '0' + month;     // month 두자리로 저장
	var date = dateParam.getDate();                                        //d
	date = date >= 10 ? date : '0' + date;                            //day 두자리로 저장
	var day = dateParam.getDay();
	var today = week[day];
	//console.log(year + '.' + month + '.' + date + "(" + today + ")");
	return  year + '.' + month + '.' + date + " (" + today + ")" ;
}



</script>
	
	