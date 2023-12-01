<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
response.setHeader("Pragma","No-cache"); //HTTP 1.0 
response.setDateHeader ("Expires", 0); 
	response.setHeader("Cache-Control","no-cache");
%>    
<jsp:include page="/top2.jsp" />

<style type="text/css">
	
</style>

<script type="text/javascript">
	$(function(){
		getAllNotice();
	})
	
	var getAllNotice = function(){
			$.ajax({
				type: 'GET',
				url: 'noticeAll.do',
				dataType: 'html',
				cache: false,
				success: function(res){
					//alert(res);
					$('#notice_data').html(res);
				},
				error: function(err){
					alert('error: '+err.status);
				}
			})
		}
	
</script>

<!--onload시 공지사항 목록 가져오기  -->

<div class="container">
	<h1 class="text-center">공지사항 목록</h1>
	<div class="row">
		<div class="col-md-6"></div>
		<div class="col-md-6 d-flex justify-content-center align-items-right">
			<form class="form-inline" name="findF" id="findF" role="form"
				action="" method="POST">
				<div class="input-group">
					<input type="text" name="notice" id="notice" 
						class="form-control" placeholder="검색어를 입력하세요">
					<div class="input-group-append">
						<button class="btn btn-primary" type="button" id="allNotice">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
			</form>
		</div>
	</div> <br> <!-- 제목 및 검색 부분 -->

	<div class="container">
		<div class="row">
		<div class="col-md-12">
			<div class="table-responsive" style="">
			<table class="table table-hover" id="bbs">
				<thead>
					<tr>
						<th width="15%">글번호</th>
						<th width="25%">제  목</th>
						<th width="15%">작성자</th>
						<th width="15%">날  짜</th>
						<th width="15%">조회수</th>
						<th width="15%">수정|삭제</th>
					</tr>
				</thead>
				<tbody id="notice_data">
				
				</tbody>
		
<%-- 				<c:forEach var="i" begin="1" end="5">  
				<tbody>
					<tr>
						<td>a</td>${board.idx}
						<td>
						<a href="#">a</a>view.do?idx=${board.idx} ${board.subject}
							
							<c:if test="${board.filesize>0}">
								<img src="../images/attach.png" width="16px">
							</c:if>
							
						</td>
						<td>a</td> ${board.name}
						<td>a
							<fmt:formatDate value="${board.wdate}" pattern="yyyy-MM-dd" />
							<!-- 날짜 포맷 -->
						</td>
						<td>a</td> ${board.readnum}
						<td><a>수정</a>|<a>삭제</a></td>
					</tr>
				</tbody>
				</c:forEach> --%>
			</table>
			</div>
			
			<div class="row">
		    	<div class="col-md-4" style=""></div>
		        <div class="col-md-4 text-light" style="">
			        <ul class="pagination text-light">
				        <li class="page-item"> <a class="page-link" href="#">Prev</a> </li>
				        <li class="page-item active"> <a class="page-link" href="#">1</a> </li>
				        <li class="page-item"> <a class="page-link" href="#">2</a> </li>
				        <li class="page-item"> <a class="page-link" href="#">3</a> </li>
				        <li class="page-item"> <a class="page-link" href="#">4</a> </li>
				        <li class="page-item"> <a class="page-link" href="#">Next</a> </li>
			        </ul>
		        </div>
		        <div class="col-md-4" style=""></div>
		    </div>
		</div>
		</div>
		
	</div> <!-- table container end -->

	</div> <!-- #localBook end -->

<jsp:include page="/foot2.jsp" />
