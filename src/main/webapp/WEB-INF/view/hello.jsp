<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<body>
	<h1>Welcome To Book World</h1>
	<a href="./books/book">Add Book</a>
	<a href="./books">Your Books</a>
	
	<!-- when you are using csrf -logout allows should
	include the csrf token like this one -->
	
	<security:authorize access="isAuthenticated()">
		<form action="<spring:url value="/logout" />" method="post">
			<input type="submit" value="Log out" /> <input type="hidden"
				name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
	</security:authorize>
</body>
