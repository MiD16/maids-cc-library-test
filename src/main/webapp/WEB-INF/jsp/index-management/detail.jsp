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
						href="<c:url value='/HomeIndex/index' />"><span
							class="mr-md-3 mr-2">إدارة فهارس النظام</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase"
						href="<c:url value='/HomeIndex/index' />"><span
							class="mr-md-3 mr-2">استعراض الفهارس</span></a><i
						class="fe fe-angle-double-right text-uppercase "
						aria-hidden="true"></i></li>

					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>
						استعراض القيمة المضافة
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
		
				
				
		<%-- 		<c:if test="${  tableId ne 'IND_SUBPOENA_REQUEST' && tableId ne 'SUBPOENA_REQUEST'  && tableId ne 'Ind_Branch_Type'}">

								<div class="form-group col-md-6">
									<label for="cbCode">الرمز</label> <input type="text" value="${ systable.cbCode}" readonly
										name="cbCode" id="cbCode" class="form-control">
								</div>

								<div class="form-group col-md-6">
									<label for="placeOrder">ترتيب عرض القيمة</label> <input value="${ systable.placeOrder}" readonly
										name="placeOrder" type="text" id="placeOrder" class="form-control">
								</div>
								</c:if> --%>
								<c:if test="${tableId eq 'IND_REGION' }">
								<div class="form-group col-md-6">
									<label for="code">رمز  </label> <input value="${ systable.code}" readonly
										name="code" type="text" id="code" class="form-control">
								</div>
								
								<div class="form-group col-md-6">
									<label for="code">المدينة  </label> <input value="${ systable.indCity.nameA}" readonly
										name="code" type="text" id="code" class="form-control">
								</div>
								
									<div class="custom-control custom-checkbox ">
											<c:if
												test="${systable.id!=null && systable.isEnabledFlag==1}">
												<input type="checkbox" value="1" checked disabled
												class="custom-control-input" id="isEnabledFlag" class="custom-control-input"
													name="isEnabledFlag">
											</c:if>
								</c:if>
			</div>

			<!-- .card -->
			<!-- .card -->
			<div class="card my-4">
				<!-- <div class="card-header">
					<strong> فهرس الحالة الاجتماعية </strong>
				</div> -->
				<div class="card-body">
						<form id="addNewIndex"
						
						method="GET" name="addNewIndSocialStatus" modelAttribute="systable">
						<div>
							<div class="row">
												
								<c:if test="${tableId eq 'ACC_IND_DATE_UNIT' || tableId eq 'CUSTOMER_STAGE'}">
								
								<div class="form-group col-md-6">
									<label for="descriptionA">الوصف باللغة الأساسية *</label> 
									<input id="descriptionA" value="${ systable.descriptionA}" readonly
										name="descriptionA" type="text" class="form-control ">
								</div>
																
									<div class="form-group col-md-6">
									<label for="descriptionB">الوصف باللغة الثاموية *</label> 
									<input id="descriptionB" value="${ systable.descriptionA}" readonly
										name="descriptionB" type="text" class="form-control ">
								</div>
								</c:if>
								
								<c:if test="${ tableId eq 'CUSTOMER_STAGE'}">
							
								<div class="form-group col-md-6">
								<div class="form-group col-md-6">
									<label for="stageCode">الارمز المرحلة*</label> 
									<input id="stageCode" value="${ systable.stageCode}" readonly
										name="stageCode" type="text" class="form-control ">
								
									</div>
									
									
									<div class="form-group col-md-6">
									<label for="centralFlag">العلم الرئيسي *</label> 
									<input id="centralFlag" value="${ systable.centralFlag}" readonly
										name="centralFlag" type="text" class="form-control ">
								</div>

									
									
									
								</c:if>
								
							<c:if test="${tableId ne 'CUSTOMER_SITUATION' && tableId ne 'CUSTOMER_STAGE'}">

							 <div class="form-group col-md-6">
									<label for="nameA">الاسم باللغة الأساسية *</label> <label
										style="display: none" class="error-label errornameA"
										for="nameA">هذا الحقل مطلوب.</label> <input id="nameA" value="${ systable.nameA}" readonly
										name="nameA" type="text" class="form-control ">
								</div>

								<div class="form-group col-md-6">
									<label for="nameB">الاسم باللغة الثانوية *</label> <label
										style="display: none" class="error-label errornameB"
										for="nameB">هذا الحقل مطلوب.</label> <input id="nameB" value="${ systable.nameB}" readonly
										name="nameB" type="text" class="form-control  ">
								</div> 
								
								
								<c:if test="${tableId ne 'IND_COMMISION_TYPE'&& tableId != 'CUSTOMER_STAGE' && tableId != 'IND_SUBPOENA_REQUEST' && tableId != 'SUBPOENA_REQUEST'}">
								<div class="col-md-6">
									<div class="form-group">
										<label for="isEnabledFlag"> فعال *</label>
										<label
											style="display: none" class="error" for="isEnabledFlag">هذا
											الحقل مطلوب.</label>


										<div class="custom-control-input">
											<c:if
												test="${systable.id!=null && systable.isEnabledFlag==1}">
												<input type="checkbox" value="1" checked disabled
													class="custom-control-input" id="isEnabledFlag"
													name="isEnabledFlag">
											</c:if>
											
											</c:if>
																						</c:if>
											
											
											<c:if test="${tableId eq 'CUSTOMER_SITUATION'}">
								
																	<div class="form-group col-md-6">
										<label for="descriptionA">االوصف باللغة الاساسية *</label> <label
											style="display: none" class="error-label errordescriptionA"
											for="descriptionA">هذا الحقل مطلوب.</label> <input
											id="descriptionA" value="${sysTable.descriptionA}" required
											name="descriptionA" type="text" class="form-control  ">
									</div>
									<div class="form-group col-md-6">
										<label for="descriptionB">االوصف باللغة الثانوية *</label> <label
											style="display: none" class="error-label errordescriptionB"
											for="descriptionB">هذا الحقل مطلوب.</label> <input
											id="descriptionB" value="${sysTable.descriptionB}" required
											name="descriptionB" type="text" class="form-control  ">
									</div>
								</c:if>
								
								
								
							
							
							
							
									<!--  	<c:if test="${tableId ne 'CUSTOMER_STAGE' }">
									<div class="form-group col-md-6">
										<label for="cbCode">الرمز </label> <input type="text"
											value="${sysTable.cbCode}" required name="cbCode" id="cbCode"
											class="form-control">
									</div>


									<div class="form-group col-md-6">
										<label for="placeOrder">ترتيب عرض القيمة</label> <input
											required name="placeOrder" type="text" id="placeOrder"
											onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"
											value="${sysTable.placeOrder}" class="form-control">
									</div></c:if>
