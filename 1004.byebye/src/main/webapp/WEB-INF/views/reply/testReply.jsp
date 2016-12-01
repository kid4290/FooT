<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:forEach var="dto" items="${requestScope.list}">
<div class="col-md-12">
		<div class="image-reply-post"></div>
		<div class="name-reply-post">${dto.nickname}</div>
		<div class="text-reply-post">${dto.reCon }
		<c:if test="${dto.userid eq sessionScope.userid }">
			<a href="replyDelete.do?seq=${dto.reNum}&seq2=${dto.userid}">[삭제]</a>
			</c:if>
		</div>
	</div> 
</c:forEach>
