<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/layout/header.jsp"%>
<%@include file="/WEB-INF/jsp/layout/left-sidebar.jsp"%>

<div>&nbsp</div>
<div class="d-flex align-items-center"
	style="background-color: #dfe2e5a8; margin-right: 17.4%">
	<ol class="breadcrumb"
		style="background-color: #e4e8ec; margin-top: 5px; margin-right: 8.5%; height: 3vh">
		<li class="breadcrumb-item"><a href="<c:url value="#"/>">
				التقارير</a></li>




	</ol>
</div>
<div class="page-wrapper">
	<!-- ============================================================== -->
	<!-- Bread crumb and right sidebar toggle -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- Bread crumb and right sidebar toggle -->
	<!-- ============================================================== -->

	<!-- ============================================================== -->
	<!-- End Bread crumb and right sidebar toggle -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- Container fluid  -->
	<!-- ============================================================== -->
	<div class="container-fluid">
		<!-- ============================================================== -->
		<!-- Start Page Content -->
		<!-- ============================================================== -->



		<div class="row ">
			<div class="">
				<div class="card col-sm-10 col-lg-10 col-md-10">
					<div class="card-header" style="color: #26619c;">التقرير
						المراد استخراجه على أساس</div>
					<div class="card-body">
						<div class="row">

							<div class="col-lg-4 col-sm-4 col-md-4">
								<label> <input style="margin-left: 2vw" type="radio"
									class="option-input radio" name="radio" value="gov" /> الجهات
									الحكومية
								</label>
							</div>

							<div class="col-lg-4 col-sm-4 col-md-4">
								<label> <input style="margin-left: 2vw" type="radio"
									class="option-input radio" name="radio" value="op" /> العمليات
								</label>
							</div>

							<div class="col-lg-4 col-sm-4 col-md-4">
								<label> <input style="margin-left: 2vw" type="radio"
									class="option-input radio" name="radio" value="contractor" />
									العارضون
								</label>
							</div>
						</div>
						<div class="row" style="margin-top: 1vh">
							<div class="col-lg-8 col-sm-8 col-md-8"></div>
							<div class="col-lg-4 col-sm-4 col-md-4" style="">
								<button type="button" onclick="changeCard()"
									class="btn btn-primary blue-btn input-group-btn"
									style="float: left; width: 75px">اختيار</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr>

		<!----====================================Gov card-==========================================---->

		<div class="row" id="gov" style="display: none">
			<div class="">

				<div class="card col-sm-10 col-md-10 col-lg-10">
					<div class="card-header" style="color: #26619c;">على أساس
						الجهات الحكومية</div>
					<div class="card-body">
						<form:form method="post" name="govForm" id="govForm"
							action="${pageContext.request.contextPath}/report/gov/getreport"
							enctype="multipart/form-data" modelAttribute="reportGov">
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="city"> التي قامت بنشر
										عمليات : </label>
								</div>

								<div class="col-sm-1 col-md-1 col-lg-1">من</div>
								<div class="col-sm-3 col-md-3 col-lg-3">
									<input type="text" name="dateFrom" id="endDate"
										placeholder=" YYYY-MM-DD" style="text-align: right"
										class="datepicker form-control " value="${reportGov.dateFrom}">

								</div>
								<div class="col-sm-1 col-md-1 col-lg-1">الى</div>
								<div class="col-sm-3 col-md-3 col-lg-3">

									<input type="text" name="dateTo" id="endDate"
										placeholder=" YYYY-MM-DD" style="text-align: right"
										class="datepicker form-control " value="${reportGov.dateTo}">

								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="city"> الموجودة ضمن
										محافظة : </label>
								</div>
								<div class="col-sm-8 col-md-8 col-lg-8">

									<select name="city" id="city"
										class="form-select shadow-none  form-control "
										style="padding-right: 35px;">
										<option value="" hidden>إختر المحافظة المرادة</option>
										<c:forEach var="city" items="${cityList}">

											<option value="${city.nameEnglish}">${city.nameArabic}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="city"> التي قامت بنشر
										عمليات ذات نوع : </label>
								</div>
								<div class="col-sm-8 col-md-8 col-lg-8">

									<select name="typeOperation" id="typeOperation"
										class="form-select shadow-none  form-control "
										style="padding-right: 35px;">
										<option value="" hidden>إختر نوع العملية المراد</option>
										<c:forEach var="type" items="${typeList}">

											<option value="${type.nameEnglish}">${type.nameArabic}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="city"> التي قامت بنشر
										عمليات ذات صنف : </label>
								</div>
								<div class="col-sm-8 col-md-8 col-lg-8">

									<select name="categoryOperation" id="categoryOperation"
										class="form-select shadow-none  form-control "
										style="padding-right: 35px;">
										<option value="" hidden>إختر صنف العملية المراد</option>
										<c:forEach var="category" items="${categoryList}">

											<option value="${category.nameEnglish}">${category.nameArabic}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<sec:authorize access="hasPermission('report','create')">
								<div class="row" style="margin-top: 1vh">
									<div class="col-lg-8 col-sm-8 col-md-8"></div>
									<div class="col-lg-4 col-sm-4 col-md-4" style="">
										<button type="submit" value="submit"
											class="btn btn-primary blue-btn input-group-btn"
											style="float: left; width: 100px">توليد التقرير</button>
									</div>
								</div>
							</sec:authorize>
					</div>
					</form:form>
				</div>
			</div>
		</div>


		<!---------=================================end Gov card==============================-->



		<!----====================================Operation card-==========================================---->

		<div class="row" id="op" style="display: none">
			<div class="">

				<div class="card col-sm-10 col-md-10 col-lg-10">
					<div class="card-header" style="color: #26619c;">على أساس
						العمليات</div>
					<div class="card-body">
						<form:form method="post" name="opForm" id="opForm" onsubmit="return ValidateInput()"
							action="${pageContext.request.contextPath}/report/op/getreport"
							enctype="multipart/form-data" modelAttribute="reportOp">
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="date"> التي تم نشرها
										بتاريخ : </label>
								</div>


								<div class="col-sm-8 col-md-8 col-lg-8">

									<input type="text" name="date" id="endDate"
										placeholder=" YYYY-MM-DD" style="text-align: right"
										class="datepicker form-control " value="${op.endDate}">

								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="govName"> التابعة للجهة
										الحكومية : </label>
								</div>
								<div class="col-sm-8 col-md-8 col-lg-8">

									<select name="govName" id="govName"
										class="form-select shadow-none  form-control "
										style="padding-right: 35px;">
										<option value="" hidden>إختر الجهة الحكومية المرادة</option>
										<c:forEach var="gov" items="${govList}">

											<option value="${gov.name}">${gov.name}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="govName"> العمليات ذات
										الصنف : </label>
								</div>
								<div class="col-sm-8 col-md-8 col-lg-8">

									<select name="categoryOperation" id="categoryOperation"
										class="form-select shadow-none  form-control "
										style="padding-right: 35px;">
										<option value="" hidden>إختر صنف العملية المراد</option>
										<c:forEach var="category" items="${categoryList}">

											<option value="${category.nameEnglish}">${category.nameArabic}</option>
										</c:forEach>
									</select>
								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="govName"> العمليات ذات
										النوع : </label>
								</div>
								<div class="col-sm-8 col-md-8 col-lg-8">

									<select name="typeOperation" id="typeOperation"
										class="form-select shadow-none  form-control "
										style="padding-right: 35px;">
										<option value="" hidden>إختر نوع العملية المراد</option>
										<c:forEach var="type" items="${typeList}">

											<option value="${type.nameEnglish}">${type.nameArabic}</option>
										</c:forEach>
									</select>
								</div>
							</div>
								<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="govName"> العمليات التي
										حالتها : </label>
								</div>
								<div class="col-sm-8 col-md-8 col-lg-8">

									<select name="statusOperation" id="statusOperation"
										class="form-select shadow-none  form-control "
										style="padding-right: 35px;">
										<option value="" hidden>إختر حالة العملية</option>

											<option value="1">نشطة</option>
											<option value="4">مغلقة</option>
											<option value="5">التي فشلت</option>
										
									</select>
								</div>
							</div>
							
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="city"> قيمة التأمينات
										الأولية أقل من : </label>
								</div>
								<div class="col-sm-8 col-md-8 col-lg-8">

									<input type="text" class="form-control "
										placeholder="اختر قيمة التأمينات الأولية"
										name="lessThanPrimaryInsurances"
										id="lessThanPrimaryInsurances" />
								</div>


							</div>
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="city"> قيمة التأمينات
										الأولية أكثر من : </label>
								</div>
								<div class="col-sm-8 col-md-8 col-lg-8">

									<input type="text" class="form-control "
										placeholder="اختر قيمة التأمينات الأولية"
										name="moreThanPrimaryInsurances"
										id="moreThanPrimaryInsurances" />
								</div>

							</div>
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="city"> قيمة التأمينات
										الأولية بالعملة : </label>
								</div>


								<div class="col-sm-8 col-md-8 col-lg-8">
									<select name="CurrencyPrimary" id="CurrencyPrimary"
										class="form-select shadow-none  form-control "
										style="padding-right: 35px;">
										<option value="" hidden>إختر نوع العملة المرادة</option>

										<c:forEach var="currency" items="${currencyList}">
											<option value="${currency.nameEnglish}">${currency.nameArabic}</option>

										</c:forEach>
									</select>
								</div>
							</div>

							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="city"> قيمة التأمينات
										المؤقتة أقل من : </label>
								</div>
								<div class="col-sm-8 col-md-8 col-lg-8">

									<input type="text" class="form-control "
										placeholder="اختر قيمة التأمينات المؤقتة"
										name="lessThanTemporaryInsurances"
										id="lessThanTemporaryInsurances" />
								</div>


							</div>
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="city"> قيمة التأمينات
										المؤقتة أكثر من : </label>
								</div>
								<div class="col-sm-8 col-md-8 col-lg-8">

									<input type="text" class="form-control "
										placeholder="اختر قيمة التأمينات المؤقتة"
										name="moreThanTemporaryInsurances"
										id="moreThanTemporaryInsurances" />
								</div>

							</div>
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="city"> قيمة التأمينات
										المؤقتة بالعملة : </label>
								</div>


								<div class="col-sm-8 col-md-8 col-lg-8">
									<select name="CurrencyTemporary" id="CurrencyTemporary"
										class="form-select shadow-none  form-control "
										style="padding-right: 35px;">
										<option value="" hidden>إختر نوع العملة المرادة</option>

										<c:forEach var="currency" items="${currencyList}">
											<option value="${currency.nameEnglish}">${currency.nameArabic}</option>

										</c:forEach>
									</select>
								</div>
							</div>
							
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="city">التي اشترك بها العارض  : </label>
								</div>


								<div class="col-sm-8 col-md-8 col-lg-8">
									<select name="subContractorId" id="subContractorId"
										class="form-select shadow-none  form-control "
										style="padding-right: 35px;">
										<option value="" hidden>إختر اسم العارض المراد</option>

										<c:forEach var="contractor" items="${contractorList}">
											<option value="${contractor.id}">${contractor.user.first_name} ${contractor.user.last_name}</option>

										</c:forEach>
									</select>
								</div>
							</div>
							
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="city">التي رست على العارض  : </label>
								</div>


								<div class="col-sm-8 col-md-8 col-lg-8">
									<select name="winnerContractorId" id="winnerContractorId"
										class="form-select shadow-none  form-control "
										style="padding-right: 35px;">
										<option value="" hidden>إختر اسم العارض المراد</option>

										<c:forEach var="contractor" items="${contractorList}">
											<option value="${contractor.id}">${contractor.user.first_name} ${contractor.user.last_name}</option>

										</c:forEach>
									</select>
								</div>
							</div>
							<sec:authorize access="hasPermission('report','create')">
								<div class="row" style="margin-top: 1vh">
									<div class="col-lg-8 col-sm-8 col-md-8"></div>
									<div class="col-lg-4 col-sm-4 col-md-4" style="">
										<button type="submit" value="submit"
											class="btn btn-primary blue-btn input-group-btn"
											style="float: left; width: 100px">توليد التقرير</button>
									</div>
								</div>
							</sec:authorize>
						</form:form>
					</div>

				</div>
			</div>
		</div>


		<!---------=================================end operation card==============================-->


		<!---------=================================contractor card==============================-->



		<div class="row" id="contractor" style="display: none">
			<div class="">

				<div class="card col-sm-10 col-md-10 col-lg-10">
					<div class="card-header" style="color: #26619c;">على أساس
						العارضين</div>
					<div class="card-body">
						<form:form method="post" name="contractorForm" id="contractorForm"
							action="${pageContext.request.contextPath}/report/contractor/getreport"
							enctype="multipart/form-data" modelAttribute="reportContractor">
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="city"> من قام بالتسجيل
										على المنصة </label>
								</div>

								<div class="col-sm-1 col-md-1 col-lg-1">من</div>
								<div class="col-sm-3 col-md-3 col-lg-3">
									<input type="text" name="dateFrom" id="dateFrom"
										placeholder=" YYYY-MM-DD" style="text-align: right"
										class="datepicker form-control " value="${reportGov.dateFrom}">

								</div>
								<div class="col-sm-1 col-md-1 col-lg-1">الى</div>
								<div class="col-sm-3 col-md-3 col-lg-3">

									<input type="text" name="dateTo" id="dateTo"
										placeholder=" YYYY-MM-DD" style="text-align: right"
										class="datepicker form-control " value="${reportGov.dateTo}">

								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="city">تاريخ بداية السجل
										التجاري : </label>
								</div>
								<div class="col-sm-8 col-md-8 col-lg-8">

									<input type="text" name="startDate" id="startDate"
										placeholder=" YYYY-MM-DD" style="text-align: right"
										class="datepicker form-control ">

								</div>
							</div>
							<div class="form-group row">
								<div class="col-sm-4 col-md-4 col-lg-4">
									<label class="form-label" for="city"> تاريخ انتهاء
										السجل التجاري : </label>
								</div>
								<div class="col-sm-8 col-md-8 col-lg-8">

									<input type="text" name="endDate" id="endDate"
										placeholder=" YYYY-MM-DD" style="text-align: right"
										class="datepicker form-control ">

								</div>
							</div>
							<sec:authorize access="hasPermission('report','create')">
								<div class="row" style="margin-top: 1vh">
									<div class="col-lg-8 col-sm-8 col-md-8"></div>
									<div class="col-lg-4 col-sm-4 col-md-4" style="">
										<button type="submit" value="submit"
											class="btn btn-primary blue-btn input-group-btn"
											style="float: left; width: 100px">توليد التقرير</button>
									</div>
								</div>
							</sec:authorize>
					</div>
					</form:form>
				</div>
			</div>
		</div>


		<!---------=================================end contractor card==============================-->

		<!-- ============================================================== -->
		<!-- End PAge Content -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- Right sidebar -->
		<!-- ============================================================== -->
		<!-- .right-sidebar -->
		<!-- ============================================================== -->
		<!-- End Right sidebar -->
		<!-- ============================================================== -->

		<!-- ============================================================== -->
		<!-- End Container fluid  -->
		<!-- ============================================================== -->
		<!-- ============================================================== -->
		<!-- footer -->
		<!-- ============================================================== -->
		<!--<footer class="footer"> © 2021 Material Pro Admin by <a href="https://www.wrappixel.com/">wrappixel.com </a>
            </footer>-->
		<!-- ============================================================== -->
		<!-- End footer -->
		<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Page wrapper  -->
	<!-- ============================================================== -->
