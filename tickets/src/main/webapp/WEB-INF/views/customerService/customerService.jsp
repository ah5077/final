<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- param 한글 encoding 처리 -->
<fmt:requestEncoding value="utf-8"/>
	<!-- header -->
	<jsp:include page="/WEB-INF/views/common/header.jsp">
		<jsp:param value="" name="pageTitle"/>
	</jsp:include>
<style>
th{padding:10px;}
dt{width:63px;}
dd, dt{display:inline-block;font-size:12px;}
dl{margin:0;}
.reser-table{padding-left:100px;margin-top:40px;}
.booking-info{margin-top:20px;margin-bottom:20px;margin-right:40px;}
.performInfo{margin-right:80px;}
ul{padding:0;}
#btn-add{color: #eb6864;border-color: #eb6864;}
#notice-title{text-align: left;}
.nav-item.nav-link{width:250px; font-size:large;}
#howto-img{width: 800px;
    padding: 20px;}
</style>
<script>
function goNoticeForm(){
	location.href = "${pageContext.request.contextPath}/customerService/noticeForm.do";
}

$(function(){

	$("tr[data-notice-no]").click(function(){
		var noticeNo = $(this).attr("data-notice-no");
		location.href = "${ pageContext.request.contextPath }/customerService/noticeDetail.do?noticeNo=" + noticeNo;
	});
	
});
</script>
	<h3 class="text-center my-4">고객센터</h3>
	<div class="form-group text-center">
		<nav>
			<div class="nav nav-tabs justify-content-center" id="nav-tab" role="tablist">
				<a class="nav-item nav-link active" id="notice-list-tab" data-toggle="tab" href="#notice-list" role="tab" aria-controls="notice-list" aria-selected="true">공지사항</a>
				<a class="nav-item nav-link" id="howto-list-tab" data-toggle="tab" href="#howto-list" role="tab" aria-controls="howto-list" aria-selected="false">이용안내</a>
				<a class="nav-item nav-link" id="faq-list-tab" data-toggle="tab" href="#faq-list" role="tab" aria-controls="faq-list" aria-selected="false">FAQ</a>
			</div>
		</nav>

		<div class="tab-content" id="nav-tabContent">
			<!-- 공지사항 -->
			<div class="tab-pane fade show active" id="notice-list" role="tabpanel" aria-labelledby="notice-list-tab">
				<!-- 관리자에게만 보이는 버튼 -->
				<sec:authorize access="hasRole('ADMIN')">
					<div style="float: right; padding: 10px 5px;">
						<input type="button" value="글쓰기" id="btn-add" class="btn" onclick="goNoticeForm();"/>
					</div>
				</sec:authorize>
				<div style="padding-top: 20px; text-align:left">
					<p style="font-weight: bold; font-size: 20px; text-align:center;">공지사항</p>
					<p style="text-align:center">* 총 <span class="text-primary"> ${ totalContents }</span> 개의 게시글이 있습니다. *</p>
					<table id="tbl-board" class="table table-hover" style="width:90%; margin:0 auto">
						<thead>
							<tr>
								<th>No</th>
								<th>분류</th>
								<th>제목</th>
								<th>등록일</th>
							</tr>
						</thead>
						<tbody>  
							<c:forEach items="${ noticeList }" var="n" varStatus="status">
							<tr data-notice-no="${ n.noticeNo }">
								<td>${ n.noticeNo }</td>
								<td>${ n.noticeKind }</td>
								<td>${ n.noticeTitle }</td>
								<td><fmt:formatDate value="${ n.noticeRegDate }" type="date"/></td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="align-center my-4">
					<ul class="pagination justify-content-center">
						${ pageBar }     
					</ul>
				</div>	
			</div>
			
			<!-- 이용안내 -->
			<div class="tab-pane fade" id="howto-list" role="tabpanel" aria-labelledby="howto-list-tab"  style="margin-top: 20px">
				<div class="form-group text-center">
					<ul class="nav nav-pills mb-3 justify-content-center" id="pills-tab" role="tablist">
						<li class="nav-item">
							<a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">예매방법</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">취소/환불</a>
						</li>
					</ul>
					<div class="tab-content" id="pills-tabContent">
						<div class="tab-pane fade show active text-left" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
							<h5>티켓츠의 예매 방법을 안내드립니다.</h5>
							<hr>
							1. 회원가입, 로그인, 본인인증<br>
							<li>예매 전, 티켓츠 회원가입과 로그인을 하셨는 지 확인해 주세요.</li>
							<hr>
							2. 관람하고자 하는 공연 선택<br>
							<li>티켓츠에서 제공하는 여러 메뉴를 통해 관람하고자 하는 공연을 선택해 주세요.<br></li>
							<hr>
							3. 공연 날짜 및 시간 선택<br>
							<li>공연 페이지에서 날짜와 시간을 선택해, 예매 가능한 좌석을 확인 후 예매하기 버튼을 눌러주세요.<br></li>
							<img src="<c:url value='/resources/images/customerService/Reservation.JPG' />" id="howto-img"/>	
							<hr>
							4. 원하는 좌석을 선택<br>
							<li>좌석도에서 원하는 좌석을 선택해 주세요.<br></li>
							<img src="<c:url value='/resources/images/customerService/seat.JPG' />" id="howto-img"/>	
							<hr>
							5. 티켓의 가격과 할인수단을 선택<br>
							<li>티켓의 가격과 할인받을 수단을 선택해 주세요.<br></li>
							<img src="<c:url value='/resources/images/customerService/price.JPG' />" id="howto-img"/>	
							<hr>
							6. 결제수단 선택 및 결제<br>
							<li>결제하실 수단을 선택하고 결제를 진행하세요.<br></li>
							<img src="<c:url value='/resources/images/customerService/pay.JPG' />" id="howto-img"/>
							<hr>
							7. 예매 내역 확인<br>
							<li>'마이페이지 > 예매 확인/취소'에서 예매한 내역을 언제든지 확인하실 수 있습니다.</li>
							<hr>
						</div>
						<div class="tab-pane fade text-left" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
							<h5>티켓츠의 취소/환불 규정을 안내드립니다.</h5>
							<hr>
							1. 취소 마감 기한
							<li>공연관람일 전일까지 가능합니다.</li>
							<li>취소마감시간 이후 또는 관람일 당일 예매 건은 취소/변경/환불이 불가합니다.</li>
							<hr>
							2. 취소 안내
							<li>'마이페이지 > 예매 확인/취소'에서 예매한 티켓 취소가 가능합니다.</li>
							<hr>
						</div>
					</div>
			  	</div>
			</div>
				
			<!-- FAQ -->	
			<div class="tab-pane fade" id="faq-list" role="tabpanel" aria-labelledby="faq-list-tab">
				<div style="padding-top: 20px; text-align:left">
					<p style="font-weight: bold; font-size: 20px">자주하는 질문 BEST</p>
					<table id="tbl-board" class="table table-striped table-hover" style="width:90%; margin: auto">
						<tr>
							<th>No</th>
							<th>분류</th>
							<th>제목</th>
						</tr>
						<c:forEach items="${ faqList }" var="f">
						<tr data-faq-no="${ f.faqNo }">
							<td>${ f.faqNo }</td>
							<td>${ f.faqKind }</td>
							<td>${ f.faqTitle }</td>
						</tr>
						<tr>
							<td>└</td>
							<td colspan="2">${ f.faqContent }</td>
						</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<!-- footer -->
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
