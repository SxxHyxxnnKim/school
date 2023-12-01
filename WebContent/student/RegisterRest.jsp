<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/top.jsp" />
<script>
	$(function() {

		$('#searchNum').click(function() {
			var search = document.getElementById('num').value;
			//alert(search);
			if (!search) {
				alert('검색할 학번을 입력하세요');
				$('#num').focus();
				return;
			}
			$.ajax({
				type : "POST",
				url : "RestSearchNum.do",
				data : "sNum=" + search,
				dataType : "html",
				cache : false,
				success : function(res) {
					//alert(res);
					$('#resultSearchNum').html(res);
				},
				error : function(err) {
					alert("error: " + err.status);
				}
			});
		});// button function end

		$('#submitRest').click(function() {
			var search = document.getElementById('num').value;

			//alert(search);
			if (!search) {
				alert('검색할 학번을 입력하세요');
				$('#num').focus();
				return;
			}
			var RestReason = document.getElementById('restReason').value;
			if (!RestReason) {
				alert('휴학 사유를 입력하세요');
				$('#restReason').focus();
				return;
			}

			$('#registerRestEndf').submit();

		})

	});// function end
</script>
<div class="container">
	<h1 class="text-center">휴학신청</h1>
	<div class="py-5">
		<div class="container">
			<form action="registerRestEnd.do" id="registerRestEndf">
				<div class="row">
					<div class="col-md-7" style="">
						<div class="table-responsive" style="">
							<table class="table">
								<tr>
									<td style="vertical-align: middle">학번 검색</td>
									<td><div class="input-group">
											<input type="text" class="form-control" id="num" name="num"
												placeholder="Search">
											<div class="input-group-append">
												<button class="btn btn-primary" type="button" id="searchNum">
													<i class="fa fa-search"></i>
												</button>
											</div>
										</div></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-10" style="">
						<div class="table-responsive" style="" id="resultSearchNum"></div>
					</div>
				</div>

				<div class="row">
					<div class="col-md-10" style="">
						<div class="table-responsive" style="">
							<table class="table">
								<tr>
									<td style="vertical-align: middle; width: 20%">신청기간</td>
									<td>학년:</td>
									<td id="gradeSelect" style="vertical-align: middle; width: 20%"><select
										class="grade " id="grade" name="grade" style="width: 50px">
											<option id="fir">1</option>
											<option id="Se">2</option>
											<option id="Thi">3</option>
											<option id="Four">4</option>
									</select></td>
									<td style="vertical-align: middle; width: 20%">학기:</td>
									<td id="semSelect" style="vertical-align: middle"><select
										class="grade" id="semester" name="semester"
										style="width: 50px">
											<option id="Sfir">1</option>
											<option id="SSe">2</option>
									</select></td>
								</tr>
								<tr>
									<td rowspan="3" style="vertical-align: middle">신청<br>
										사유<br> 입력
									</td>
									<td colspan="4" rowspan="3"><textarea id="restReason"
											name="restReason" rows="5" cols="60"></textarea></td>
								</tr>
								<tr>
								</tr>
								<tr>
								</tr>
								<tr>
									<td colspan="4"><button type="button" id="submitRest"
											class="btn btn-success">제출하기</button>
										<button type="reset" class="btn btn-danger" id="ResetRest">다시쓰기</button></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>


<!-- container end -->

<jsp:include page="/foot.jsp" />