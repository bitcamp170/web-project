<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%
  request.setCharacterEncoding("UTF-8");
%>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	function execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('zipNo').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('load_address').value = fullRoadAddr; //도로명 주소
						document.getElementById('jibun_address').value = data.jibunAddress; //지번주소

						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							//예상되는 도로명 주소에 조합형 주소를 추가한다.
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							document.getElementById('guide').innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
						} else {
							document.getElementById('guide').innerHTML = '';
						}

					}
				}).open();
	}
	</script>

<body class="layout-admin aside-sticky header-sticky">

	<div id="wrapper" class="d-flex align-items-stretch flex-column">

		<div id="wrapper_content" class="d-flex flex-fill">


			<!-- MIDDLE -->
			<div id="middle" class="flex-fill">

				<!--

						PAGE TITLE
					-->
				<div class="page-title bg-transparent b-0">

					<h1 class="h4 mt-4 mb-0 px-3 font-weight-normal">계정 설정</h1>

				</div>




				<form novalidate class="bs-validate d-block mb-7" method="post"
					action="#" enctype="multipart/form-data">

					<div class="row gutters-sm mb-3">





						<div class="col-12 mb-3">

							<!-- portlet -->
							<div class="portlet">

								<!-- portlet : header -->
								<div class="portlet-header">
									<span
										class="d-block text-dark text-truncate font-weight-medium">
										회원정보 </span>
								</div>
								<!-- /portlet : header -->


								<!-- portlet : body -->
								<div class="portlet-body">

									<div class="row gutters-sm d-flex align-items-center">

										<div class="col-12 col-md-6">

											<div class="form-label-group mt-3">
												<input required id="member_id" name="member_id" type="text"
													value="${member_info.member_id }" class="form-control"
													readonly> <label for="member_id">아이디</label>
											</div>

										</div>

										<div class="col-12 col-md-6">

											<div class="form-label-group mt-3">
												<input required id="member_name" name="member_name"
													type="text" value="${member_info.member_name }"
													class="form-control"> <label for="member_name">이름</label>
											</div>

										</div>

										<div class="col-12 col-md-6">

											<div class="form-label-group mt-3">
												<input id="email" name="email" type="email"
													value="${member_info.email }" class="form-control">
												<label for="email">이메일</label>
											</div>

										</div>

										<div class="col-12 col-md-6">

											<div class="form-label-group mt-3">
												<input id="phone" name="phone" type="tel"
													value="${member_info.phone }" class="form-control">
												<label for="account_phone_number">휴대폰 번호</label>
											</div>

										</div>

										<div class="col-12 col-md-6">

											<div class="form-label-group mt-3">
												<input id="member_date" name="member_date" type="date"
													value="${member_info.member_date }" class="form-control">
												<label for="member_date">가입일</label>
											</div>

										</div>

										<div class="col-12 col-md-6">

											<div class="form-label-group mt-3">
												<input id="birthday" name="birthday" type="date"
													value="${member_info.birthday }" class="form-control">
												<label for="birthday">생일</label>
											</div>

										</div>


										<div class="col-12 col-md-6">

											<div class="form-label-group mt-3">
												<input id="point" name="point" type="number"
													value="${member_info.point }" class="form-control">
												<label for="point">포인트</label>
											</div>

										</div>

										<div class="col-12 col-md-3">

											<div class="form-label-group mt-3">
												<input class="form-control" type="text" id="member_grade"
													data-toggle="dropdown" aria-expanded="true"
													<c:choose>
													<c:when test="${member_info.member_id eq 'admin' }">
													value="관리자"
													</c:when>
													<c:when test="${member_info.pre_score >10000}">
													value="우수회원"
													</c:when>
													<c:otherwise>
													value="일반회원"
													</c:otherwise>
													</c:choose>
													readonly> <label for="member_grade">회원등급</label>
											</div>

										</div>

										<div class="col-12 col-md-3">

											<div class="form-label-group mt-3">
												<input id="this_score" name="this_score" type="number"
													value="${member_info.this_score }" class="form-control"
													readonly> <label for="this_score">실적</label>
											</div>

										</div>


										<div class="col-3">

											<div class="form-label-group mt-3">
												<input placeholder="Address" id="zipNo" name="zipNo"
													type="text" value="" class="form-control col-md-9"
													style="margin-bottom: 0; display: inline-block"> <label
													for="zipNo">우편번호</label> <a class="btn btn-primary"
													href="javascript:execDaumPostcode()" style="margin-bottom:4px">검색</a>

											</div>

										</div>


										<div class="col-3">

											<div class="form-label-group mt-3">
												<input placeholder="Address" id="load_address"
													name="load_address" type="text" value=""
													class="form-control"> <label for="load_address">도로명
													주소</label>
											</div>

										</div>
										<div class="col-3">

											<div class="form-label-group mt-3">
												<input placeholder="address" id="jibun_address"
													name="jibun_address" type="text" value=""
													class="form-control"> <label for="jibun_address">지번
													주소</label>
											</div>

										</div>
										<div class="col-3">

											<div class="form-label-group mt-3">
												<input placeholder="address" id="rest_address"
													name="rest_address" type="text" value=""
													class="form-control"> <label for="rest_address">나머지
													주소</label>
											</div>

										</div>


									</div>

								</div>
								<!-- /portlet : body -->

							</div>
							<!-- /portlet -->

						</div>

					</div>


					<button type="submit" class="btn btn-primary" onclick="fn_modify_member()">
						<i class="fi fi-check"></i> 회원정보 변경
					</button>
					<script type="text/javascript">
					function fn_modify_member() {
						const result = confirm("변경하시겠습니까?");
						if(result){
							alert("회원정보를 변경합니다.");							
						}
						
					}
					</script>
					
					<!-- 회원삭제 버튼 -->
					<a
						href="${contextPath}/admin/member/deleteMember.do?member_id=${member_info.member_id}"
						class="js-ajax-confirm btn btn-danger"
						data-ajax-confirm-size="modal-md"
						data-ajax-confirm-centered="false"
						data-ajax-confirm-callback-function='function(){window.location.href = "${contextPath}/admin/member/memberList.do";}'
						data-ajax-confirm-mode="json" data-ajax-confirm-method="GET"
						data-ajax-confirm-title="Please Confirm"
						data-ajax-confirm-body="Are you sure? Delete this item?"
						data-ajax-confirm-btn-yes-text="Confirm"
						data-ajax-confirm-btn-yes-class="btn-sm btn-danger"
						data-ajax-confirm-btn-yes-icon="fi fi-check"
						data-ajax-confirm-btn-no-text="Cancel"
						data-ajax-confirm-btn-no-class="btn-sm btn-light"
						data-ajax-confirm-btn-no-icon="fi fi-close" rel="nofollow"> <i
						class="fi fi-shield-ok"></i> 회원삭제
					</a>



				</form>





				<!-- PASSWORD RESET -->
				<div class="row gutters-sm mb-3">

					<div class="col-12 mb-3">


						<!-- portlet -->
						<div class="portlet">

							<!-- portlet : body -->
							<div class="portlet-body">

								<a id="passwordResetToggler" href="#passwordForm"
									data-toggle="collapse"
									class="btn-toggle btn btn-light scroll-to" data-offset="-300"
									data-speed="600" data-toggle-target="#passwordResetToggler"
									data-toggle-container-class="hide"> <i class="fi fi-locked"></i>
									비밀번호 변경
								</a>

								<div id="passwordForm" class="collapse">

									<form novalidate class="bs-validate row" method="post"
										action="#">

										<div class="col-12 col-md-6 mb-3">

											<!-- portlet : header -->
											<div class="portlet-header pt-0 pb-5">
												<span
													class="d-block text-dark text-truncate font-weight-medium">
													회원 비밀번호 </span>
											</div>
											<!-- /portlet : header -->

											<div class="row gutters-sm">

												<div class="col-12 col-xl-6 mb-3">

													<!-- new password -->
													<div class="input-group-over">
														<div class="form-label-group mb-3">
															<input required placeholder="New Password"
																id="account_new_password"
																name="account[current_password]" type="password"
																class="form-control"> <label
																for="account_new_password"> <span
																class="text-danger">New</span> 비밀번호
															</label>
														</div>

														<!-- Show Password -->
														<a href="#" class="btn btn-password-type-toggle"
															data-target="#account_new_password" tabindex="-1"> <span
															class="group-icon"> <i class="fi fi-eye m-0"></i>
																<i class="fi fi-close m-0"></i>
														</span>
														</a>
													</div>
													<!-- /new password -->

												</div>

											</div>


											<button type="submit"
												class="btn btn-warning mb-3 d-block-xs w-100-xs">
												<i class="fi fi-check"></i> 비밀번호 변경하기
											</button>


											<a id="passwordResetCancel" href="#passwordForm"
												data-toggle="collapse"
												class="btn-toggle btn btn-light mb-3 d-block-xs w-100-xs"
												data-toggle-temporized="10"
												data-toggle-target="#passwordResetToggler"
												data-toggle-container-class="hide active"> <i
												class="fi fi-close"></i> 취소
											</a>

										</div>


									</form>

								</div>

							</div>
							<!-- /portlet : body -->

						</div>
						<!-- /portlet -->


					</div>

				</div>
				<!-- /PASSWORD RESET -->

			</div>
			<!-- /MIDDLE -->

		</div>