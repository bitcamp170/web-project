<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%
	request.setCharacterEncoding("UTF-8");
%>

<!doctype html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<c:if test='${not empty message }'>
<script>
	alert('${message}');
</script>
</c:if>
</head>
<body>

	<div id="wrapper">

		<!-- PAGE TITLE -->
		<section class="bg-light p-0">
			<div class="container py-5">

				<h1 class="h3">로그인</h1>

				<nav aria-label="breadcrumb">
					<ol class="breadcrumb fs--14">
						<li class="breadcrumb-item"><a href="${contextPath}/main/main.do">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">Account</li>
					</ol>
				</nav>

			</div>
		</section>
		<!-- /PAGE TITLE -->




		<!-- FORM -->
		<section>
			<div class="container">
				<div class="row">
					<div
						class="col-12 col-sm-8 col-md-8 col-lg-6 offset-sm-2 offset-md-2 offset-lg-3">
						<!-- optional class: .form-control-pill -->
						<form novalidate action="${contextPath}/member/login.do"
							method="POST" class="bs-validate p-5 rounded shadow-xs">
							<!--
								<p class="text-danger">
									Ups! Please check again
								</p>
								-->
							<div class="form-label-group mb-3">
								<input required placeholder="id" id="account_id"
									name="member_id" type="text" class="form-control"> <label
									for="account_email">아이디</label>
							</div>
							<div class="input-group-over">
								<div class="form-label-group mb-3">
									<input required placeholder="Password" id="account_password"
										name="password" type="password" class="form-control">
									<label for="account_password">비밀번호</label>
								</div>
								<a href="signin-password.jsp" class="btn fs--12"> 비밀번호 찾기 </a>
							</div>



							<div class="row">

								<div class="col-12 col-md-6 mt-4">
									<button type="submit" class="btn btn-primary btn-block"
										onclick="login_confirm(this.form)">로그인</button>
								</div>

								<!-- <div class="col-12 col-md-6 mt-4">
										<button type="button" class="btn btn-block">
											회원가입
										</button>
                  </div> -->

								<div class="col-12 col-md-6 mt-4">
									<a href="${contextPath}/member/signupForm.do"
										class="btn btn-block"> 회원가입 </a>
								</div>

								<!-- <div class="col-12 col-md-6 mt-4 text-align-end text-center-xs">
										<a href="signup.html" class="btn px-0">
											Don't have an account yet?
										</a>
									</div> -->

							</div>

						</form>

					</div>

				</div>

			</div>
		</section>
		<!-- /FORM -->

<!-- function login_confirm(frm){
	var id = frm.member_id.value;
	var pw = frm.password.value;

	if ((id == "" || id.length == 0) || (pw == "" || pw.length == 0)) {
		alert("아이디와 비밀번호는 필수입니다.");
	}
} -->


		<!-- CONNECT WITH -->
		<section class="py-5 border-top">
			<div class="container">
				<div class="row text-center-xs">

					<div class="col">
						<h3 class="m-0 font-weight-light">다른 방법으로 로그인하기</h3>
						<p class="m-0">Alternative ways to sign in!</p>
					</div>

					<div class="col-12 mt-4 d-block d-md-none">
						<!-- mobile spacer -->
					</div>

					<div class="col-12 col-md-6 col-lg-4 text-align-end">

						<div class="row">

							<div class="col-6">
								<a href="#"
									class="btn btn-sm btn-block btn-facebook transition-hover-top mt-1"
									rel="noopener"> <i class="fi fi-social-facebook"></i>
									facebook
								</a>
							</div>

							<div class="col-6">
<div id="gSignInWrapper">
    <span class="label">Sign in with:</span>
    <div id="customBtn" class="customGPlusSignIn">
      <span class="icon"></span>
      <span class="buttonText">Google</span>
    </div>
  </div>
  <div id="name"></div>
  <script>startApp();</script>
  <script>
  var googleUser = {};
  var startApp = function() {
    gapi.load('auth2', function(){
      // Retrieve the singleton for the GoogleAuth library and set up the client.
      auth2 = gapi.auth2.init({
        client_id: '1090287714877-qd2ikq55m2grble3eltcrr4h9s1dpu6b.apps.googleusercontent.com',
        cookiepolicy: 'single_host_origin',
        // Request scopes in addition to 'profile' and 'email'
        //scope: 'additional_scope'
      });
      attachSignin(document.getElementById('customBtn'));
    });
  };

  function attachSignin(element) {
    console.log(element.id);
    auth2.attachClickHandler(element, {},
        function(googleUser) {
          document.getElementById('name').innerText = "Signed in: " +
              googleUser.getBasicProfile().getName();
        }, function(error) {
          alert(JSON.stringify(error, undefined, 2));
        });
  }
  </script>
							</div>

						</div>

					</div>

				</div>
			</div>
		</section>
		<!-- /CONNECT WITH -->


