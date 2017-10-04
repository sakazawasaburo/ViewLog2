<!DOCTYPE html>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<html xmlns:th="http://www.thymeleaf.org">
<head th:replace="fragments/layout :: base_header(~{::link},'Home')">
<link href="/stylesheets/jquery.bootgrid.css" rel="stylesheet" />
<sec:csrfMetaTags />
</head>
<body>
	<div th:replace="fragments/layout :: header"></div>
	<div align="center">
		<input type="button" value="ViewLog"
			onclick="location.href='/logview'"
			style="margin-top: 30px; class: glyphicon glyphicon-list; margin-right: 10px; text-align: center; width: 400px; height: 70px; border-radius: 0.5em; background-color: #778899; font-size: 30px; font-color: black;">
		<input type="button" value="(●●●●●●)"
			onclick="location.href='/Account'"
			style="margin-top: 30px; margin-left: 10px; text-align: center; width: 400px; height: 70px; border-radius: 0.5em; background-color: #4682b4; font-size: 30px;">
		<sec:authorize access="hasAuthority('ADMIN')">
			<!-- (2) -->
			<input type="button" value="アカウント登録"
				onclick="location.href='/signup'">
			<!-- omitted -->
		</sec:authorize>
	</div>
	<br>
	</div>
</body>
</html>