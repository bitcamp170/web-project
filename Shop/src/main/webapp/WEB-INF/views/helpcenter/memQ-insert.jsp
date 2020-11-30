<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%
  request.setCharacterEncoding("UTF-8");
%>

<div class="d-flex flex-fill container">

	<!-- MIDDLE -->
	<div id="middle" class="flex-fill">

		<div class="page-title bg-transparent b-0">
			<!-- h1 고객센터 -->
			<h1 class="h4 mt-4 mb-0 px-3">고객센터</h1>
		</div>

		<div class="clearfix">
			<div role="tabpanel">

				<!-- Nav tabs -->
				<div class="container">
					<ul class="nav">
						<li class="tab-link" data-tab="tab-1"><a href="notice-tab.do">공지사항</a>
						</li>
						<li class="tab-link" data-tab="tab-2"><a href="faq-tab.do">FAQ</a>
						</li>
						<li class="tab-link current" data-tab="tab-3"><a
							href="memberQ-tab.do">1:1 문의</a></li>
					</ul>

					<!-- tab-3 -->
					<div id="tab-3" class="tab-content">

						<h3 class="joy-table-title">
							1:1
							<p>모든 의문... 쩝쩝박사에게!</p>
						</h3>

						<!-- insert form -->
						<div id="memq-insert">

							<form action="memqAdd.do" method="post"
								enctype="multipart/form-data">
								<input type="hidden" name="action" value="memqAdd"> <input
									type="hidden" name="member_id" value="${memberInfo.member_id }">
								<div class="memq-title">
									<p>제목</p>
									<div class="category-select">
										<select name="qna_category_num">
											<option selected>선택해주세요.</option>
											<option value="1">배송</option>
											<option value="2">반품</option>
											<option value="3">상품</option>
										</select> <input type="text" name="title">
									</div>
								</div>
								<div class="memq-order-num">
									<p>주문번호</p>
									<input type="number" name="order_num"> <input
										type="button" value="주문조회">
								</div>
								<div class="memq-email">
									<p>이메일</p>
									<input type="text" name="email" value="${memberInfo.email }">
								</div>
								<div class="memq-phone">
									<p>전화번호</p>
									<input type="text" name="phone" value="${memberInfo.phone }">
								</div>
								<div class="memq-contents">
									<p>내용</p>
									<div>
										1:1 문의 작성 전 확인해주세요!<br>
										<br> 반품/환불<br> - 제품 하자 혹은 이상으로 반품(환불)이 필요한 경우 사진과 함께
										구체적인 내용을 남겨주세요.<br>
										<br> 주문취소<br> - 생산이 시작된 이후에는 취소가 제한되는 점 고객님의 양해
										부탁드립니다.<br> - 일부 상품은 배송 3~4일 전에만 취소 가능합니다.<br>
										<br> 배송<br> - 배송일 및 배송시간 지정은 불가능합니다.<br>
										<br> # 전화번호, 이메일, 주소, 계좌번호 등의 상세 개인정보가 문의 내용에 저장되지 않도록
										주의해 주시기 바랍니다.<br>
									</div>
									<textarea name="contents" rows="5" cols="80"></textarea>
								</div>
								<div class="memq-image" id="fileDiv">
									<p>이미지</p>
									<div class="clearfix bg-light p-2 mb-2 rounded">

										<label
											class="btn btn-warning cursor-pointer position-relative">

											<input name="file" multiple="multiple" type="file"
											data-file-ext="jpg,jpeg,png"
											data-file-max-size-kb-per-file="3072"
											data-file-max-size-kb-total="30720"
											data-file-max-total-files="10"
											data-file-ext-err-msg="Allowed:"
											data-file-exist-err-msg="File already exists:"
											data-file-size-err-item-msg="File too large!"
											data-file-size-err-total-msg="Total allowed size exceeded!"
											data-file-size-err-max-msg="Maximum allowed files:"
											data-file-toast-position="top-center"
											data-file-preview-container=".js-file-preview-container"
											data-file-preview-img-height="100"
											data-file-preview-show-info="true"
											data-file-btn-clear="a.js-file-btn-clear"
											data-file-preview-img-cover="true"
											data-file-preview-class="shadow-md my-2 mr-3 rounded float-start"
											class="custom-file-input absolute-full"> <span
											class="group-icon"> <i class="fi fi-arrow-upload"></i>
												<i class="fi fi-circle-spin fi-spin"></i>
										</span> <span>Upload Images</span>

										</label>

										<!-- remove button -->
										<a href="#" title="Clear Files" data-toggle="tooltip"
											class="js-file-btn-clear hide btn btn-secondary mb-2"> <i
											class="fi fi-close m-0"></i>
										</a>

										<!-- info -->
										<small class="d-block text-muted"> Upload up to 10
											product images (jpg, jpeg, png). </small>

										<!--
												
											Container : files are pushed here!
											.hide-empty = container hidden if empty

										-->
										<div
											class="js-file-preview-container d-inline-block position-relative clearfix hide-empty">
											<!-- container -->
										</div>

									</div>
								</div>
								<div class="memq-submit">
									<input type="submit" value="등록"> <a
										href="memberQ-tab.do" class="list">목록</a>
								</div>
							</form>

						</div>
						<!-- insert form end -->

					</div>
					<!-- tab-3 end -->

				</div>
				<!-- Nav tabs end-->

			</div>

		</div>

	</div>
	<!-- MiDDLE end -->

</div>
