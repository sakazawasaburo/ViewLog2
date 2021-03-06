<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head th:replace="fragments/layout2 :: base_header(~{::link},'index')">
<link href="/stylesheets/jquery.bootgrid.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="/stylesheets/Buttons.css" />

<style>
.myform {
	width: 730px;
	margin: 0 auto;
}
</style>

</head>
<body>
	<div th:replace="fragments/layout2 :: header"></div>

	<div class="container">
		<div class="row">
			<div class="col-xs-12 col-md-push-3 col-md-6">
				<div class="form-wrap">
					<div class="text-center">
						<h1>Login</h1>
					</div>
					<br/>
					<form role="form" action="#" th:action="@{/index}" method="POST"
						id="login-form" autocomplete="off" class="center-block">
						<div class="form-group"
							th:if="${session['SPRING_SECURITY_LAST_EXCEPTION']} != null">
							<p class="form-control-static text-danger"
								th:text="${session['SPRING_SECURITY_LAST_EXCEPTION'].message}"></p>
						</div>
						<div class="form-group">
							<label for="id" class="sr-only">ID</label> <input type="text"
								name="username" id="username" class="form-control input-lg"
								placeholder="ID を入力して下さい" />
						</div>
						<div class="form-group" style="align: center">
							<label for="password" class="sr-only">Password</label> <input
								type="password" name="password" id="password"
								class="form-control input-lg" placeholder="Password を入力して下さい"
								style="margin-top: 30px;" />
						</div>
						<br>
						<button id="btn-login" class="btn btn-primary btn-block">ログイン</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="/js/jquery.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
