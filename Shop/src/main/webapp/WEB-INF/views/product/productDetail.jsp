<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%
	request.setCharacterEncoding("UTF-8");
%>

<!-- 여기서부터 -->
			<!-- PRODUCT -->
			<section class="pt-5">
				<div class="container">

					<!-- Breadcrumbs -->
					<div class="mb-5">
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb fs--14">
								<li class="breadcrumb-item"><a href="${contextPath}/main/main.do">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page"> ${vo.product_category_name } </li>
							</ol>
						</nav>
						<!--
						<div class="fs--14 text-muted mt-1">
							Last updated on <time datetime="2019-07-18">July 18th, 2019</time>
						</div>
						-->
					</div>
					<!-- /Breadcrumbs -->


					<div class="row">

						<div class="col-lg-7 col-md-6 order-1 mb-5">

							<!--
								Swiper require thumbnails to be first initialized!
								Thanks to Bootstrap, we can set quick and simple the order!
							-->
							<div class="row">

								<!-- SECONDARY SWIPER : THUMBS -->
								<div class="col-12 order-2">

									<!-- 

										SWIPER SLIDER : THUMBS

									-->
									<!--  -->
									<div id="swiper_secondary" class="swiper-container swiper-thumbs mt-3"
										data-swiper='{
											"slidesPerView": 6,
											"spaceBetween": 6,
											"autoplay": false,
											"loop": false,
											"zoom": false,
											"effect": "slide",
											"pagination": null,
											"watchSlidesVisibility": true,
		      								"watchSlidesProgress": true,
		      								"loopedSlides": 1,
		      								"thumbs": { 
		      									"slideThumbActiveClass": "bg-theme-color-light border-bottom border-primary-soft bw--3" 
		      								},
											"breakpoints": {
												"920": 	{ "slidesPerView": "4" }
											}
										}'>

										<div class="swiper-wrapper text-center">

											<!-- slider 1 -->
											<!--  
											<div class="swiper-slide py-2 rounded cursor-pointer">
												<img height="80" class="bg-suprime rounded max-h-600" 
													src="${contextPath}/product/thumbnails1.do?product_id=${vo.product_id }&product_image=${vo.product_image }" 
													
													alt="...">
											</div>
											-->
											<div>
											<img src="${contextPath}/product/thumbnails1.do?product_id=${vo.product_id }&product_image=${vo.product_image }">
											</div>
											<!-- slider 2 -->
											<!-- 
											<div class="swiper-slide py-2 rounded cursor-pointer">
												<img height="80" class="bg-suprime rounded max-h-600" 
													src="demo.files/images/unsplash/products/thumb_330/smartwatch_2.jpg" 
													alt="...">
											</div>
											-->
											<!-- slider 3 -->
											<!--
											<div class="swiper-slide py-2 rounded cursor-pointer">
												<img height="80" class="bg-suprime rounded max-h-600" 
													src="demo.files/images/unsplash/products/thumb_330/smartwatch_1.jpg" 
													alt="...">
											</div>
											-->
										</div>

									</div>
									<!-- /SWIPER  : THUMBS -->

								</div>


								<!-- PRIMARY SWIPER -->
								<div class="col-12 order-1">


									<!-- 

										SWIPER SLIDER 
										w-75 w-100-xs 		= 70% width on desktop, 100% mobile
										swiper-white 		= white buttons. (swiper-primary, swiper-danger, etc)

										By default, Smarty controller will reconfigure swiper if -only- one image detected:
											- remove arrows
											- remove progress/bullets
											- disable loop
										Add .js-ignore class to skip, if for some reason is needed!

									-->
									<div id="swiper_primary" class="swiper-container swiper-preloader swiper-white mx-auto"
										data-swiper-link="swiper_secondary" 
										data-swiper='{
											"slidesPerView": 1,
											"spaceBetween": 0,
											"autoplay": false,
											"loop": true,
											"zoom": true,
											"effect": "slide",
											"loopedSlides": 1,
											"breakpoints": {
												"920": 	{ "slidesPerView": "1" }
											}
										}'>

										<!--
											
											NOTE: only the first image is NOT using lazy loading (to avoid 'jumping')
											lazy is optional but recommended: ~80% of visitors don't slide through images!

											Images are using srcset for responsiveness!

										-->
										<div class="swiper-wrapper text-center">

											<!-- slider 1 -->
											
											<div class="swiper-slide">
												<div class="swiper-zoom-container">
													<!--
													<img class="bg-suprime img-fluid rounded max-h-600" 

														sizes="(max-width: 768px) 100vw"
														srcset="
																demo.files/images/unsplash/products/smartwatch_3.jpg 1200w,
																demo.files/images/unsplash/products/thumb_768/smartwatch_3.jpg 768w
														"
														src="demo.files/images/unsplash/products/smartwatch_3.jpg" 
														alt="...">
													-->
													<img class="bg-suprime img-fluid rounded max-h-600" 
														src ="${contextPath}/product/thumbnails.do?product_id=${vo.product_id}&product_category_num=${vo.product_category_num}ㅎㅎ" >
												</div>
											</div>
											
											<!-- slider 2 -->
											<!-- 
											<div class="swiper-slide">
												<div class="swiper-zoom-container">
													<img class="lazy bg-suprime img-fluid rounded max-h-600" 

														sizes="(max-width: 768px) 100vw"
														srcset="
																demo.files/images/unsplash/products/smartwatch_2.jpg 1200w,
																demo.files/images/unsplash/products/thumb_768/smartwatch_2.jpg 768w
														"

														data-src="demo.files/images/unsplash/products/smartwatch_2.jpg" 
														src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" 
														alt="...">
												</div>
											</div>
											-->
											<!-- slider 3 -->
											<!-- 
											<div class="swiper-slide">
												<div class="swiper-zoom-container">
													<img class="lazy bg-suprime img-fluid rounded max-h-600" 

														sizes="(max-width: 768px) 100vw"
														srcset="
																demo.files/images/unsplash/products/smartwatch_1.jpg 1200w,
																demo.files/images/unsplash/products/thumb_768/smartwatch_1.jpg 768w
														"

														data-src="demo.files/images/unsplash/products/smartwatch_1.jpg" 
														src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" 
														alt="...">
												</div>
											</div>
											-->
										</div>

										<!-- Left|Right Arrows -->
										<div class="swiper-button-next rounded-circle shadow-xs d-none d-md-block"></div>
										<div class="swiper-button-prev rounded-circle shadow-xs d-none d-md-block"></div>

									</div>
									<!-- /SWIPER SLIDER -->

								</div>

							</div>



							<!-- gift -->
							<!--
							<div class="clearfix mt-4">
								<div class="font-weight-medium mb-1 text-success">
									<i class="fi fi-gift "></i>
									<span class="d-inline-block px-2">Your Gift</span>
								</div>

								<img height="50" class="float-start" src="demo.files/images/unsplash/products/thumb_330/imani-clovis-LxVxPA1LOVM-unsplash-min.jpg" alt="...">

								<a class="text-dark" href="#!">										
									1 × Product gift title
								</a>

								<small class="text-muted d-block">
									Gift value: $200
								</small>

							</div>
							-->
							<!-- /gift -->



						</div>


						<div class="col-lg-5 col-md-6 order-2 mb-5">

							<div class="clearfix"><!-- sticky-kit -->

								<!-- SUPPLIER & TITLE -->
								<h4 class="h2 h3-xs font-weight-medium mb-5">
									[${vo.supplier}]${vo.product_name}
									<span class="d-block text-muted fs--14">${vo.product_detail}</span>
								</h4>



								<!-- Form -->
								<form novalidate class="bs-validate" method="post" action="#" data-error-scroll-up="true">
									
									
									<!-- PRICE -->
									<div class="clearfix mb-5">

										<p class="text-muted m-0">
											<del>${vo.price}원</del> 
											<span class="text-success font-light fs--14">( ${vo.discount}%) 
												<!--<span class="font-weight-medium">you save $31.00</span> -->
											</span>
										</p>

										<p class="fs--25 m-0 font-weight-medium text-danger">

											<!-- 
												counter used because of configurator to do the math.
												If configurator not used, just add the price instead ($149.99)
											-->
											<span class="item-price" 
														data-toggle="count" 
														data-count-decimals="2"
														data-count-from="144.99" 
														data-count-to="144.99" 
														data-count-duration="250">${vo.sale_price}원</span>
										</p>

									</div>


									<!-- SIZE -->
									<!--
									<div class="clearfix mb-3">
										<a class="js-ajax-modal h6 font-weight-medium" href="#"
											data-href="_ajax/modal_shop_size_guide.html" 
											data-ajax-modal-size="modal-xl" 
											data-ajax-modal-centered="true">Size Guide
										</a>

										<div class="clearfix mt-2">
											<label class="form-selector">
												<input required type="radio" name="size">
												<span>SM</span>
											</label>

											<label class="form-selector">
												<input required type="radio" name="size" disabled>
												<span>M</span>
											</label>

											<label class="form-selector">
												<input required type="radio" name="size">
												<span>XS</span>
											</label>

											<label class="form-selector">
												<input required type="radio" name="size">
												<span>XL</span>
											</label>

											<label class="form-selector">
												<input required type="radio" name="size">
												<span>XXL</span>
											</label>
										</div>

									</div>
									-->
									<!-- /SIZE -->


									<!-- COLOR -->
									<!--
									<div class="clearfix mb-5">

										<h6 class="font-weight-medium">
											Color
										</h6>

										<div class="clearfix mt-2">
											<label class="form-selector">
												<input required type="radio" name="color">
												<i class="bg-primary"></i>
											</label>

											<label class="form-selector">
												<input required type="radio" name="color">
												<i class="bg-secondary"></i>
											</label>

											<label class="form-selector">
												<input required type="radio" name="color">
												<i class="bg-danger"></i>
											</label>

											<label class="form-selector">
												<input required type="radio" name="color">
												<i class="bg-warning"></i>
											</label>

											<label class="form-selector">
												<input required type="radio" name="color" disabled>
												<i class="bg-pink"></i>
											</label>

											<label class="form-selector">
												<input required type="radio" name="color">
												<i class="bg-indigo"></i>
											</label>

										</div>

									</div>
									-->
									<!-- /COLOR -->



									<!-- CONFIGURATOR -->
									<!---->
									<div class="clearfix mb-5">

										<h6 class="font-weight-medium">
											Configurator
										</h6>

										<div>
											<label class="form-checkbox form-checkbox-primary">
												<input type="checkbox" name="checkbox"
													data-count-target=".item-price" 
													data-count-math="42.00">
												<i></i> + $42.00 Black bracelet
											</label>
										</div>

										<div>
											<label class="form-checkbox form-checkbox-primary">
												<input type="checkbox" name="checkbox"
													data-count-target=".item-price" 
													data-count-math="12.00">
												<i></i> + $12.00 Screen protection
											</label>
										</div>

										<div>
											<label class="form-checkbox form-checkbox-primary">
												<input type="checkbox" name="checkbox"
													data-count-target=".item-price" 
													data-count-math="112.00">
												<i></i> + $112.00 128Gb Memory
											</label>
										</div>

										<div>
											<label class="form-checkbox form-checkbox-primary">
												<input type="checkbox" name="checkbox"
													data-count-target=".item-price" 
													data-count-math="5.99" disabled>
												<i></i> + <del>$5.99 Additional battery</del> <span class="font-weight-light">(out of stock)</span>
											</label>
										</div>

										<div class="clearfix pl--2 pr--2">

											<!--
												use this for priced option, 
												instead og link
											-->
											<!--
											<label class="form-checkbox form-checkbox-primary d-block">
												<input type="checkbox" name="checkbox" 
												 	data-toggle="collapse" 
												 	data-target="#item_custom_image" 
													data-count-target=".item-price" 
													data-count-math="10.00">
												<i></i> + $10.00 Personalized logo
											</label>
											-->
											<!-- 
											<a href="#item_custom_image" data-toggle="collapse" class="link-muted clearfix">
												<i class="fi fi-image"></i>
												<span class="d-inline-block pl-2 pr-2">
													upload personalized logo
												</span>
											</a>
											-->
											<div id="item_custom_image" class="collapse">
												<div class="bg-light rounded mt-3 px-4 py-3">

													<div class="clearfix">
														<label aria-label="Upload files" class="btn btn-sm btn-primary cursor-pointer position-relative m-0">

														    <input 	name="item_user_attachment[]" 
														    		type="file" 
														    		multiple=""

														    		data-file-ext="jpg, jpeg, psd, ai, png, zip, rar" 
														    		data-file-max-size-kb-per-file="10000"
														    		data-file-max-size-kb-total="100000" 
														    		data-file-max-total-files="10"
														    		data-file-ext-err-msg="Allowed:" 
														    		data-file-exist-err-msg="File already exists:"
														    		data-file-size-err-item-msg="File too large!"
														    		data-file-size-err-total-msg="Total allowed size exceeded!"
														    		data-file-size-err-max-msg="Maximum allowed files:"
														    		data-file-toast-position="bottom-center"
														    		data-file-preview-container=".js-file-input-container-multiple-product-attachment" 
														    		data-file-preview-img-height="50" 
														    		data-file-preview-show-info="true" 
														    		data-file-preview-class="bg-white p-2 mb-2 shadow-md rounded w-100" 
														    		data-file-btn-clear="a.js-file-input-btn-multiple-product-attachment-remove"
														    		data-file-preview-img-cover="false" 
														    		data-file-preview-list-type="list" 

														    		class="custom-file-input absolute-full">

															<span class="group-icon">
																<i class="fi fi-arrow-upload"></i>
																<i class="fi fi-circle-spin fi-spin"></i>
															</span> 

															<span>Select Files</span>

														</label>

														<!-- remove button -->
														<a href="#" aria-label="Clear files" class="js-file-input-btn-multiple-product-attachment-remove hide btn btn-sm btn-secondary mx-1">
															<i class="fi fi-close"></i>
															Clear files
														</a>
													</div>

													<!--
															
														Container : files are pushed here!
														.hide-empty = container hidden if empty

													-->
													<div class="js-file-input-container-multiple-product-attachment d-block position-relative clearfix hide-empty mt-3"><!-- container --></div>

												</div>

												<div class="d-block fs--12 mt-1 mx-1">
													Please upload maximum 100Mb of total files (10Mb/file). <br>
													Allowed files: jpg, psd, ai, png, zip, rar!
												</div>

											</div>

										</div>

									</div>
									<!-- /CONFIGURATOR -->



									<!-- ADD TO CART -->
									<div class="clearfix d-flex d-block-xs">
										
										<!-- ADD TO CART BUTTON -->
										<div class="d-inline-flex w-100-xs float-start float-none-xs ml-0 mr-0 mt-2"> 

											<!-- QUANTITY INPUT -->
											<div>
												<span class="js-form-advanced-limit-info badge badge-warning hide animate-bouncein position-absolute absolute-top start-0 m-1 z-index-5">
													please, order between 1 and 99.
												</span>

												<input required type="number" name="qty" value="1" step="1" min="0" max="99" class="form-control text-center js-form-advanced-limit w--80 h-100 m-0" data-toggle="tooltip" data-original-title="quantity">
											</div>

											<div class="pl-2 pr-2 w-100-xs"> 
												<button class="btn btn-danger bg-gradient-danger text-white px-4 b-0 d-block-xs w-100-xs"> 
													<span class="px-4 p-0-xs">
														<i>
															<svg width="22px" height="22px" x="0px" y="0px" viewBox="0 10 459.529 500.529">
																<path fill="#ffffff" d="M17,55.231h48.733l69.417,251.033c1.983,7.367,8.783,12.467,16.433,12.467h213.35c6.8,0,12.75-3.967,15.583-10.2    l77.633-178.5c2.267-5.383,1.7-11.333-1.417-16.15c-3.117-4.817-8.5-7.65-14.167-7.65H206.833c-9.35,0-17,7.65-17,17    s7.65,17,17,17H416.5l-62.9,144.5H164.333L94.917,33.698c-1.983-7.367-8.783-12.467-16.433-12.467H17c-9.35,0-17,7.65-17,17    S7.65,55.231,17,55.231z"></path>
																<path fill="#ffffff" d="M135.433,438.298c21.25,0,38.533-17.283,38.533-38.533s-17.283-38.533-38.533-38.533S96.9,378.514,96.9,399.764    S114.183,438.298,135.433,438.298z"></path>
																<path fill="#ffffff" d="M376.267,438.298c0.85,0,1.983,0,2.833,0c10.2-0.85,19.55-5.383,26.35-13.317c6.8-7.65,9.917-17.567,9.35-28.05    c-1.417-20.967-19.833-37.117-41.083-35.7c-21.25,1.417-37.117,20.117-35.7,41.083    C339.433,422.431,356.15,438.298,376.267,438.298z"></path>
															</svg>
														</i> 


														<span class="fs--18">Add to cart</span>
													</span>

													<!-- free shipping : optional : good for conversions -->
													<span class="d-block pt-2 pb-1">
														<span class="hr"></span>
														<span class="font-light fs--13 opacity-7 d-block mt-2">
															free shipping
														</span>
													</span>
													<!-- /free shipping : optional : good for conversions -->

												</button>
											</div>

										</div>

										<!-- ADD TO FAVOURITES BUTTON -->
										<div class="w--60 mt-2 w-100-xs float-start float-none-xs mt-2">
											<a href="#" class="btn-toggle btn btn-light h-100 d-flex justify-content-center align-items-center" 
												data-toggle="tooltip" 
												data-original-title="add to favourite" 

												data-toggle-ajax-url-on="demo.files/php/demo.ajax_request.php?product_id=1&amp;action=add_to_favourite"
												data-toast-success-message="Added to your favourite!"
												data-toast-success-position="bottom-center">
												
												<!-- heart icon -->
												<i class="m-0 fi fi-heart-empty"></i> 
												
												<!-- text : mobile only -->
												<span class="pl-3 pr-3 d-block d-sm-none">
													add to favourite
												</span>
											</a>


											<!-- IF NOT LOGGED IN : MODAL PROMPT -->
											<!--
											<a href="#" class="js-ajax-modal btn btn-light h-100 d-flex justify-content-center align-items-center" 
												data-toggle="tooltip" 
												data-original-title="add to favourite" 

												data-href="_ajax/modal_signin_md.html" 
												data-ajax-modal-size="modal-md" 
												data-ajax-modal-backdrop="static" 
												data-ajax-modal-centered="true">
												
												<i class="m-0 fi fi-heart-empty"></i> 
												
												<span class="pl-3 pr-3 d-block d-sm-none">
													add to favourite
												</span>
											</a>
											-->

										</div>

									</div>
									<!-- /ADD TO CART -->

									<!-- stock info -->
									<span class="d-block text-muted fs--11 mt-1 pl-2 pr-2">
										99 in stock
									</span>
									<!-- /ADD TO CART -->


								</form>
								<!-- /Form -->

							</div>

						</div>

					</div>


				</div>
			</section>
			<!-- /PRODUCT -->





			<!-- INFO BOX -->
			<section class="p-0 bg-warning-soft">
				<div class="container py-4">

					<div class="row">

						<div class="col-6 col-lg-3 p--15 d-flex d-block-xs text-center-xs" data-aos="fade-in" data-aos-delay="150">

							<div class="pl--10 pr--20 fs--50 line-height-1 pt--6">
								<img width="60" height="60" src="demo.files/svg/ecommerce/money_bag.svg" alt="...">
							</div>

							<div class="my-2">
								
								<h2 class="font-weight-medium fs--20 mb-0">
									Money Back
								</h2>

								<p class="m-0">
									30-days money back
								</p>

							</div>

						</div>

						<div class="col-6 col-lg-3 p--15 d-flex d-block-xs text-center-xs border-dashed border-light bw--1 bt-0 br-0 bb-0 b--0-lg" data-aos="fade-in" data-aos-delay="250">

							<div class="pl--10 pr--20 fs--50 line-height-1 pt--6">
								<img width="60" height="60" src="demo.files/svg/ecommerce/free-delivery-truck.svg" alt="...">
							</div>

							<div class="my-2">
								
								<h2 class="font-weight-medium fs--20 mb-0">
									Free Shipping
								</h2>

								<p class="m-0">
									Shipping is on us
								</p>

							</div>

						</div>

						<div class="col-6 col-lg-3 p--15 d-flex d-block-xs text-center-xs border-dashed border-light bw--1 bl-0 br-0 bb-0 b--0-lg" data-aos="fade-in" data-aos-delay="350">

							<div class="pl--10 pr--20 fs--50 line-height-1 pt--6">
								<img width="60" height="60" src="demo.files/svg/ecommerce/24-hours-phone-service.svg" alt="...">
							</div>

							<div class="my-2">
								
								<h2 class="font-weight-medium fs--20 mb-0">
									Free Support
								</h2>

								<p class="m-0">
									24/24 available
								</p>

							</div>

						</div>

						<div class="col-6 col-lg-3 p--15 d-flex d-block-xs text-center-xs border-dashed border-light bw--1 bb-0 br-0 b--0-lg" data-aos="fade-in" data-aos-delay="450">

							<div class="pl--10 pr--20 fs--50 line-height-1 pt--6">
								<img width="60" height="60" src="demo.files/svg/ecommerce/handshake.svg" alt="...">
							</div>

							<div class="my-2">
								
								<h2 class="font-weight-medium fs--20 mb-0">
									Best Deal
								</h2>

								<p class="m-0">
									Quality guaranteed
								</p>

							</div>


						</div>

					</div>

				</div>
			</section>
			<!-- /INFO BOX -->




			
			<!-- DESCRIPTION -->
			<section>
				<div class="container">
					<img src="${contextPath }/product/download.do?product_detail_image=${vo.product_detail_image}" >
					<h2 class="font-weight-light mb-4 text-center-xs">
						Description
					</h2>



					<!--
						.article-format class will add some slightly formattings for a good text visuals. 
						This is because most editors are not ready formatted for bootstrap
						The content should come inside this container, as it is from database!
						src/scss/_core/base/_typography.scss
					-->
					<div class="lead article-format">


						<!-- SUBSCRIBE BOX -->
						<div class="w-100 max-w-300 w-100-xs float-end float-none-xs m-0-xs fs--16">
							<div class="bg-gradient-warning text-dark px-4 py-5 mb-4 rounded position-relative">
								
								<div class="position-relative z-index-1 text-center">

									<h3 class="h5 font-weight-medium">
										Offers &amp; Discounts
									</h3>

									<p>
										<b>Do not lose</b> our daily <br>
										special offers &amp; discounts!
									</p>

									<form novalidate class="bs-validate" method="post" action="#">

										<input required placeholder="Email address" type="email" value="" class="form-control text-center mb-3 b-0">

										<button type="submit" class="btn btn-primary btn-block b-0">
											Subscribe Now
										</button>

									</form>


									<!-- share -->
									<div class="px-3 pt-3 pb-1 mt-4">

										<!-- social -->
										<a href="#!" class="btn btn-sm btn-facebook transition-hover-top mb-2 rounded-circle" rel="noopener" aria-label="facebook page">
											<i class="fi fi-social-facebook"></i> 
										</a>

										<a href="#!" class="btn btn-sm btn-twitter transition-hover-top mb-2 rounded-circle" rel="noopener" aria-label="twitter page">
											<i class="fi fi-social-twitter"></i> 
										</a>

										<a href="#!" class="btn btn-sm btn-linkedin transition-hover-top mb-2 rounded-circle" rel="noopener" aria-label="linkedin page">
											<i class="fi fi-social-linkedin"></i> 
										</a>

										<a href="#!" class="btn btn-sm btn-youtube transition-hover-top mb-2 rounded-circle" rel="noopener" aria-label="youtube page">
											<i class="fi fi-social-youtube"></i> 
										</a>

									</div>
									<!-- /share -->

								</div>

								<!-- lines, looks like through a glass -->
								<div class="absolute-full w-100 overflow-hidden opacity-9">
									<img class="img-fluid" width="2000" height="2000" src="assets/images/masks/shape-line-lense.svg" alt="...">
								</div>

								<!-- svg bottom shape -->
								<svg class="position-absolute bottom-0 left-0 right-0" viewBox="0 0 1924 72"><path fill="#ffffff" d="M962 0c-455 1.5-962 72-962 72h1924s-507-70.5-962-72z"></path></svg>

							</div>
						</div>
						<!-- /SUBSCRIBE BOX -->


						<p>A product description is the <b>marketing copy</b> used to describe a product’s value proposition to potential customers. A compelling product description provides customers with details around features, problems it solves and other benefits to help generate a sale.</p>
						<p>Whether your products have a specific function, like a camera, or a personal purpose, like fashion, all products exist to enhance or improve the purchaser’s quality of life in one way or another. As the shopper browses, they instinctively imagine having each product in hand, using it and enjoying it.</p>
						<p>The more powerful the customer’s fantasy of owning the product, the more likely they are to buy it. Therefore, I like to think of product descriptions as storytelling and psychology, incorporating the elements of both prose writing and journalism. A “good” product description will not do. Competition is getting too fierce. It must be great!</p>


						<h3>Key Questions</h3>
						<ul>
							<li><b>Who is this product for?</b> The target audience can be a gender (women or men), an age group (college kids, retirees), a lifestyle demographic (new mothers, car enthusiasts) or some other defined group of people.</li>
							<li><b>What are the product’s basic details?</b> This includes attributes such as dimensions, materials, product features and functions.</li>
							<li><b>Where would someone use this product?</b> Is it meant for indoor or outdoor use, for your car or your home?</li>
							<li><b>When should someone use the product?</b> Is it meant to be used during a certain time of day, seasonally or for a specific type of occasion? Just as important is pointing out if a product can or should be used every day or year-round, as that will speak to its long-term value.</li>
							<li><b>Why is this product useful or better than its competitors?</b> This can be anything from quality to value to features — really think about the benefits that will speak to customers. Also consider how images can complement your product copy.</li>
							<li><b>How does the product work?</b> This may not be necessary for every product, but if you are selling anything with moving parts or electronics, it’s a must-have.</li>
						</ul>

					</div>

					<!-- last update info -->
					<div class="fs--14 font-weight-light mt-1 text-muted">
						Last updated on <time datetime="2019-11-19">Nov 19th, 2019</time>
					</div>

				</div>
			</section>
			<!-- /DESCRIPTION -->





			<!-- SPECIFICATIONS -->
			<section class="border-top">
				<div class="container">


					<h2 class="font-weight-light mb-4 text-center-xs">
						Specifications
					</h2>


					<div class="table-responsive">


						<h3 class="h5">
							Video
						</h3>

						<table class="table table-striped">
							<tbody>

								<tr>
									<td class="text-muted w-50">Display Type</td>
									<td>Flat LCD 55"</td>
								</tr>

								<tr>
									<td class="text-muted w-50">Resolution</td>
									<td>
										1200 x 450 <br> 
										1366 x 768 <br> 
										1920 x 768
									</td>
								</tr>

							</tbody>
						</table>





						<h3 class="h5">
							Connectors
						</h3>

						<table class="table table-striped">
							<tbody>

								<tr>
									<td class="text-muted w-50">Network Connector</td>
									<td>No</td>
								</tr>

								<tr>
									<td class="text-muted w-50">USB</td>
									<td>1</td>
								</tr>

								<tr>
									<td class="text-muted w-50">HDMI</td>
									<td>&ndash;</td>
								</tr>

								<tr>
									<td class="text-muted w-50">PCMCIA</td>
									<td>1</td>
								</tr>

							</tbody>
						</table>


					</div>


					<p class="m-0">
						
						<!-- brand logo -->
						<img height="50" src="demo.files/svg/brands/hms.svg" alt="...">
						
						<span class="d-inline-block pl-2 pr-2"> 
							<a href="#!" class="link-muted">More by HMS</a>
						</span>
					</p>
												
				</div>
			</section>
			<!-- /SPECIFICATIONS -->





			<!-- SUGGESTIONS -->
			<section class="bg-theme-color-light pt-5 pb-5">
				<div class="container">

					<h2 class="h4 mb-0">
						You might also like
					</h2>



					<!-- 

						SWIPER SLIDER 

					-->
					<div class="swiper-container swiper-preloader"
						data-swiper='{
							"slidesPerView": 5,
							"spaceBetween": 10,
							"autoplay": false,
							"loop": false,
							"zoom": false,
							"effect": "slide",
							"freeMode": false,
							"loopedSlides": 1,
							"pagination": { "type": "bullets" },
							"breakpoints": {
								"1200": { "slidesPerView": "4" },
								"1024": { "slidesPerView": "3" },
								"0": 	{ "slidesPerView": "2" }
							}
						}'>
											
						<!--
							
							NOTE: do not use lazy when loop is true!

						-->
						<div class="swiper-wrapper">

							<!-- slider 1 -->
							<div class="swiper-slide">

								<div class="bg-white shadow-xs shadow-md-hover transition-all-ease-250 transition-hover-top rounded show-hover-container p-2 my-5">

									<a href="#!" class="text-decoration-none">

										<figure class="pt--30 pb--30 pl--6 pr--6 m-0 text-center bg-light-radial rounded-top">
											<img src="demo.files/images/unsplash/products/thumb_330/smartwatch_1.jpg" alt="..." class="img-fluid maxx-h-150 bg-suprime opacity--9"> 
										</figure>

										<div class="text-center-xs text-gray-600 py-3">
											
											<!-- .max-height-80  = limited to 2 rows of text -->
											<span class="d-block fs--16 max-h-50 overflow-hidden">
												Product title comes here
											</span>

											<span class="d-block text-danger font-weight-medium fs--16 mt-2">

												<del class="text-muted">$220<sup>00</sup></del> 

												$173<sup>00</sup>
											</span>

										</div>

									</a>

								</div>

							</div>


							<!-- slider 2 -->
							<div class="swiper-slide">

								<div class="bg-white shadow-xs shadow-md-hover transition-all-ease-250 transition-hover-top rounded show-hover-container p-2 my-5">

									<a href="#!" class="text-decoration-none">

										<figure class="pt--30 pb--30 pl--6 pr--6 m-0 text-center bg-light-radial rounded-top">
											<img src="demo.files/images/unsplash/products/thumb_330/smartwatch_2.jpg" alt="..." class="img-fluid maxx-h-150 bg-suprime opacity--9"> 
										</figure>

										<div class="text-center-xs text-gray-600 py-3">
											
											<!-- .max-height-80  = limited to 2 rows of text -->
											<span class="d-block fs--16 max-h-50 overflow-hidden">
												Product title comes here
											</span>

											<span class="d-block text-danger font-weight-medium fs--16 mt-2">

												<del class="text-muted">$220<sup>00</sup></del> 

												$173<sup>00</sup>
											</span>

										</div>

									</a>

								</div>

							</div>


							<!-- slider 3 -->
							<div class="swiper-slide">

								<div class="bg-white shadow-xs shadow-md-hover transition-all-ease-250 transition-hover-top rounded show-hover-container p-2 my-5">

									<a href="#!" class="text-decoration-none">

										<figure class="pt--30 pb--30 pl--6 pr--6 m-0 text-center bg-light-radial rounded-top">
											<img src="demo.files/images/unsplash/products/thumb_330/smartwatch_3.jpg" alt="..." class="img-fluid maxx-h-150 bg-suprime opacity--9"> 
										</figure>

										<div class="text-center-xs text-gray-600 py-3">
											
											<!-- .max-height-80  = limited to 2 rows of text -->
											<span class="d-block fs--16 max-h-50 overflow-hidden">
												Product title comes here
											</span>

											<span class="d-block text-danger font-weight-medium fs--16 mt-2">

												<del class="text-muted">$220<sup>00</sup></del> 

												$173<sup>00</sup>
											</span>

										</div>

									</a>

								</div>

							</div>


							<!-- slider 4 -->
							<div class="swiper-slide">

								<div class="bg-white shadow-xs shadow-md-hover transition-all-ease-250 transition-hover-top rounded show-hover-container p-2 my-5">

									<a href="#!" class="text-decoration-none">

										<figure class="pt--30 pb--30 pl--6 pr--6 m-0 text-center bg-light-radial rounded-top">
											<img src="demo.files/images/unsplash/products/thumb_330/smartwatch_2.jpg" alt="..." class="img-fluid maxx-h-150 bg-suprime opacity--9"> 
										</figure>

										<div class="text-center-xs text-gray-600 py-3">
											
											<!-- .max-height-80  = limited to 2 rows of text -->
											<span class="d-block fs--16 max-h-50 overflow-hidden">
												Product title comes here
											</span>

											<span class="d-block text-danger font-weight-medium fs--16 mt-2">

												<del class="text-muted">$220<sup>00</sup></del> 

												$173<sup>00</sup>
											</span>

										</div>

									</a>

								</div>

							</div>


							<!-- slider 5 -->
							<div class="swiper-slide">

								<div class="bg-white shadow-xs shadow-md-hover transition-all-ease-250 transition-hover-top rounded show-hover-container p-2 my-5">

									<a href="#!" class="text-decoration-none">

										<figure class="pt--30 pb--30 pl--6 pr--6 m-0 text-center bg-light-radial rounded-top">
											<img src="demo.files/images/unsplash/products/thumb_330/smartwatch_3.jpg" alt="..." class="img-fluid maxx-h-150 bg-suprime opacity--9"> 
										</figure>

										<div class="text-center-xs text-gray-600 py-3">
											
											<!-- .max-height-80  = limited to 2 rows of text -->
											<span class="d-block fs--16 max-h-50 overflow-hidden">
												Product title comes here
											</span>

											<span class="d-block text-danger font-weight-medium fs--16 mt-2">

												<del class="text-muted">$220<sup>00</sup></del> 

												$173<sup>00</sup>
											</span>

										</div>

									</a>

								</div>

							</div>

						</div>


						<!-- Bullets -->
						<div class="swiper-pagination"></div>

					</div>
					<!-- /SWIPER SLIDER -->


				</div>
			</section>
			<!-- /SUGGESTIONS -->





			<!-- REVIEWS -->
			<section>
				<div class="container">

					<h2 class="font-weight-light mb-5 text-center-xs">
						Reviews 
						<small class="text-muted fs--16 d-block-xs">(32 reviews)</small>
					</h2>



					<!-- summary -->
					<div class="shadow-xs p-4 mb-5 rounded">
						
						<div class="row my-2">

							<div class="col-md-4 col-sm-6 text-center-xs">

								<h6 class="mb-3">Overall Product Rating</h6>
								<span class="rating-4_5 text-warning fs--30"></span>
								<h6 class="mt-3">4.39 (172 reviews)</h6>

							</div>


							<div class="col-12 d-block d-sm-none my-5"><hr><!-- mobile spacer --></div>


							<div class="col-md-4 hidden-md-down">

								<div class="row mb--6">
									<div class="col-2 p-0">
										<a class="text-decoration-none" href="#"> 5 <i class="mx-1 fi fi-star-full text-warning"></i> </a>
									</div>
									<div class="col">
										<div class="progress mt-1">
											<div class="progress-bar bg-warning" role="progressbar" style="width: 88%" aria-valuenow="88" aria-valuemin="0" aria-valuemax="100">
												<span class="text-align-start d-inline-block px-2">33 votes</span>
											</div>
										</div>
									</div>
								</div>

								<div class="row mb--6">
									<div class="col-2 p-0">
										<a class="text-decoration-none" href="#"> 4 <i class="mx-1 fi fi-star-full text-warning"></i> </a>
									</div>
									<div class="col">
										<div class="progress mt-1">
											<div class="progress-bar bg-warning" role="progressbar" style="width: 34%" aria-valuenow="34" aria-valuemin="0" aria-valuemax="100">
												<span class="text-align-start d-inline-block px-2">16 votes</span>
											</div>
										</div>
									</div>
								</div>

								<div class="row mb--6">
									<div class="col-2 p-0">
										<a class="text-decoration-none" href="#"> 3 <i class="mx-1 fi fi-star-full text-warning"></i> </a>
									</div>
									<div class="col">
										<div class="progress mt-1">
											<div class="progress-bar bg-warning" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
												<span class="text-align-start d-inline-block px-2">12 votes</span>
											</div>
										</div>
									</div>
								</div>

								<div class="row mb--6">
									<div class="col-2 p-0">
										<a class="text-decoration-none" href="#"> 2 <i class="mx-1 fi fi-star-full text-warning"></i> </a>
									</div>
									<div class="col">
										<div class="progress mt-1">
											<div class="progress-bar bg-warning" role="progressbar" style="width: 9%" aria-valuenow="9" aria-valuemin="0" aria-valuemax="100">
												<span class="text-align-start d-inline-block px-2">3 votes</span>
											</div>
										</div>
									</div>
								</div>

								<div class="row mb--6">
									<div class="col-2 p-0">
										<a class="text-decoration-none" href="#"> 1 <i class="mx-1 fi fi-star-full text-warning"></i> </a>
									</div>
									<div class="col">
										<div class="progress mt-1">
											<div class="progress-bar bg-warning" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
												<span class="text-align-start d-inline-block px-2">12 votes</span>
											</div>
										</div>
									</div>
								</div>

							</div>


							<div class="col-md-4 col-sm-6 text-center">
								<h3 class="fs--20 mt-0 mb--25">Already used this product?</h3>
								
								<a href="#" 
									data-href="_ajax/modal_shop_review.html" 
									data-ajax-modal-size="modal-md" 
									data-ajax-modal-backdrop="static" 
									data-ajax-modal-centered="true" 
								 	class="js-ajax-modal btn btn-primary">
									<i class="fi fi-pencil"></i>
									WRITE A REVIEW
								</a>

								<!-- IF NOT LOGGED IN : MODAL PROMPT -->
								<!--
								<a href="#" 
									data-href="_ajax/modal_signin_md.html" 
									data-ajax-modal-size="modal-md" 
									data-ajax-modal-backdrop="static" 
									data-ajax-modal-centered="true" 
								 	class="js-ajax-modal btn btn-primary">
									<i class="fi fi-pencil"></i>
									WRITE A REVIEW
								</a>
								-->

							</div>


							<div class="col-12 hidden-md-up mt--40"><!-- mobile spacer --></div>

						</div>

					</div>
					<!-- /summary -->



					<!-- REVIEW FILTER -->
					<div class="clearfix shadow-xs rounded px-3 py-3 mb-5">

						<h6 class="fs--14 mb-3 font-weight-normal">SORT BY</h6>

						<div class="w--200 w-100-xs float-start float-none-xs mb-1">
							<select class="form-control bs-select">
								<option value="0" data-icon="fi fi-bell-active float-start">New</option>
								<option value="1" data-icon="fi fi-like float-start">Popular</option>
							</select>
						</div>

						<div class="w--150 w-100-xs float-start float-none-xs mb-1">
							<select class="form-control bs-select">
								<option value="0" data-icon="fi fi-star-full text-warning float-start">All</option>
								<option value="5" data-icon="fi fi-star-full text-warning float-start">5 stars</option>
								<option value="4" data-icon="fi fi-star-full text-warning float-start">4 stars</option>
								<option value="3" data-icon="fi fi-star-full text-warning float-start">3 stars</option>
								<option value="2" data-icon="fi fi-star-full text-warning float-start">2 stars</option>
								<option value="1" data-icon="fi fi-star-full text-warning float-start">1 star</option>
							</select>
						</div>

					</div>
					<!-- /REVIEW FILTER -->





					<!-- review 1 -->
					<div class="row mb-5">

						<div class="col-md-2 text-center">

							<!-- avatar -->
							<span class="w--80 h--80 rounded-circle d-inline-block bg-cover" style="background-image:url('demo.files/images/unsplash/team/thumb_330/erik-mclean-06vpBIHmiYc-unsplash.jpg')"></span>

							<div class="mt-2">
								<a href="#">John Doe</a>
								<p class="d-block fs--12 text-muted sow-util-timeago"
									data-time="2019-09-17T23:59:17" 
									data-live="true" 
									data-lang='{
										"seconds" 		: "less than a minute ago",
										"minute" 		: "about a minute ago",
										"minutes" 		: "%d minutes ago",
										"hour" 			: "about an hour ago",
										"hours" 		: "about %d hours ago",
										"day" 			: "a day ago",
										"days" 			: "%d days ago",
										"month" 		: "about a month ago",
										"months" 		: "%d months ago",
										"year" 			: "about a year ago",
										"years" 		: "%d years ago"
									}'>
								</p>
							</div>

						</div>

						<div class="col-md-10">

							<div class="mb-2">
								<h5>This product is awesome!</h5>
								<i class="rating-4_5 text-warning"></i>
							</div>

							<p>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</p>

							<!-- user images -->
							<div class="clearfix">

								<a class="photoswipe" data-photoswipe="gallery-review-id-1" href="demo.files/images/unsplash/products/julian-o-hayon-oW4tZeidfkA-unsplash-min.jpg">
									<img height="80" class="float-start mb-1 rounded lazy" data-src="demo.files/images/unsplash/products/thumb_330/julian-o-hayon-oW4tZeidfkA-unsplash-min.jpg" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="...">
								</a>

								<a class="photoswipe" data-photoswipe="gallery-review-id-1" href="demo.files/images/unsplash/products/julian-o-hayon-sDU_o416hlE-unsplash-min.jpg">
									<img height="80" class="float-start mb-1 rounded lazy" data-src="demo.files/images/unsplash/products/thumb_330/julian-o-hayon-sDU_o416hlE-unsplash-min.jpg" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="...">
								</a>

								<a class="photoswipe" data-photoswipe="gallery-review-id-1" href="demo.files/images/unsplash/products/julian-o-hayon-w4znns7NTA0-unsplash-min.jpg">
									<img height="80" class="float-start mb-1 rounded lazy" data-src="demo.files/images/unsplash/products/thumb_330/julian-o-hayon-w4znns7NTA0-unsplash-min.jpg" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="...">
								</a>

							</div>
							<!-- /user images -->

							<!-- review options -->
							<ul class="list-inline my-4">
								<li class="list-inline-item d-block-xs m-0-xs">

									<!-- 
										NOTE: working ajax button! Check console for debug 
										No security implemented to block multiple votes
										So on page refresh, should be handled by backend!
									-->
									<a href="#" class="btn-toggle btn btn-light py-1 px-2 mb-1 fs--14 d-block-xs text-align-start"
										data-toggle-ajax-url-on="demo.files/php/demo.ajax_request.php?review_id=1&amp;vote=1">
										
										<span class="group-icon">
											<i class="fi fi-like"></i>
											<i class="fi fi-like text-primary"></i>
										</span>

										<span>LIKE</span>
									</a>

								</li>

								<li class="list-inline-item d-block-xs m-0-xs">
									<a class="btn btn-light btn-toggle py-1 px-2 mb-1 fs--14 d-block-xs text-align-start" href="#replies-review-id-1" data-toggle="collapse">
										<span class="group-icon">
											<i class="fi fi-chat"></i> 
											<i class="fi fi-close"></i> 
										</span>

										<span class="group-icon">
											<i>VIEW REPLIES</i>
											<i>HIDE REPLIES</i>
										</span>

										(21)
									</a>
								</li>

								<li class="list-inline-item d-block-xs m-0-xs">

									<!-- 

										Replies are using an ajax modal!

									-->
									<a href="#" class="js-ajax-modal btn btn-light font-weight-medium py-1 px-2 mb-1 fs--14 d-block-xs text-align-start" 
										data-href="_ajax/modal_shop_review_reply.html?review_id=1"
										data-ajax-modal-size="modal-md"
										data-ajax-modal-centered="false"
										data-ajax-modal-backdrop="static">
										<i class="fi fi-plus"></i> 
										REPLY
									</a>

									<!-- IF NOT LOGGED IN : MODAL PROMPT -->
									<!--
									<a href="#" class="js-ajax-modal btn btn-light font-weight-medium py-1 px-2 mb-1 fs--14 d-block-xs text-align-start" 
										data-href="_ajax/modal_signin_md.html"
										data-ajax-modal-size="modal-md"
										data-ajax-modal-centered="false"
										data-ajax-modal-backdrop="static">
										<i class="fi fi-plus"></i> 
										REPLY
									</a>
									-->

								</li>
							</ul>
							<!-- /review options -->


							<!-- replies -->
							<div id="replies-review-id-1" class="collapse">

								<!-- reply 1 -->
								<div class="row">

									<div class="col-lg-1 col-sm-2 col-3">
										<span class="w--60 h--60 rounded-circle d-inline-block bg-cover" style="background-image:url('demo.files/images/unsplash/team/thumb_330/erik-mclean-06vpBIHmiYc-unsplash.jpg')"></span>
									</div>

									<div class="col-lg-11 col-sm-10 col-9">
										<p>
											Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
										</p>

										<p class="d-block fs--12 text-muted">By <a href="#">John Doe</a> on June 29, 2018</p>
									</div>

								</div>
								<!-- /reply 1 -->

								<!-- reply 2 -->
								<div class="row">

									<div class="col-lg-1 col-sm-2 col-3">
										<span data-initials="John Doe" data-assign-color="true" class="sow-util-initials bg-light h5 m-0 w--60 h--60 rounded-circle d-inline-flex justify-content-center align-items-center">
											<i class="fi fi-circle-spin fi-spin"></i>
										</span>
									</div>

									<div class="col-lg-11 col-sm-10 col-9">
										<p>
											Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
										</p>

										<p class="d-block fs--12 text-muted">By <a href="#">John Doe</a> on June 29, 2018</p>
									</div>

								</div>
								<!-- /reply 2 -->



								<!-- more replies : collapsed -->
								<div id="reply_more_review_id_1" class="collapse">

									<!-- reply 3 -->
									<div class="row">

										<div class="col-lg-1 col-sm-2 col-3">
											<span class="w--60 h--60 rounded-circle d-inline-block bg-cover" style="background-image:url('demo.files/images/unsplash/team/thumb_330/erik-mclean-06vpBIHmiYc-unsplash.jpg')"></span>
										</div>

										<div class="col-lg-11 col-sm-10 col-9">
											<p>
												Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
											</p>

											<p class="d-block fs--12 text-muted">By <a href="#">John Doe</a> on June 29, 2018</p>
										</div>

									</div>
									<!-- /reply 3 -->

								</div>
								<!-- /more replies : collapsed -->



								<a href="#reply_more_review_id_1" data-toggle="collapse" class="fs--13 btn-toggle text-decoration-none">
									<span class="group-icon">
										<i>VIEW MORE (+1)</i>
										<i>VIEW LESS</i>
									</span>
								</a>

							</div>
							<!-- /replies -->


						</div>

					</div>
					<!-- /review 1 -->




					<!-- review 2 -->
					<div class="row mb-5">

						<div class="col-md-2 text-center">

							<!-- avatar -->
							<span data-initials="Felicia Doe" data-assign-color="true" class="sow-util-initials bg-light h5 m-0 w--80 h--80 rounded-circle d-inline-flex justify-content-center align-items-center">
								<i class="fi fi-circle-spin fi-spin"></i>
							</span>

							<div class="mt-2">
								<a href="#">Felicia Doe</a>
								<p class="d-block fs--12 text-muted sow-util-timeago"
									data-time="2019-04-17T23:59:17" 
									data-live="true" 
									data-lang='{
										"seconds" 		: "less than a minute ago",
										"minute" 		: "about a minute ago",
										"minutes" 		: "%d minutes ago",
										"hour" 			: "about an hour ago",
										"hours" 		: "about %d hours ago",
										"day" 			: "a day ago",
										"days" 			: "%d days ago",
										"month" 		: "about a month ago",
										"months" 		: "%d months ago",
										"year" 			: "about a year ago",
										"years" 		: "%d years ago"
									}'>
								</p>
							</div>

						</div>

						<div class="col-md-10">

							<div class="mb-2">
								<h5>Lorem Ipsum Dolor</h5>
								<i class="rating-3 text-warning"></i>
							</div>

							<p>
								Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
							</p>

							<!-- review options -->
							<ul class="list-inline my-4">
								<li class="list-inline-item d-block-xs m-0-xs">

									<!-- 
										NOTE: working ajax button! Check console for debug 
										No security implemented to block multiple votes
										So on page refresh, should be handled by backend!
									-->
									<a href="#" class="btn-toggle btn btn-light py-1 px-2 mb-1 fs--14 d-block-xs text-align-start"
										data-toggle-ajax-url-on="demo.files/php/demo.ajax_request.php?review_id=1&amp;vote=1">
										
										<span class="group-icon">
											<i class="fi fi-like"></i>
											<i class="fi fi-like text-primary"></i>
										</span>

										<span>LIKE</span>
									</a>

								</li>

								<li class="list-inline-item d-block-xs m-0-xs">

									<!-- 

										Replies are using an ajax modal!

									-->
									<a href="#" class="js-ajax-modal btn btn-light font-weight-medium py-1 px-2 mb-1 fs--14 d-block-xs text-align-start" 
										data-href="_ajax/modal_shop_review_reply.html?review_id=1"
										data-ajax-modal-size="modal-md"
										data-ajax-modal-centered="false"
										data-ajax-modal-backdrop="static">
										<i class="fi fi-plus"></i> 
										REPLY
									</a>

									<!-- IF NOT LOGGED IN : MODAL PROMPT -->
									<!--
									<a href="#" class="js-ajax-modal btn btn-light font-weight-medium py-1 px-2 mb-1 fs--14 d-block-xs text-align-start" 
										data-href="_ajax/modal_signin_md.html"
										data-ajax-modal-size="modal-md"
										data-ajax-modal-centered="false"
										data-ajax-modal-backdrop="static">
										<i class="fi fi-plus"></i> 
										REPLY
									</a>
									-->

								</li>
							</ul>
							<!-- /review options -->


						</div>

					</div>
					<!-- /review 2 -->




					<!-- PAGINATION -->
					<div class="text-center clearfix">

						<!-- pagination : center -->
						<nav aria-label="pagination">
							<ul class="pagination pagination-pill justify-content-center">

								<li class="page-item disabled">
									<a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
								</li>
								
								<li class="page-item active" aria-current="page">
									<a class="page-link" href="#">1 <span class="sr-only">(current)</span></a>
								</li>
								
								<li class="page-item">
									<a class="page-link" href="#">2</a>
								</li>
								
								<li class="page-item">
									<a class="page-link" href="#">3</a>
								</li>
								
								<li class="page-item">
									<a class="page-link" href="#">Next</a>
								</li>

							</ul>
						</nav>
						<!-- /pagination : center -->

					</div>
					<!-- /PAGINATION -->

				</div>
			</section>
			<!-- /REVIEWS -->





			<!-- INFO BOX -->
			<section class="p-0 bg-warning-soft">
				<div class="container py-4">

					<div class="row">

						<div class="col-6 col-lg-3 p--15 d-flex d-block-xs text-center-xs" data-aos="fade-in" data-aos-delay="150">

							<div class="pl--10 pr--20 fs--50 line-height-1 pt--6">
								<img width="60" height="60" src="demo.files/svg/ecommerce/money_bag.svg" alt="...">
							</div>

							<div class="my-2">
								
								<h2 class="font-weight-medium fs--20 mb-0">
									Money Back
								</h2>

								<p class="m-0">
									30-days money back
								</p>

							</div>

						</div>

						<div class="col-6 col-lg-3 p--15 d-flex d-block-xs text-center-xs border-dashed border-light bw--1 bt-0 br-0 bb-0 b--0-lg" data-aos="fade-in" data-aos-delay="250">

							<div class="pl--10 pr--20 fs--50 line-height-1 pt--6">
								<img width="60" height="60" src="demo.files/svg/ecommerce/free-delivery-truck.svg" alt="...">
							</div>

							<div class="my-2">
								
								<h2 class="font-weight-medium fs--20 mb-0">
									Free Shipping
								</h2>

								<p class="m-0">
									Shipping is on us
								</p>

							</div>

						</div>

						<div class="col-6 col-lg-3 p--15 d-flex d-block-xs text-center-xs border-dashed border-light bw--1 bl-0 br-0 bb-0 b--0-lg" data-aos="fade-in" data-aos-delay="350">

							<div class="pl--10 pr--20 fs--50 line-height-1 pt--6">
								<img width="60" height="60" src="demo.files/svg/ecommerce/24-hours-phone-service.svg" alt="...">
							</div>

							<div class="my-2">
								
								<h2 class="font-weight-medium fs--20 mb-0">
									Free Support
								</h2>

								<p class="m-0">
									24/24 available
								</p>

							</div>

						</div>

						<div class="col-6 col-lg-3 p--15 d-flex d-block-xs text-center-xs border-dashed border-light bw--1 bb-0 br-0 b--0-lg" data-aos="fade-in" data-aos-delay="450">

							<div class="pl--10 pr--20 fs--50 line-height-1 pt--6">
								<img width="60" height="60" src="demo.files/svg/ecommerce/handshake.svg" alt="...">
							</div>

							<div class="my-2">
								
								<h2 class="font-weight-medium fs--20 mb-0">
									Best Deal
								</h2>

								<p class="m-0">
									Quality guaranteed
								</p>

							</div>


						</div>

					</div>

				</div>
			</section>
			<!-- /INFO BOX -->





			<!-- Footer -->
			<footer id="footer" class="shadow-xs">
				
				<div class="container py-5">

					<div class="row">

						<div class="col-12 col-lg-8">

							<div class="row mb-3">

								<!-- Col 1 -->
								<div class="col-12 col-lg-4 mb-1">

									<!-- mobile only : SOW Toggle Button -->
									<button class="clearfix btn btn-toggle btn-sm btn-block text-align-left shadow-md border rounded mb-1 d-block d-lg-none" 
											data-target="#footer_c1" 
											data-toggle-container-class="d-none d-sm-block bg-white shadow-md border animate-fadein rounded p-3">
										
										<span class="group-icon p-2 float-start">
											<i class="fi fi-bars-2"></i>
											<i class="fi fi-close"></i>
										</span>

										<span class="h5 py-2 m-0 float-start">
											Orders
										</span>
									</button>

									<!-- desktop only -->
									<h3 class="h5 py-3 m-0 d-none d-lg-block">
										Orders
									</h3>


									<!-- navigation -->
									<ul id="footer_c1" class="nav flex-column d-none d-lg-block">
										<li class="list-item">
											<a class="d-block py-1" href="#!">My Account</a>
										</li>

										<li class="list-item">
											<a class="d-block py-1" href="#!">How do I order?</a>
										</li>

										<li class="list-item">
											<a class="d-block py-1" href="#!">Payment Methods</a>
										</li>
									</ul>

								</div>

								<!-- Col 2 -->
								<div class="col-12 col-lg-4 mb-1">

									<!-- mobile only : SOW Toggle Button -->
									<button class="clearfix btn btn-toggle btn-sm btn-block text-align-left shadow-md border rounded mb-1 d-block d-lg-none" 
											data-target="#footer_c2" 
											data-toggle-container-class="d-none d-sm-block bg-white shadow-md border animate-fadein rounded p-3">
										
										<span class="group-icon p-2 float-start">
											<i class="fi fi-bars-2"></i>
											<i class="fi fi-close"></i>
										</span>

										<span class="h5 py-2 m-0 float-start">
											Explore
										</span>
									</button>

									<!-- desktop only -->
									<h3 class="h5 py-3 m-0 d-none d-lg-block">
										Explore
									</h3>


									<!-- navigation -->
									<ul id="footer_c2" class="nav flex-column d-none d-lg-block">
										<li class="list-item">
											<a class="d-block py-1" href="blog-page-sidebar.html">Smarty Blog</a>
										</li>

										<li class="list-item">
											<a class="d-block py-1" href="#!">Shipping</a>
										</li>

										<li class="list-item">
											<a class="d-block py-1" href="#!">Cookies</a>
										</li>
									</ul>


								</div>

								<!-- Col 3 -->
								<div class="col-12 col-lg-4 mb-1">

									<!-- mobile only : SOW Toggle Button-->
									<button class="clearfix btn btn-toggle btn-sm btn-block text-align-left shadow-md border rounded mb-1 d-block d-lg-none" 
											data-target="#footer_c3" 
											data-toggle-container-class="d-none d-sm-block bg-white shadow-md border animate-fadein rounded p-3">
										
										<span class="group-icon p-2 float-start">
											<i class="fi fi-bars-2"></i>
											<i class="fi fi-close"></i>
										</span>

										<span class="h5 py-2 m-0 float-start">
											Support
										</span>
										
									</button>

									<!-- desktop only -->
									<h3 class="h5 py-3 m-0 d-none d-lg-block">
										Support
									</h3>


									<!-- navigation -->
									<ul id="footer_c3" class="nav flex-column d-none d-lg-block">
										<li class="list-item">
											<a class="d-block py-1" href="#!">Refund Policy</a>
										</li>

										<li class="list-item">
											<a class="d-block py-1" href="#!">Privacy Policy</a>
										</li>

										<li class="list-item">
											<a class="d-block py-1" href="#!">Terms &amp; Conditions</a>
										</li>
									</ul>

								</div>

							</div>

						</div>


						<div class="col">

							<h5 class="text-primary my-3">
								Follow us
							</h5>

							<form novalidate class="bs-validate" method="post" action="#">

								<div class="input-group mb-3">

									<input required type="email" name="subscribe_email" value="" class="form-control" placeholder="email address" aria-label="email address">
									
									<div class="input-group-append">
										<button class="btn btn-primary">Subscribe</button>
									</div>

								</div>

							</form>

						</div>

					</div>

				</div>


				<div class="border-top">
					<div class="container text-center py-5">

						<!-- logo -->
						<span class="h--70 d-inline-flex align-items-center">
							<img src="assets/images/logo/logo_dark.svg" width="110" height="70" alt="...">
						</span>

						<p class="m-0 text-gray-500 fs--14">

							&copy; My Company Inc. 2015 – 2019. 

							<br>

							All Rights Reserved.
						
						</p>


						<div class="mt-5"> 

							<!-- social -->
							<a href="#!" class="btn btn-sm btn-light transition-hover-top mb-2 rounded-circle" rel="noopener" aria-label="facebook page">
								<i class="fi fi-social-facebook"></i> 
							</a>

							<a href="#!" class="btn btn-sm btn-light transition-hover-top mb-2 rounded-circle" rel="noopener" aria-label="twitter page">
								<i class="fi fi-social-twitter"></i> 
							</a>

							<a href="#!" class="btn btn-sm btn-light transition-hover-top mb-2 rounded-circle" rel="noopener" aria-label="linkedin page">
								<i class="fi fi-social-linkedin"></i> 
							</a>

							<a href="#!" class="btn btn-sm btn-light transition-hover-top mb-2 rounded-circle" rel="noopener" aria-label="youtube page">
								<i class="fi fi-social-youtube"></i> 
							</a>

						

							<!-- credit cards -->
							<ul class="list-inline mb-0 mt-2"> 

								<li class="list-inline-item m-0"> 
									<img width="38" height="24" class="lazy" data-src="assets/images/credit_card/visa.svg" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="visa credit card icon">
								</li> 

								<li class="list-inline-item m-0"> 
									<img width="38" height="24" class="lazy" data-src="assets/images/credit_card/mastercard.svg" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="mastercard credit card icon">
								</li> 

								<li class="list-inline-item m-0"> 
									<img width="38" height="24" class="lazy" data-src="assets/images/credit_card/discover.svg" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="discover credit card icon">
								</li>

								<li class="list-inline-item m-0"> 
									<img width="38" height="24" class="lazy" data-src="assets/images/credit_card/amazon.svg" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="amazon credit card icon">
								</li>
								
								<li class="list-inline-item m-0"> 
									<img width="38" height="24" class="lazy" data-src="assets/images/credit_card/paypal.svg" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="paypal credit card icon">
								</li>

								<li class="list-inline-item m-0"> 
									<img width="38" height="24" class="lazy" data-src="assets/images/credit_card/skrill.svg" src="data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==" alt="skrill credit card icon">
								</li>

								<!-- more vendors on assets/images/credit_card/ -->

							</ul>

						</div>


					</div>
				</div>

			</footer>
			<!-- /Footer -->


		</div><!-- /#wrapper -->

		<script src="assets/js/core.min.js"></script>
		