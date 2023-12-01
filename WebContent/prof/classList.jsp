<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../top1.jsp" />
<%
	String myctx = request.getContextPath();
%>
<form name="findF" id="findF" role="form" action="" method="POST">
	<div class="pt-2" style="">
		<div class="container">
			<h1>내 강의 목록</h1>
			<div class="pt-2 row">
				<div class="col-md-12" style="">
					<div class="table-responsive" style="">
						<table class="table" style="text-align: center">
							<thead>
								<tr>
									<th width="10%">강의 번호</th>
									<th width="20%">학년</th>
									<th width="20%">학기</th>
									<th width="30%">강의명</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${cList eq null or empty cList}">
									<tr>
										<td colspan="5">개설한 강의가 없습니다.</td>
									</tr>
								</c:if>
								<c:if test="${cList ne null or not empty cList}">
									<c:forEach var="cl" items="${cList}">
										<tr>
											<td>${cl.lNum }</td>
											<td>${cl.grade}학년</td>
											<td>${cl.semester}학기</td>
											<td><a
												href="javascript:search('${cl.lName}', '${cl.lNum}')">${cl.lName}
											</a></td>
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

<script>
	var search = function(val, val2) {
		//alert(val2);
		location.href = 'studentByClass.do?lname=' + encodeURIComponent(val)
				+ "&lnum=" + val2;
	}
</script>
<jsp:include page="../foot1.jsp" />