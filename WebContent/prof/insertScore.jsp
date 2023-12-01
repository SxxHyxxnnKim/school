<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../top1.jsp" />
<form name="findF" id="findF" role="form" action="" method="POST">
	<div class="py-5" style="">
		<div class="container">
			<h1>${lname}</h1>
			<div class="row">
				<div class="col-md-12" style="">
					<div class="table-responsive" style="">
						<table class="table">
							<thead>
								<tr>
									<th width="10%" class="text-center">학번</th>
									<th width="10%" class="text-center">성명</th>
									<th width="20%" class="text-center">전공</th>
									<th width="20%" class="text-center">점수</th>
									<th width="20%" class="text-center">점수입력</th>
								</tr>
							</thead>
							<tbody>
								<!-- -------------------------------------------- -->
								<c:if test="${sList eq null or empty sList}">
									<tr>
										<td colspan="7" style="text-align: center">수강중인 학생이 없습니다.</td>
									</tr>
								</c:if>
								<c:if test="${sList ne null and not empty sList}">
									<c:forEach var="std" items="${sList}" varStatus="st">
										<tr>
											<td class="text-center">${std.sNum}</td>
											<td class="text-center">${std.sName}</td>
											<td class="text-center">${std.major}</td>
											<td class="text-center"><input
												style="vertical-align: middle;" size=3
												id="inputScr${std.idx}" value="${std.score}">/100</td>
											<td class="text-center">
												<button class="btn btn-success" id="move" type="button"
													onclick="updateScore('${std.idx}','${std.sNum}','${lnum}')">입력</button>
											</td>
										</tr>
									</c:forEach>
								</c:if>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
<!-- 등록 form start-------------------- 
<form name="inf" action="insertScore.do">
	<input type="text" name="infSnum">
	<input type="text" name="infLnum">
	<input type="text" name="infScore">
</form>-->
<!-- 등록 form end------------------------------ -->
<!-- 수정 form start--------------------------------- -->
<form name="ef" action="updateScore.do">
	<input type="hidden" name="efSnum"> <input type="hidden"
		name="efLnum"> <input type="hidden" name="efScore">
</form>
<!-- 수정 form end--------------------------------- -->
<script>
	function updateScore(i, sn, ln) {
		var sc = $('#inputScr' + i).val();
		//alert(ef.efScore.value)
		ef.efSnum.value = sn;
		ef.efLnum.value = ln;
		ef.efScore.value = sc;
		ef.method = 'POST'
		ef.submit();
	}

	$('#something').click(function() {
		location.reload();
	});
</script>
<jsp:include page="../foot.jsp" />