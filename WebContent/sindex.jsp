<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/top.jsp" />
<script>
	/* 	$(window).load(function() {
	 var m = '${param.m}';

	 $('#topheader .navbar-nav a').click(
	 function(e) {
	 $('#topheader .navbar-nav').find('li.active').removeClass(
	 'active');
	 $(this).parent('li').addClass('active');
	 $('.' + m).parent('li').addClass('active')
	 e.preventDefault();
	 return false;
	 });
	 }) */
</script>
<div class="text-left">
	<h1 class="text-center">${msg}</h1>
	<div class="py-5" style="">
		<div class="container">
			<div class="row">
				<div class="col-md-7" style="">
					<div class="row">
						<div class="table-responsive" style="">
							<ul style="list-style-type: square">
								<h4>
									<li>공지사항</li>
								</h4>
							</ul>
							<table class="table">
								<thead class="text-center">
									<tr>
										<th style="width: 20%">번호</th>
										<th style="width: 50%">제목</th>
										<th style="width: 30%">업로드 날짜</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="text-center">1</td>
										<td>Mark</td>
										<td class="text-center">Otto</td>
									</tr>
								</tbody>
							</table>

						</div>

					</div>
					<div class="row">
						<ul style="list-style-type: square">
							<h4>
								<li>자유게시판</li>
							</h4>
						</ul>
						<table class="table" style="text-align: center">
							<thead class="text-center">
								<tr>
									<th style="width: 20%">번호</th>
									<th style="width: 50%">제목</th>
									<th style="width: 30%">업로드 날짜</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${board eq null or empty board}">
									<tr>
										<td colspan="3">최근 3개의 자유 게시글이 없습니다.</td>
									</tr>
								</c:if>
								<c:if test="${board ne null and not empty board }">
									<c:forEach var="b" items="${board }">
										<tr>
											<td>${b.bNum }</td>
											<td>${b.bTitle }</td>
											<td>${b.bDate }</td>
										</tr>
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
				</div>
				<div class="col-md-5">
					<ul style="list-style-type: square">
						<h4>
							<li>학사일정</li>
						</h4>
					</ul>
					<div id="calendar" class=""></div>
				</div>
			</div>
		</div>
	</div>
</div>
<jsp:include page="/foot.jsp" />