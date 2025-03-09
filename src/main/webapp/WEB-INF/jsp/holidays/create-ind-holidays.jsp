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
						href="<c:url value='/indHolidays/index' />"><span
							class="mr-md-3 mr-2">إدارة العطل</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase "
						href="<c:url value='/indHolidays/index' />"><span>إستعراض
								العطل الثابتة </span></a></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>
								<c:if test="${ subpoenaRequestDetails.id==null}">
							إضافة عطلة ثابتة 
							</c:if> <c:if test="${ subpoenaRequestDetails.id!=null}">
							تعديل عطلة ثابتة 
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
					<c:if test="${ indHolidays.id==null}">
						<strong class="card-title"> إضافة عطلة ثابتة </strong>
					</c:if>
					<c:if test="${ indHolidays.id!=null}">


						<strong> تعديل عطلة ثابتة -<span style="color: #d1a923">
								${indHolidays.nameA }</span>
						</strong>
					</c:if>
				</div>
				<div class="card-body">


					<!-- non customer individual search criteria  -->


					<form class="needs-validation" novalidate method="post"
						action="${pageContext.request.contextPath}/indHolidays/save"
						modelAttribute="indHolidays">

<input id="isEnableFlag" name="isEnableFlag" type="hidden" class="form-control "
							value="${indHolidays.isEnableFlag}"> 
						<input id="id" name="id" type="hidden" class="form-control "
							value="${indHolidays.id}"> <input id="isDeleted"
							name="isDeleted" type="hidden" class="form-control "
							value="${indHolidays.isDeleted}">

						<div class="row">

							<div class="form-group col-md-6">
								<label for="indMonth"> الشهر *</label> <select required
									class="form-control select2" id="indMonth" name="indMonth">
									<option value="" hidden>إختر الشهر</option>

									<c:forEach var="ind" items="${indMonthList}">
										<c:if
											test="${indHolidays.id!=null && indHolidays.indMonth.id==ind.id}">
											<option selected numberOfDays="${ind.dayCount}" value="${ind.id}">${ind.nameA}</option>
										</c:if>
										<c:if
											test="${indHolidays.id==null || indHolidays.indMonth.id!=ind.id}">
											<option numberOfDays="${ind.dayCount}" value="${ind.id}">${ind.nameA}</option>
										</c:if>
									</c:forEach>


								</select>
								<div class="invalid-feedback">هذا الحقل مطلوب</div>


							</div>


							<div class="form-group col-md-6">
								<label for="holidayDay"> يوم العطلة *</label> <select required
									class="form-control select2" id="holidayDay" name="holidayDay">
									<option value="" hidden>إختر يوم العطلة</option>




								</select>
								<div class="invalid-feedback">هذا الحقل مطلوب</div>


							</div>
							<div class="form-group  col-md-6">
								<label for="nameA">الوصف باللغة الأساسية</label>
								<textarea required class="form-control" name="nameA"
									id="nameA" rows="4">${indHolidays.nameA}</textarea>
								<div class="invalid-feedback">هذا الحقل مطلوب</div>
							</div>

							<div class="form-group  col-md-6">
								<label for="nameB">الوصف باللغة الثانوية</label>
								<textarea required class="form-control" name="nameB" id="nameB"
									rows="4">${indHolidays.nameB}</textarea>
								<div class="invalid-feedback">هذا الحقل مطلوب</div>
							</div>


							<div class="form-group  col-md-6">
								<label for="note">ملاحظات</label>
								<textarea class="form-control" name="note" id="note" rows="4">${indHolidays.note}</textarea>
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
		$(document).ready(function() {

			$('#holidays-management-elements').addClass("show");
			$('#holidays-management').addClass("active-color");
			$('#ind-holidays-index').addClass("active-color");

		});
		const daysSelect = document.getElementById('holidayDay');

		if(${indHolidays.id!=null})
			{
			var numberOfDay=$("#indMonth").find('option:selected').attr(
			'numberOfDays');

	$('#holidayDay').empty().select2();

	$('#holidayDay').select2({

		theme : 'bootstrap4',
	});
	$('#holidayDay').append(
			'<option value="" hidden>إختر يوم العطلة</option>')
			.trigger('change');

	for (let i = 1; i <= numberOfDay; i++) {
		let option = document.createElement('option');
		option.value = i;
		option.textContent = i;
		if(i==${indHolidays.holidayDay})
			option.selected='selected';
		daysSelect.appendChild(option);
	}
			}
	
		$("#indMonth").change(
				function(e) {

					var selectedValue = $(this).val();
					var selectedValue = $(this).val();
					var numberOfDays = $(this).find('option:selected').attr(
							'numberOfDays');

					$('#holidayDay').empty().select2();

					$('#holidayDay').select2({

						theme : 'bootstrap4',
					});
					$('#holidayDay').append(
							'<option value="" hidden>إختر يوم العطلة</option>')
							.trigger('change');

					for (let i = 1; i <= numberOfDays; i++) {
						let option = document.createElement('option');
						option.value = i;
						option.textContent = i;
						daysSelect.appendChild(option);
					}

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