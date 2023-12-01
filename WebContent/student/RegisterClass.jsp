<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/top.jsp" />
<style>
.table {
	margin-left: auto;
	margin-right: auto;
}

#gradeSelect {
	padding-top: 20px;
}

#semSelect {
	padding-top: 20px;
}
</style>
<script>
	$(function() {

		$('#searchNum').click(function() {
			var search = document.getElementById('snum').value;
			//alert(search);
			if (!search) {
				alert('검색할 학번을 입력하세요');
				$('snum').focus();
				return;
			}
			$.ajax({
				type : "POST",
				url : "searchStudentNum.do",
				data : "studentNum=" + search,
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

		$('#searchSub').click(function() {
			var searchSub = document.getElementById('subject').value;
			var searchType = document.getElementById('searchType').value;

			//alert(searchType);
			
			if (searchType.value=="type") {
				alert('검색 유형을 선택하세요');
				return;
			}

			if (!searchSub) {
				alert('검색할 과목을 입력하세요');
				$('#subject').focus();
				return;
			}
			
			$.ajax({
				type : "POST",
				url : "searchSubject.do",
				data : "subName=" + searchSub + "&subType="+searchType,
				dataType : "html",
				cache : false,
				success : function(res) {
					//alert(res);
					$('#classList').html(res);
				},
				error : function(err) {
					alert("error: " + err.status);
				}
			});
		})
	});// function end
</script>
<div class="container">
	<h1 class="text-center pt-3">수강신청 페이지입니다.</h1>
	<div class="py-3" style="">
		<div class="container">
			<form name="registerSubInfoF">
				<div class="row">
					<div class="col-md-10" style="">
						<div class="table-responsive" style="">
							<table class="table" style="table-align: center">
								<tr>
									<td style="vertical-align: middle; width: 10%">학년</td>
									<td id="gradeSelect" style="width: 10%"><select
										class="grade " id="test" style="width: 50px">
											<option id="fir">1</option>
											<option id="Se">2</option>
											<option id="Thi">3</option>
											<option id="Four">4</option>
									</select></td>
									<td style="vertical-align: middle">학기</td>
									<td id="semSelect"><select class="grade" id="test"
										style="width: 50px">
											<option id="Sfir">1</option>
											<option id="SSe">2</option>
									</select></td>
									<td style="vertical-align: middle">학번 검색</td>
									<td><div class="input-group">
											<input type="text" class="form-control" id="snum"
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

						<div class="row">
							<div class="col-md-10" style="">
								<div class="table-responsive" id="resultSearchNum" style=""></div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-10" style="">
						<table class="table" style="table-align: center">
							<tr>
								<td colspan="2" style="vertical-align: middle">검색 유형</td>
								<td><select class="from-control col-md-12"
									style="height: 40px" name="searchType" id="searchType">
										<option value="type">검색유형</option>
										<option value="subject">과목</option>
										<option value="professor">교수</option>
								</select></td>
								<td colspan="2">
									<div class="input-group">
										<input type="text" class="form-control" id="subject"
											placeholder="Search">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button" id="searchSub">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
								</td>
							</tr>
						</table>
					</div>
				</div>
			</form>
		</div>
	</div>


	<!-- 과목 리스트 -->
	<div class="row">
		<div id="classList" class="col-md-12"></div>
	</div>
</div>

<!-- 신청 폼 -->

<form id="RegisterEndF" action="registerClassEnd.do" method="post">
	<input type="hidden" id="RegisterSubName" name="RegisterSubName">
	<input type="hidden" id="RegisterStudentNum" name="RegisterStudentNum">
</form>

<script>
	function Register(lname, snum) {

		if (registerSubInfoF.forCheck.value == false) {
			alert('본인인증이 완료되지 않았습니다.');
			return;
		}

		if (RegisterEndF.RegisterSubName.value == null) {
			alert('신청할 과목을 선택하세요.')
			return;
		}

		RegisterEndF.RegisterSubName.value = lname;
		RegisterEndF.RegisterStudentNum.value = snum;

		RegisterEndF.submit();
	}
</script>
<jsp:include page="/foot.jsp" />