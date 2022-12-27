<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="../../etc/login.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="title-login">
		<h2>로그인 폼</h2>
	</div>
	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked>
			<label for="tab-1" class="tab">Sign In</label> <input id="tab-2"
				type="radio" name="tab" class="sign-up"> <label for="tab-2"
				class="tab">Sign Up</label>
			<div class="login-form">
				<!-- 로그인 기능  -->
				<div class="sign-in-htm">
					<form method="post" action="managerLoginPro.jsp">
						<div class="group">
							<label for="user" class="label">Username</label> <input id="user"
								type="text" class="input" name="id" maxlength="50"
								style="ime-mode: inactive;">
						</div>
						<div class="group">
							<label for="pass" class="label">Password</label> <input id="pass"
								class="input" type="password" data-type="password" name="passwd"
								maxlength="16" style="ime-mode: inactive;">
						</div>
						<div class="group">
							<input id="check" type="checkbox" class="check" checked>
							<label for="check"> <span class="icon"></span>Keep me
								Signed in
							</label>
						</div>
						<div class="group">
							<input type="submit" class="button" value="Sign In">
						</div>
					</form>
					<div class="hr"></div>
					<div class="foot-lnk">
						<a href="#forgot">Forgot Password?</a>
					</div>
				</div>
				<div class="sign-up-htm">
					<div class="group">
						<label for="user" class="label">Username</label> <input id="user"
							type="text" class="input">
					</div>
					<div class="group">
						<label for="pass" class="label">Password</label> <input id="pass"
							type="password" class="input" data-type="password">
					</div>
					<div class="group">
						<label for="pass" class="label">Repeat Password</label> <input
							id="pass" type="password" class="input" data-type="password">
					</div>
					<div class="group">
						<label for="pass" class="label">Email Address</label> <input
							id="pass" type="text" class="input">
					</div>
					<div class="group">
						<input type="submit" class="button" value="Sign Up">
					</div>
					<div class="hr"></div>
					<div class="foot-lnk">
						<label for="tab-1">Already Member?</label>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>