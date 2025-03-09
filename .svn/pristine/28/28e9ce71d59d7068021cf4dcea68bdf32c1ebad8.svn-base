<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/layout/header.jsp"%>


<div class=".container-nav    ">
	<div class="row " style="border-bottom: 1px solid #e9ecef;">
		<div class="col-auto col-md-10  ">
			<nav aria-alabel="breadcrumb " class="second ">
				<ol class="breadcrumb indigo lighten-6 first  px-md-4"
					style="background-color: #ffffff00">
					<li class="breadcrumb-item font-weight-bold "><a
						class="black-text inactive text-uppercase  "
						href="<c:url value='/AccountType/index' />"><span
							class="mr-md-3 mr-2">إدارة المنتجات</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase"
						href="<c:url value='/AccountType/index' />"><span
							class="mr-md-3 mr-2">استعراض منتجات الحسابات</span></a><i
						class="fe fe-angle-double-right text-uppercase "
						aria-hidden="true"></i></li>
				</ol>
			</nav>

		</div>
	</div>
</div>
<div class="container-fluid">

	<div class="row justify-content-center">
		<div class="col-12 ">
		
		<div class="row mt-3">
				<div class="col-md-10">
					<a href="<c:url value='/AccountType/create' />">
						<button type="button" id="addRow"
							class="btn mt-1 mb-0 btn-outline-primary">
							إضافة منتج حساب <i class="fe fe-plus-circle" style=""></i>
						</button>
					</a>
				</div>
				<div class="col-md-2"
					style="text-align: left; align-content: center">

					<span class="date"> <%@ taglib prefix="fmt"
							uri="http://java.sun.com/jsp/jstl/fmt"%> <jsp:useBean
							id="now" class="java.util.Date" /> <fmt:formatDate
							value="${now}" pattern="yyyy-MM-dd" />
					</span>
				</div>
			</div>


			<!-- .card -->
			<!-- .card -->
			<div class="card my-4">
				<div class="card-header">
					<strong> استعراض المنتجات </strong>
				</div>
				
				<div class="card-body">
					<div id="nonIndiv" >

						<div class="row ">

							<div class="col-6">
								<div class="input-group mb-3">
									<div class="input-group-prepend">
										<span class="input-group-text" id="basic-addon1">اسم المنتج باللغة الأساسية</span>
									</div>
									<input type="text" class="form-control" placeholder=""
										name="nameA" aria-label="nameA" value="${nameA }"
										id="nameA" aria-describedby="basic-addon1">
								</div>

							</div>

							<div class="col-2">
								<button onclick="showHideElement()" type="button"
									class="btn mb-2 btn-secondary">
									<span id="icon_test" class="fe fe-chevrons-down fe-16"><span>
								</button>
							</div>

							<div class="col-2">

								<button type="button" class="btn mb-2 btn-primary"
									onclick="getSearchAccountType(0)">&nbsp &nbsp
									بحث &nbsp &nbsp</button>
							</div>


						</div>

						<!-- non customer individual search criteria  -->

						<div class="container-div row">
							<div class="col-md-6 ">
								<div class="input-group mb-3 trans">
									<div class="input-group-prepend">
										<span class="input-group-text ">الاسم باللغة الثانوية &nbsp</i></span>
									</div>
									<input type="text" class="form-control" placeholder=""
										name="nameB" aria-label="nameB" id="nameB" value="${nameB }"
										aria-describedby="basic-addon1">
								</div>
							</div>

							<div class="col-md-6 ">
								<div class="input-group mb-3 trans">
									<div class="input-group-prepend">
										<span class="input-group-text ">تصنيف المنتج &nbsp</i></span>
									</div> <select class="form-control select2" 
												id="categoryId" name="accountType.categoryId">
												<option value="" selected>اختيار المنتج</option>
												<optgroup label="اختيار المنتج المطلوب">
													<c:forEach var="ind" items="${aTypeCategories}">

														<c:if
															test="${accountTypeForm.accountType.categoryId.id==ind.id}">
															<option value="${ind.id}" selected>${ind.nameA}</option>
														</c:if>
														<c:if
															test="${accountTypeForm.accountType.categoryId.id!=ind.id}">
															<option value="${ind.id}">${ind.nameA}</option>
														</c:if>


													</c:forEach>
												</optgroup>

											</select>
										</div>

						</div>

					</div>
					<div class="row my-4">
						<!-- Small table -->
						<div class="col-md-12">
									<!-- table -->
									<table class="table datatables" id="dataTable-1">
										<thead>
											<tr>
												<th>#</th>
												<th>اسم المنتج باللغة الأساسية</th>
												<th>اسم المنتج باللغة الثانوية</th>
												<th>رمز المنتج</th>
												<th>الحالة</th>
												<th>تفعيل/إلغاء تفعيل</th> 
												<th>العمليات</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="accountType" items="${allaccTypes}">
												<tr>
													<td>${accountType.id}</td>
													<td>${accountType.nameA}</td>
													<td>${accountType.nameB}</td>
													<td>${accountType.categoryName}</td>
												 <td>
												<c:if test="${accountType.isEnabled == 0 }">
														<span class="dot dot-lg bg-danger mr-1"></span>
																	 غير فعالة
																		</span>
													</c:if> <c:if test="${accountType.isEnabled == 1 }">
														<span class="dot dot-lg bg-success mr-2"></span>
																		&nbsp فعالة &nbsp</span>
													</c:if>
												</td>
												<td>
													<div class="custom-control custom-switch"
														style="margin-right: 80px;">
														<c:if test="${accountType.isEnabled == 0 }">
															<input type="checkbox" class="custom-control-input"
																id="switch_${accountType.id}"
																onclick="window.location.href='${pageContext.request.contextPath}/AccountType/toggle?id=${accountType.id}&enable=1'">

														</c:if>
													 	<c:if test="${accountType.isEnabled == 1}">
															<input type="checkbox" class="custom-control-input"
																id="switch_${accountType.id}" checked
																onclick="window.location.href='${pageContext.request.contextPath}/AccountType/toggle?id=${accountType.id}&enable=0'">


														</c:if>
														<label class="custom-control-label"
															for="switch_${accountType.id}"></label>
													</div>
												</td> 
												
												<td>
													
													<a
														href="<c:url value='/AccountType/details?id=${accountType.id }' />">
															<i class="fe fe-info icon-info"></i>

													</a>
													&nbsp 
													<a
														href="<c:url value='/AccountType/create?id=${accountType.id }' />">
															<i class="fe fe-edit icon-edit"></i>

													</a>
													
													
													</td>

												</tr>

											</c:forEach>

										</tbody>
									</table>

								</div>
								
						</div>
						</div>
						</div>
						</div>
						

						<!-- simple table -->
					</div>
					
	 			<jsp:include page="/WEB-INF/jsp/layout/pagination.jsp">
					<jsp:param name="controller_url" value="/AccountType/index" />

				</jsp:include> 
				<!-- .card-body -->
			</div>

			<!-- end section -->

			<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>
			<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
			<script>
				$(document).ready(function() {

					$('#AccountType-elements').addClass("show");
					$('#AccountType').addClass("active-color");
					$('#AccType').addClass("active-color");

				});
				$('.input-money').mask("#.##0,00", {
					reverse : true
				});

				(function() {
					'use strict';
					window.addEventListener('load', function() {
						// Fetch all the forms we want to apply custom Bootstrap validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
				})();
				
				function showHideElement() {

					var container = $('.container-div');

					if (!container.hasClass('active')) {
						container.addClass('show').outerWidth();
						container.addClass('active');
						document.getElementById("icon_test").classList
								.remove('fe-chevrons-down');
						document.getElementById("icon_test").classList
								.add('fe-chevrons-up');

					} else {
						container.removeClass('active').one(
								'transitionend',
								function() {
									container.removeClass('show');

									document.getElementById("icon_test").classList
											.remove('fe-chevrons-up');
									document.getElementById("icon_test").classList
											.add('fe-chevrons-down');
								});
					}

				}
				
				var c = "${categoryId}";
				var n = "${nameB}";
				var na = "${nameA}";
				
				if(c!="" || n!=""){
					showHideElement();
					
					$('#categoryId').val(c);
					$('#categoryId').trigger('change');
				}
				
				var li = "${pageInfo.totalElements}";
				var t = (c != "" || n!="" || na!="" );
				if (li == 0 && t) {
					callConfirmAlert("x","المنتج غير موجود","الرجاء التحقق من صحة المعلومات")
				//	document.getElementById("addNonCust").style.display = 'block';
				}
				
				function getSearchAccountType(page) {
					
					    var nameA = document.getElementById("nameA").value;
					    var nameB = document.getElementById("nameB").value;
					    var categoryId = document.getElementById("categoryId").value;
					    
					    if (nameA == "" && nameB == "" && categoryId == "") {
					        callConfirmAlert("search", "لا يمكن إجراء عملية البحث", "الرجاء إدخال قيمة واحدة على الأقل");
					    } else {
					    	window.location.href = "${pageContext.request.contextPath }/AccountType/index?nameA="+nameA+"&nameB="+nameB+"&categoryId="+categoryId;
					    	
					    }
				}

				
			</script>
			
			
			<script>
				function navigateToEditPage(id) {

					window.location.href = "${pageContext.request.contextPath }/AccountType/create?id="+id;

				}
			</script>
			
			<script>
				function navigateToDetailPage(id) {
					window.location.href = "${pageContext.request.contextPath }/AccountType/details?id="+ id;
				
				}
			</script>