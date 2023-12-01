<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table>
	
		<tr>
			<td>a</td><%-- ${board.idx} --%>
			<td>
			<a href="#">a</a><%-- view.do?idx=${board.idx} ${board.subject} --%>
				
				<%-- <c:if test="${board.filesize>0}">
					<img src="../images/attach.png" width="16px">
				</c:if> --%>
				
			</td>
			<td>a</td> <%-- ${board.name} --%>
			<td>a
				<%-- <fmt:formatDate value="${board.wdate}" pattern="yyyy-MM-dd" /> --%>
				<!-- 날짜 포맷 -->
			</td>
			<td>a</td> <%-- ${board.readnum} --%>
			<td><a>수정</a>|<a>삭제</a></td>
		</tr>
	
</table>