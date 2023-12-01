<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="manager.domain.*, manager.persistence.*, java.util.*, java.text.*"%>
<table class="table table-condensed table-striped">
	<%
		String ntitle = request.getParameter("ntitle"); // 검색할 도서명 받기

	NoticeDAOMyBatis dao = new NoticeDAOMyBatis();
	List<NoticeVO> arr = null;
	if (ntitle == null) {
		arr = dao.getAllNotice(); // 모든 공지사항 가져오기
	} else {
		// 검색한 도서 정보 가져오기
		arr = dao.getFindNotice(ntitle);
	}
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	DecimalFormat df = new DecimalFormat("###,###");
	if (arr != null) {
		for (NoticeVO n : arr) {
	%>
	<tr>
		<td width="15%"><%=n.getNnum()%></td>
		<td width="25%"><%=n.getNtitle()%></td>
		<td width="15%"><%=n.getNwriter()%></td>
		<td width="15%"><%=sdf.format(n.getNdate())%></td>
		<td width="15%">조회수</td>
		<td width="15%"><a href="#book_data"
			onclick="goEdit('<%=n.getNnum()%>')">수정</a>| <a href="#book_data"
			onclick="goDel('<%=n.getNnum()%>')">삭제</a></td>
	</tr>
	<%
		} //for------
	} else {
		out.println("<tr><td colspan='6'>");
		out.println("데이터가 없습니다.</td></tr>");
	}
	%>
</table>