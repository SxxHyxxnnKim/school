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
					<form name="boardEditF" id="boardEditF"
						action="freeboardEditEnd.do" method="POST"
						enctype="multipart/form-data">
						<!-- prodInsert.do -->
						<div class="table-responsive" style="">
							<table class="table mt-4" style="vertical-align: middle">
								<tbody>
									<tr>
										<td width="20%">글번호</td>
										<td width="80%"><input type="text" value="${bvo.bNum }"
											name="num" id="num" readonly></td>
									</tr>
									<tr>
										<td width="20%"><b>제 목</b></td>
										<td width="80%"><input type="text" name="title"
											value="${bvo.bTitle }" id="title" autofocus
											placeholder="Title" style="width: 50%">
									</tr>
									<tr>
										<td width="20%"><b>작성자</b></td>
										<td width="80%"><input type="text" name="writer"
											id="writer" value="${bvo.bWriter }" style="width: 50%"
											readonly>
									</tr>
									<tr>
										<td width="20%"><b>내 용</b></td>
										<td width="80%"><textarea name="content" id="content"
												rows="5" cols="40" placeholder="Content" style="width: 100%"></textarea></td>
									</tr>
									<tr>
										<td width="20%"><b>비밀번호</b></td>
										<td width="80%"><input type="text" name="pwd"
											value="${bvo.bPwd }" id="pwd" autofocus style="width: 50%"
											readonly>
									</tr>

									<tr>
										<td width="20%">첨부파일</td>
										<td width="80%"><input type="file" name="file" id="file">
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