<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>

<%@include file="/WEB-INF/jsp/layout/header.jsp"%>

<div class=".container-nav    ">
	<div class="row " style="border-bottom: 1px solid #e9ecef;">
		<div class="col-auto col-md-10  ">
			<nav aria-label="breadcrumb " class="second ">
				<ol class="breadcrumb indigo lighten-6 first  px-md-4"
					style="background-color: #ffffff00">
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase  "
						href="<c:url value='/subpoena/index' />"><span
							class="mr-md-3 mr-2"> طلبات الاستدعاء</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase  "
						href="<c:url value='/subpoena/index' />"><span
							class="mr-md-3 mr-2">استعراض طلبات الاستدعاء</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>

					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>
							<c:if test="${ subpoenaRequestDetails.id==null}">
							إضافة تفاصيل لطلب الاستدعاء 
							</c:if>
							
							<c:if test="${ subpoenaRequestDetails.id!=null}">
							تعديل تفاصيل لطلب الاستدعاء 
							</c:if>
								</span></a></li>
				</ol>
			</nav>
		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="row justify-content-center">
		<div class="col-12 ">

			<div class="row mt-3">
				<div class="col-md-10"></div>
				<div class="col-md-2"
					style="text-align: left; align-content: center">

					<span class="date"> <%@ taglib prefix="fmt"
							uri="http://java.sun.com/jsp/jstl/fmt"%> <jsp:useBean
							id="now" class="java.util.Date" /> <fmt:formatDate
							value="${now}" pattern="yyyy-MM-dd" />
					</span>
				</div>
			</div>
			<p class="card-text"></p>
			<div class="card shadow">
				<div class="card-header">
					<c:if test="${ subpoenaRequestDetails.id==null}">
						<strong class="card-title"> إضافة تفاصيل طلب الاستدعاء </strong>
					</c:if>
					<c:if test="${ subpoenaRequestDetails.id!=null}">
						
							
								<strong> تعديل تفاصيل طلب الاستدعاء -<span style="color: #d1a923">
							${subpoenaRequestDetails.nameA }</span>
					</strong>
					</c:if>
				</div>
				<div class="card-body">


					<!-- non customer individual search criteria  -->


					<form class="needs-validation" novalidate method="post"
						action="${pageContext.request.contextPath}/subpoena/save"
						modelAttribute="subpoenaRequestDetails">


						<input id="id" name="id" type="hidden" class="form-control "
							value="${subpoenaRequestDetails.id}">


	<input id="isDeleted" name="isDeleted" type="hidden" class="form-control "
							value="${subpoenaRequestDetails.isDeleted}">

						<div class="row">

							<div class="form-group col-md-6">
								<label for="indexSubpoenaId"> نوع طلب الاستدعاء *</label> <select
									required class="form-control select2" id="indexSubpoenaId"
									name="indexSubpoenaId">
									<option value="" hidden>إختر نوع طلب الاستدعاء</option>

									<c:forEach var="ind" items="${indSubpoenaRequests}">
										<c:if
											test="${subpoenaRequestDetails.id!=null && subpoenaRequestDetails.subpoenaRequest.indSubpoenaRequest.id==ind.id}">
											<option selected value="${ind.id}">${ind.nameA}</option>
										</c:if>
										<c:if
											test="${subpoenaRequestDetails.id==null || subpoenaRequestDetails.subpoenaRequest.indSubpoenaRequest.id!=ind.id}">
											<option value="${ind.id}">${ind.nameA}</option>
										</c:if>
									</c:forEach>


								</select>
								<div class="invalid-feedback">هذا الحقل مطلوب</div>


							</div>


							<div class="form-group col-md-6">
								<label for="accountTypeId"> طلب الاستدعاء *</label> <select
									required class="form-control select2" id="subpoenaRequest"
									name="subpoenaRequest">
									<option value="" hidden>إختر طلب الاستدعاء</option>
	
									
									
									<c:forEach var="ind" items="${subpoenaRequesList}">
										<c:if
											test="${subpoenaRequestDetails.id!=null && subpoenaRequestDetails.subpoenaRequest.id==ind.id}">
											<option selected value="${ind.id}">${ind.nameA}</option>
										</c:if>
										<c:if
											test="${subpoenaRequestDetails.id==null || subpoenaRequestDetails.subpoenaRequest.id!=ind.id}">
											<option value="${ind.id}">${ind.nameA}</option>
										</c:if>
									</c:forEach>

								</select>
								<div class="invalid-feedback">هذا الحقل مطلوب</div>


							</div>
							<div class="form-group  col-md-6">
								<label for="purpose">مقدمة الطلب</label>
								<textarea class="form-control" name="intro" id="intro"
									rows="4">${subpoenaRequestDetails.intro}</textarea>
							</div>

							<div class="form-group  col-md-6">
								<label for="purpose">بيان الطلب</label>
								<textarea class="form-control" name="content" id="content"
									rows="4">${subpoenaRequestDetails.content}</textarea>
							</div>

						</div>

						<hr>
						<h6 class="card-text" style="color: #d1a923">ميزات الطلب :</h6>
						<div class="row">

							<div class="form-group col-md-6">
								<label for="accountNumFlag">يحتاج الى رقم حساب العميل *</label><label
									style="display: none" class="error" for="accountNumFlag">هذا
									الحقل مطلوب.</label>
								<div
									class="custom-control custom-checkbox form-control no-border">
									<c:if
										test="${subpoenaRequestDetails.id!=null && subpoenaRequestDetails.accountNumFlag==1}">
										<input type="checkbox" value="1" checked
											class="custom-control-input form-control" id="accountNumFlag"
											name="accountNumFlag">
									</c:if>
									<c:if
										test="${customerAccount.id==null || customerAccount.accountNumFlag==0}">
										<input type="checkbox" value="1"
											class="custom-control-input form-control" id="accountNumFlag"
											name="accountNumFlag">
									</c:if>
									<input type='hidden' value='0' name='accountNumFlag'> <label
										class="custom-control-label" for="accountNumFlag">اختر
										فيما إذا كان طلب الاستدعاء يحتاج لرقم حساب العميل ام لا </label>
								</div>
							</div>


							<div class="form-group col-md-6">
								<label for="branchFlag">يحتاج الى الفرع *</label><label
									style="display: none" class="error" for="withdrawForbiddenFlag">هذا
									الحقل مطلوب.</label>
								<div
									class="custom-control custom-checkbox form-control no-border">
									<c:if
										test="${subpoenaRequestDetails.id!=null && subpoenaRequestDetails.branchFlag==1}">
										<input type="checkbox" value="1" checked
											class="custom-control-input form-control" id="branchFlag"
											name="branchFlag">
									</c:if>
									<c:if
										test="${subpoenaRequestDetails.id==null || subpoenaRequestDetails.branchFlag==0}">
										<input type="checkbox" value="1"
											class="custom-control-input form-control" id="branchFlag"
											name="branchFlag">
									</c:if>
									<input type='hidden' value='0' name='branchFlag'> <label
										class="custom-control-label" for="branchFlag">اختر
										فيما إذا كان طلب الاستدعاء يحتاج للفرع ام لا </label>
								</div>
							</div>


							<div class="form-group col-md-6">
								<label for="customerFlag">يحتاج الى العميل *</label><label
									style="display: none" class="error" for="customerFlag">هذا
									الحقل مطلوب.</label>
								<div
									class="custom-control custom-checkbox form-control no-border">
									<c:if
										test="${subpoenaRequestDetails.id!=null && subpoenaRequestDetails.customerFlag==1}">
										<input type="checkbox" value="1" checked
											class="custom-control-input form-control" id="customerFlag"
											name="customerFlag">
									</c:if>
									<c:if
										test="${subpoenaRequestDetails.id==null || subpoenaRequestDetails.customerFlag==0}">
										<input type="checkbox" value="1"
											class="custom-control-input form-control" id="customerFlag"
											name="customerFlag">
									</c:if>
									<input type='hidden' value='0' name='customerFlag'> <label
										class="custom-control-label" for="customerFlag">اختر
										فيما إذا كان طلب الاستدعاء يحتاج للعميل ام لا </label>
								</div>
							</div>
						</div>


						<div style="direction: ltr; display: flex">

							<button class="btn btn-primary" type="submit"
								style="margin-top: 5px">حفظ</button>

						</div>

					</form>





				</div>

			</div>
		</div>







		<div class="clear"></div>
	</div>
	<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
	<script>
		$(document).ready(
				function() {

					$('#subpoena-request-details-management-elements')
							.addClass("show");
					$('#subpoena-request-details-management').addClass(
							"active-color");
					$('#subpoena-request-details-index').addClass(
							"active-color");

				});
		$("#indexSubpoenaId")
				.change(
						function(e) {

							var selectedValue = $(this).val();

							$('#subpoenaRequest').empty().select2();

							$('#subpoenaRequest').select2({

								theme : 'bootstrap4',
							});
							$('#subpoenaRequest')
									.append(
											'<option value="" hidden>إختر طلب الاستدعاء</option>')
									.trigger('change');
							$.ajax({
								type : "Get",
								async : true,
								contentType : "application/json",

								url : '${pageContext.request.contextPath }'
										+ '/api2/get/subpoena_request?indexId='
										+ selectedValue,
								success : function(data) {

									for ( var i in data) {
										var newOption = new Option(
												data[i].nameA, data[i].id,
												false, false);
										$('#subpoenaRequest').append(newOption)
												.trigger('change');
									}
								},
								error : function(data) {
									alert()
								}
							});

						})

		$('#dataTable-1').DataTable({
			autoWidth : true,
			"lengthMenu" : [ [ 8, 32, 64, -1 ], [ 8, 32, 64, "All" ] ]
		});

		$('.drgpicker').daterangepicker({
			singleDatePicker : true,
			timePicker : false,
			showDropdowns : true,
			locale : {
				format : 'YYYY/MM/DD'
			}
		});

		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
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
	</script>