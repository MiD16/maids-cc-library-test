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
						href="<c:url value='/holidays/index?fromHolidays=1' />"><span
							class="mr-md-3 mr-2">إدارة العطل</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase "
						href="<c:url value='/holidays/index?fromHolidays=1' />"><span>إستعراض
								ايام العطل</span></a></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>
								<c:if test="${ holidays.id==null}">
							إضافة يوم عطلة 
							</c:if> <c:if test="${ holidays.id!=null}">
							تعديل يوم عطلة 
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
					<c:if test="${ holidays.id==null}">
						<strong class="card-title"> إضافة عطلة ثابتة </strong>
					</c:if>
					<c:if test="${ holidays.id!=null}">


						<strong> تعديل عطلة ثابتة -<span style="color: #d1a923">
								${holidays.nameA }</span>
						</strong>
					</c:if>
				</div>
				<div class="card-body">


					<!-- non customer individual search criteria  -->


					<form class="needs-validation" novalidate method="post"
						action="${pageContext.request.contextPath}/holidays/save"
						modelAttribute="holidays">

<input id="isEnableFlag" name="isEnableFlag" type="hidden" class="form-control "
							value="${holidays.isEnableFlag}"> 
						<input id="id" name="id" type="hidden" class="form-control "
							value="${holidays.id}"> <input id="isDeleted"
							name="isDeleted" type="hidden" class="form-control "
							value="${holidays.isDeleted}">

						<div class="row">
						<c:if test="${holidays.id==null}">
	<div class="form-group col-md-6"
								id="interestInTheSameAccountFlagDiv" >
								<p class="mb-2">ترصيد الفوائد</p>
								<div class=" custom-radio form-check-inline">
									<input value="1" type="radio" id="dayFlag"
									
										name="dayFlag"
										class="custom-control-input" checked> <label
										class="custom-control-label"
										for="dayFlag">يوم واحد
										</label>
								</div>
								<div class=" custom-radio form-check-inline">
									<input value="0" type="radio"
								
										id="dayFlag2"
										name="dayFlag"
										class="custom-control-input"> <label
										class="custom-control-label"
										for="dayFlag2">عدة أيام</label>
								</div>
							</div>
						
									<div class="form-group col-md-6" ></div>
									
									</c:if>
											<div class="form-group col-md-6" id="startDateDiv" style="display:none">
											<label for="startDate">تبدأ العطلة من تاريخ*</label>
											<div class="input-group">
												<input type="text" class="form-control drgpicker "  
													id="startDate"
													value="${holidays.holidayDate}"
													name="startDate"
													aria-describedby="button-addon2">
												<div class="input-group-append">
												<div title="حذف التاريخ" class="input-group-text clear" id="button-addon-date" onclick="$('#startDate').val(null); $('#startDate').val('');">
													<span class="fe fe-x fe-16" ></span>
													</div>
													<div class="input-group-text" id="button-addon-date">
														<span class="fe fe-calendar fe-16"></span>
													</div>
												</div>
											</div>


							</div>
							
						<div class="form-group col-md-6" id="endDateDiv" style="display:none">
											<label for="endDate">تنتهي العطلة في تاريخ*</label>
											<div class="input-group">
												<input type="text" class="form-control drgpicker "  
													id="endDate"
													value="${holidays.holidayDate}"
													name="endDate"
													aria-describedby="button-addon2">
												<div class="input-group-append">
												<div title="حذف التاريخ" class="input-group-text clear" id="button-addon-date" onclick="$('#endDate').val(null); $('#endDate').val('');">
													<span class="fe fe-x fe-16" ></span>
													</div>
													<div class="input-group-text" id="button-addon-date">
														<span class="fe fe-calendar fe-16"></span>
													</div>
												</div>
											</div>


							</div>
							<div class="form-group col-md-6" id="holidayDateDiv" >
											<label for="holidayDate">تاريخ العطلة *</label>
											<div class="input-group">
												<input type="text" class="form-control drgpicker "  
													id="holidayDate"
													value="${holidays.holidayDate}"
													name="holidayDate"
													aria-describedby="button-addon2" required>
												<div class="input-group-append">
												<div title="حذف التاريخ" class="input-group-text clear" id="button-addon-date" onclick="$('#holidayDate').val(null); $('#holidayDay').val('');">
													<span class="fe fe-x fe-16" ></span>
													</div>
													<div class="input-group-text" id="button-addon-date">
														<span class="fe fe-calendar fe-16"></span>
													</div>
												</div>
											</div>


							</div>



							<div class="form-group col-md-6" id="dayDiv" >
											<label for="holidayDay">يوم العطلة *</label>  <input id="holidayDay" readonly
												name="holidayDay" type="text"
												class="form-control required" required
												value="${holidays.holidayDay}">

								<div class="invalid-feedback">هذا الحقل مطلوب</div>


							</div>
							<div class="form-group  col-md-6">
								<label for="nameA">الاسم باللغة الأساسية *</label>
								<textarea required class="form-control" name="nameA"
									id="nameA" rows="4">${holidays.nameA}</textarea>
								<div class="invalid-feedback">هذا الحقل مطلوب</div>
							</div>

							<div class="form-group  col-md-6">
								<label for="nameB">الاسم باللغة الثانوية *</label>
								<textarea required class="form-control" name="nameB" id="nameB"
									rows="4">${holidays.nameB}</textarea>
								<div class="invalid-feedback">هذا الحقل مطلوب</div>
							</div>


							<div class="form-group  col-md-6">
								<label for="note">ملاحظات</label>
								<textarea class="form-control" name="note" id="note" rows="4">${holidays.note}</textarea>
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
	
	document.getElementById('dayFlag').onclick = function() {
		$("#startDateDiv").hide();
		$("#endDateDiv").hide();
		
		$("#holidayDateDiv").show();
		$("#dayDiv").show();
		
		$("#holidayDate").attr('required', true);
		$("#holidayDay").attr('required', true);
		
		$("#startDate").removeAttr('required');
		$("#endDate").removeAttr('required');
	};

	document.getElementById('dayFlag2').onclick = function() {

		$("#startDateDiv").show();
		$("#endDateDiv").show();
		
		$("#holidayDateDiv").hide();
		$("#dayDiv").hide();
		
		$("#startDate").attr('required', true);
		$("#endDate").attr('required', true);
		
		$("#holidayDate").removeAttr('required');
		
		$("#holidayDay").removeAttr('required');
	};
	
	
	
	if(${holidays.id==null})
	   $("#holidayDate").val('')
	$("#holidayDate").change(
			function(e) {

			     if ($(this).val()) {
		                const date = new Date($(this).val());
		                const daysOfWeek = ["Sunday/الأحد", "Monday/الإثنين", "Tuesday/الثلاثاء", "Wednesday/الأربعاء", "Thursday/الخميس", "Friday/الجمعة", "Saturday/السبت"];
		                const dayNumber = date.getDay();
		                const dayName = daysOfWeek[dayNumber];
		                
		                
		                $("#holidayDay").val(dayName);
		            }
				
			});
	
	

		$(document).ready(function() {

			$('#holidays-management-elements').addClass("show");
			$('#holidays-management').addClass("active-color");
			$('#holidays-index').addClass("active-color");

		});

	
	
		

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