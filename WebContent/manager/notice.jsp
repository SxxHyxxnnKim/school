<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/top2.jsp" />

<script>
/* 	$(function(){
		$('#noticeF').on('submit', function(){
			if(! $('#ntitle').val()){
				alert('제목을 입력하세요.');
				$('#ntitle').focus();
				return false;
			}
			if(! $('#ncontents').val()){
				alert('내용을 입력하세요.');
				$('#ncontent').focus();
				return false;
			}
			$('#noticeF').submit();
		})
	}); */
	
	function check(){
		if(! noticeF.ntitle.value ){
			alert('제목을 입력하세요.');
			noticeF.ntitle.focus();
			return;
		}
		if(! noticeF.ncontents.value ){
			alert('내용을 입력하세요.');
			noticeF.ncontents.focus();
			return;
		}
		noticeF.submit();
	}
	
</script>
<body>
<div class="container">
	<h1 class="text-center">공지사항 작성</h1>

	<div class="container">
	<div class="row">
		<div class="col-md-10 offset-md-1 text-left" style="">
			<form name="noticeF" id="noticeF" action="noticeInsert.do" method="POST"
				enctype="multipart/form-data"> <!-- prodInsert.do -->
				<div class="table-responsive" style="">
				<table class="table mt-4" style="vertical-align:middle">
				<thead></thead>
				<tbody>
					<tr>
						<td width="20%"><b>제 목</b></td>
						<td width="80%">
						<input type="text" name="ntitle" id="ntitle" placeholder="Title" style="width:50%">
					</tr>
					<tr>
						<td width="20%"><b>작성자</b></td>
						<td width="80%">
						<input type="text" name="nwriter" id="nwriter" placeholder="Writer" style="width:50%">
					</tr>
					<tr>
						<td width="20%"><b>내 용</b></td>
						<td width="80%"><textarea name="ncontents" id="ncontents"
							rows="10" cols="50" placeholder="Content" style="width:100%"></textarea></td>
					</tr>
					
					<tr>
						<td width="20%">첨부파일</td>
						<td width="80%">
						<input type="file" name="nreference"><br>
					</td>
					</tr>

					<tr>
						<td colspan="2" class="text-center">
							<button type="button" class="btn btn-outline-primary" onclick="check()">글 등록</button>
							<button type="reset" class="btn btn-outline-primary">다시쓰기</button>
						</td>
					</tr>
				</tbody>
				</table>
				</div>
			</form>
		</div>
	</div>
	</div>
</div>

<jsp:include page="/foot2.jsp" />