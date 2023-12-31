<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/top.jsp" />

<script>
	$(function() {
		$('#boardF').on('submit', function() {
			if (!$('#bTitle').val()) {
				alert('제목을 입력하세요.');
				$('#bTitle').focus();
				return false;
			}
			if (!$('#bContents').val()) {
				alert('내용을 입력하세요.');
				$('#bContents').focus();
				return false;
			}
			if (!$('#bPwd').val()) {
				alert('비밀번호를 입력하세요.');
				$('#bPwd').focus();
				return false;
			}
			return true;
		})
	});
</script>
<body>
	<div class="container">
		<h1 class="text-center">게시글 작성</h1>

		<div class="container">
			<div class="row">
				<div class="col-md-10 offset-md-1 text-left" style="">
					<form name="boardF" id="boardF" action="freeboardEnd.do"
						method="POST" enctype="multipart/form-data">
						<!-- prodInsert.do -->
						<div class="table-responsive" style="">
							<table class="table mt-4" style="vertical-align: middle">
								<thead></thead>
								<tbody>
									<tr>
										<td width="20%"><b>제 목</b></td>
										<td width="80%"><input type="text" name="bTitle"
											id="bTitle" autofocus placeholder="Title" style="width: 50%">
									</tr>
									<tr>
										<td width="20%"><b>작성자</b></td>
										<td width="80%"><input type="text" name="bWriter"
											id="bWriter" style="width: 50%">
									</tr>
									<tr>
										<td width="20%"><b>내 용</b></td>
										<td width="80%"><textarea name="bContents" id="bContents"
												rows="10" cols="50" placeholder="Content"
												style="width: 100%"></textarea></td>
									</tr>

									<tr>
										<td width="20%">첨부파일</td>
										<td width="80%"><input type="file" name="bFile"><br>
										</td>
									</tr>
									<tr>
										<td width="20%"><b>비밀번호</b></td>
										<td width="80%"><input type="password" name="bPwd"
											id="bPwd" placeholder="Password" style="width: 50%">
									</tr>

									<tr>
										<td colspan="2" class="text-center">
											<button type="submit" class="btn btn-outline-success">글
												등록</button>
											<button type="reset" class="btn btn-outline-danger">다시쓰기</button>
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
	<jsp:include page="/foot.jsp" />