-->
					<c:if test="${tableId ne 'IND_COMMISION_TYPE' && tableId != 'CUSTOMER_STAGE'  && tableId != 'SUBPOENA_REQUEST'}">

											<c:if
												test="${systable.id!=null && systable.isEnabledFlag==0}">
												<input type="checkbox" value="0"  disabled
												class="custom-control-input" id="isEnabledFlag"
													name="isEnabledFlag">
											</c:if>

											<input type='hidden' value='0' name='isEnabledFlag'> <label
												class="custom-control-label" for="isEnabledFlag">قيمة الفهرس فعال </label>
										</div>
									</div>
								</div>
								
								</c:if>
								<c:if test="${tableId eq 'CUSTOMER_SITUATION' }">
									
									
									<div class="form-group col-md-6">
									<label for="descriptionA">الاسم باللغة الأساسية</label> <input type="text" value="${ systable.descriptionA}" readonly
										name="descriptionA" id="descriptionA" class="form-control">
								</div>
									
									<div class="form-group col-md-6">
									<label for="descriptionB">الاسم باللغة الثانوية</label> <input type="text" value="${ systable.descriptionB}" readonly
										name="descriptionB" id="descriptionB" class="form-control">
								</div>
									
								</c:if>

					<c:if test="${tableId eq 'IND_KEY' }">


						<div class="form-group col-md-6">
							<label for="action">العملية  </label> <input
								type="text" value="${ systable.action.action_name_ar}" readonly
								name="action" id="action" class="form-control">
						</div>

					</c:if>

					<c:if test="${ tableId ne 'CUSTOMER_STAGE' && tableId ne 'IND_KEY' && tableId ne 'IND_TABLE' && tableId ne 'SUBPOENA_REQUEST'&& tableId ne 'IND_SUBPOENA_REQUEST'}">

								<div class="form-group col-md-6">
									<label for="cbCode">الرمز</label> <input type="text" value="${ systable.cbCode}" readonly
										name="cbCode" id="cbCode" class="form-control">
								</div>

								<div class="form-group col-md-6">
									<label for="placeOrder">ترتيب عرض القيمة</label> <input value="${ systable.placeOrder}" readonly
										name="placeOrder" type="text" id="placeOrder" class="form-control">
								</div>
								</c:if>
								<c:if test="${tableId eq 'IND_REGION' }">
								<div class="form-group col-md-6">
									<label for="code">رمز  </label> <input value="${ systable.code}" readonly
										name="code" type="text" id="code" class="form-control">
								</div>
								
								<div class="form-group col-md-6">
									<label for="code">المدينة  </label> <input value="${ systable.indCity.nameA}" readonly
										name="code" type="text" id="code" class="form-control">
								</div>
								
								</c:if>
								
								<c:if test="${tableId eq 'IND_CITY' }">
								
								<div class="form-group col-md-6">
									<label for="indCountry">الدولة</label> <input value="${ systable.indCountry.nameA}" readonly
										name="indCountry" type="text" id="indCountry" class="form-control">
								</div>
								</c:if>


								
								<c:if test="${tableId eq 'ACC_IND_INTEREST_TYPE' }">

									<div class="form-group col-md-6">
										<label for="description">الوصف *</label> <label
											style="display: none" class="error-label errordescription"
											for="description">هذا الحقل مطلوب.</label> <input
											id="description" value="${sysTable.description}" required
											name="description" type="text" class="form-control  ">
									</div>
								</c:if>
								
								<div class="col-md-6">
									<div class="form-group">
										<label for="note">ملاحظات</label>
										<textarea class="form-control" name="note" id="note" readonly
										 rows="4">${sysTable.note}</textarea>
									</div>
								</div>
								

							</div>
						
							
							<div class="row">

							<div class="form-group col-md-12" align="left">
							<a href="<c:url value='/HomeIndex/tableindex?tableId=${tableId}' />">
							<button class="btn btn-primary" type="button"
								
								 id="addIndex">&nbsp
									&nbsp موافق &nbsp &nbsp</button>
							</a>
								
							</div>
						</div>
						</div>
					</form>
				</div>
				<!-- .card-body -->
			</div>
			</div>
			</div>
			</div>
			

			<!-- end section -->

			<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>
			<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
			<script>
				$(document).ready(function() {

					$('#adminManagement-elements').addClass("show");
					$('#adminManagement').addClass("active-color");
					$('#adminIndex').addClass("active-color");

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
				
				$("#example-form").submit(function(e) {
					
					var regex = /[.,\s]/g;
					document.forms["example-form"]["capitalValue"].value = document.forms["example-form"]["capitalValue"].value
							.replace(regex, '');
				});
				
				function validateRequierd(){
		        	var result="true";
		        	if( document.getElementById("nameA").value=="")
		        	{
		        	  	$('label[for="nameA"]').show ()
		        		$('input[id="nameA"]').addClass('error');
		        	  	$('.current').addClass('error');
		        		result=false;
		        	}
		        	if( document.getElementById("nameB").value=="")
		        	{
		        	  	$('label[for="nameB"]').show ()
		        		$('input[id="nameB"]').addClass('error');
		        	  	$('.current').addClass('error');
		        		result=false;
		        	}
		        	/* if( document.getElementById("cbCode").value=="")
		        	{
		        	  	$('label[for="cbCode"]').show ()
		        		$('input[id="cbCode"]').addClass('error');
		        	  	$('.current').addClass('error');
		        		result=false;
		        	} */
		        	if( document.getElementById("isEnabledFlag").value=="")
		        	{
		        	  	$('label[for="isEnabledFlag"]').show ()
		        		$('input[id="isEnabledFlag"]').addClass('error');
		        	  	$('.current').addClass('error');
		        		result=false;
		        	}
		        	/* if( document.getElementById("placeOrder").value=="")
		        	{
		        	  	$('label[for="placeOrder"]').show ()
		        		$('input[id="placeOrder"]').addClass('error');
		        	  	$('.current').addClass('error');
		        		result=false;
		        	} */
		        	
		        	return result;
			  }
				
				
				
			</script>