</div>
<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
<script>
	function changeCard() {
		var ele = document.getElementsByName('radio');
		var check = 0;
		for (i = 0; i < ele.length; i++) {
			if (ele[i].checked) {
				document.getElementById('op').style = "display:none";
				document.getElementById('gov').style = "display:none";
				document.getElementById('contractor').style = "display:none";
				document.getElementById(ele[i].value).style = "";

				check = 1;
			}

		}

		if (check == 0) {
			swalWithBootstrapButtons = Swal.mixin({
				customClass : {
					confirmButton : 'btn red-btn confirm-swal',
					cancelButton : 'btn  cancel-swal',
				},
				buttonsStyling : false
			});
			swalWithBootstrapButtons
					.fire({
						icon : 'question',
						iconHtml : '<i class="fas fa-exclamation-triangle" style="font-size:40px"></i>',
						iconColor : '#d50000',
						text : "الرجاء اختيار نوع التقرير المراد استخراجه",
						confirmButtonText : 'تم',
						showCloseButton : true,
					});
		}

		document.getElementById("govForm").reset();
		document.getElementById("opForm").reset();
		document.getElementById("contractorForm").reset();

	}

	function ValidateInput()
	{
		const swalWithBootstrapButtons = Swal.mixin({
			customClass : {
				confirmButton : 'btn red-btn confirm-swal',
				cancelButton : 'btn  cancel-swal',
			},
			buttonsStyling : false
		});
		let pattern2 = /^\d+$/;
		var lessPrimary=document.getElementById("lessThanPrimaryInsurances").value;
		var morePrimary=document.getElementById("moreThanPrimaryInsurances").value;
		var lessTemporary=document.getElementById("lessThanTemporaryInsurances").value;
		var moreTemporary=document.getElementById("moreThanTemporaryInsurances").value;
		
		if(lessPrimary!=""&& !pattern2.test(lessPrimary))
		{
			swalWithBootstrapButtons
			.fire({
				icon : 'question',
				iconHtml : '<i class="fas fa-exclamation-triangle" style="font-size:40px"></i>',
				iconColor : '#d50000',
				title : " الحد الأدنى للتأمينات الأولية يجب ان تتألف من ارقام موجبة فقط دون فراغات او احرف",
				confirmButtonText : 'تم',
				showCloseButton : true,
			});
			return false;
		}

		if(morePrimary!=""&& !pattern2.test(morePrimary))
		{
			swalWithBootstrapButtons
			.fire({
				icon : 'question',
				iconHtml : '<i class="fas fa-exclamation-triangle" style="font-size:40px"></i>',
				iconColor : '#d50000',
				title : " الحد الأعلى للتأمينات الأولية يجب ان تتألف من ارقام موجبة فقط دون فراغات او احرف",
				confirmButtonText : 'تم',
				showCloseButton : true,
			});
			return false;
		}

		if(lessTemporary!=""&& !pattern2.test(lessTemporary))
		{
			swalWithBootstrapButtons
			.fire({
				icon : 'question',
				iconHtml : '<i class="fas fa-exclamation-triangle" style="font-size:40px"></i>',
				iconColor : '#d50000',
				title : " الحد الأدنى للتأمينات المؤقتة يجب ان تتألف من ارقام موجبة فقط دون فراغات او احرف",
				confirmButtonText : 'تم',
				showCloseButton : true,
			});
			return false;
		}
		
	
		
		if(moreTemporary!=""&& !pattern2.test(moreTemporary))
		{
			swalWithBootstrapButtons
			.fire({
				icon : 'question',
				iconHtml : '<i class="fas fa-exclamation-triangle" style="font-size:40px"></i>',
				iconColor : '#d50000',
				title : " الحد الأعلى للتأمينات المؤقتة يجب ان تتألف من ارقام موجبة فقط دون فراغات او احرف",
				confirmButtonText : 'تم',
				showCloseButton : true,
			});
			return false;
		}
		
		return true;
		}
</script>
