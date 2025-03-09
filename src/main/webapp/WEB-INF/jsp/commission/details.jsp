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
						class="black-text inactive text-uppercase  " href="#"><span
							class="mr-md-3 mr-2"> العمولات</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase " href="#"><span>استعراض
								العمولات </span></a></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>استعراض
								معلومات عمولة </span></a></li>
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
					<div class="row mt-3" style="align-content: center;">
						<div class="col-md-10">
							<strong class="card-title"> استعراض معلومات العمولة </strong>
						</div>
						<div class="col-md-2" style="text-align: left;">
							<c:if test="${actionCommissionInfo.commission.isEnableFlag == 1}">
								<span class="badge badge-pill badge-success"
									style="padding: 1.25em 2em; font-size: 76%">فعالة</span>
							</c:if>
							<c:if test="${actionCommissionInfo.commission.isEnableFlag == 0}">
								<span class="badge badge-pill badge-danger"
									style="padding: 1.25em 2em; font-size: 76%">غير فعالة</span>
							</c:if>


						</div>
					</div>
					<!-- 	<strong class="card-title"> استعراض معلومات العمولة </strong>
					
<span class="badge badge-pill badge-success" >System Update</span> -->

				</div>
				<div class="card-body">



					<input id="id" name="ID" type="hidden" class="form-control "
						value="${actionCommissionInfo.commission.id}">

					<div class="wizard clearfix row">

						<div class="form-group col-md-6">

							<h5 style="color: #d1a923">معلومات العمولة</h5>

						</div>

						<div class="form-group col-md-6"></div>
						<div class="col-md-6">
							<div class="form-group">

								<label for="nameA"> اسم العمولة</label> <input id=nameA
									name="nameA" type="text" class="form-control " readonly
									value="${actionCommissionInfo.commission.nameA}">
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">
								<label for="nameB"> اسم العمولة باللغة الثانوية</label> <input
									id="nameB" name="nameB" type="text" class="form-control "
									readonly value="${actionCommissionInfo.commission.nameB}">
							</div>
						</div>



						<div class="col-md-6">
							<div class="form-group">

								<label for="cbCode"> نوع العمولة </label> <input id="cbCode"
									name="cbCode" type="text" class="form-control " readonly
									value="${actionCommissionInfo.commission.commissionTypeName}">
							</div>
						</div>

						<div class="col-md-6">
							<div class="form-group">

								<label for="cbCode"> رمز المصرف المركزي </label> <input
									id="cbCode" name="cbCode" type="text" class="form-control "
									readonly value="${actionCommissionInfo.commission.cbCode}">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">

								<label for="value"> القيمة</label> <input id="value"
									name="value" type="number" class="form-control " readonly
									value="${actionCommissionInfo.commission.value}">
							</div>
						</div>
						<div class="col-md-6">
							<div class="form-group">
								<label for="effectiveFrom">تاريخ بدء التفعيل</label>
								<div class="input-group">
									<input type="text" class="form-control "
										value="${actionCommissionInfo.commission.effectiveFrom}"
										id="effectiveFrom" name="effectiveFrom"
										aria-describedby="button-addon2" readonly>
									<div class="input-group-append">
										<div class="input-group-text" id="button-addon-date">
											<span class="fe fe-calendar fe-16"></span>
										</div>
									</div>
									<div class="invalid-feedback">هذا الحقل مطلوب</div>
								</div>
							</div>

						</div>
						<div class="form-group col-md-6" id="is_enabledDiv">
							<p class="mb-2">القيمة بالنسبة المئوية</p>
							<c:if
								test="${actionCommissionInfo.commission.precentageFlag==1 ||actionCommissionInfo.commission.precentageFlag==null}">
								<div class=" custom-radio form-check-inline">
									<input value="1" type="radio" id="precentageFlag" disabled
										name="precentageFlag" class="custom-control-input" checked>
									<label class="custom-control-label" for="precentageFlag">نعم
									</label>
								</div>
								<div class=" custom-radio form-check-inline">
									<input value="0" type="radio" id="precentageFlag2" disabled
										name="precentageFlag" class="custom-control-input"> <label
										class="custom-control-label" for="precentageFlag2"> لا
									</label>
								</div>




							</c:if>
							<c:if
								test="${actionCommissionInfo.commission.precentageFlag==0 }">
								<div class=" custom-radio form-check-inline">
									<input value="1" type="radio" id="precentageFlag" disabled
										name="precentageFlag" class="custom-control-input"> <label
										class="custom-control-label" for="precentageFlag">نعم
									</label>
								</div>
								<div class=" custom-radio form-check-inline">
									<input value="0" type="radio" id="precentageFlag2" disabled
										name="precentageFlag" class="custom-control-input" checked>
									<label class="custom-control-label" for="precentageFlag2">
										لا </label>
								</div>




							</c:if>
						</div>

						<div class="form-group col-md-6" style="align-content: center">
							<div class="custom-control custom-switch">
								<c:if
									test="${actionCommissionInfo.commission.activationFlag == null || actionCommissionInfo.commission.activationFlag == 1}">
									<input type="checkbox" class="custom-control-input" checked
										disabled onchange="clearDate(this)" id="activationFlag"
										value="1">
								</c:if>
								<c:if
									test="${ actionCommissionInfo.commission.activationFlag == 0}">
									<input type="checkbox" class="custom-control-input" disabled
										onchange="clearDate(this)" id="activationFlag">
								</c:if>
								<label class="custom-control-label" for="activationFlag">
									تفعيل العمولة</label> <input type="hidden" name="activationFlag"
									id="activationFlagInput"
									value="${actionCommissionInfo.commission.activationFlag}">
							</div>

						</div>

						<div class="col-md-6">
							<div class="form-group">

								<label for="note">ملاحظة</label>
								<textarea class="form-control" name="note" id="note" rows="4"
									readonly>${actionCommissionInfo.commission.note}</textarea>

							</div>
						</div>
						<br></br> <br></br> <br></br> <br></br>
						<c:if test="${actionCommissionInfo.actionCommissions.size() > 0}">

							<div class="form-group col-md-6"></div>

							<div class="form-group col-md-6" style="margin-bottom: 2.5rem;">

								<h5 style="color: #d1a923">العمليات المرتبطة بالعمولة</h5>

							</div>
							<div class="form-group col-md-6"></div>

							<div class="col-md-12" id="addActionDiv"
								style="padding-bottom: 20px;">
								<table class="table datatables" id="addActionTable">
									<thead>
										<tr>

											<th>اسم العملية باللغة العربية</th>
											<th>اسم العملية باللغة الثانوية</th>
											<th>الحالة</th>



										</tr>
									</thead>
									<tbody>
										<c:forEach varStatus="status" var="actionCommissionsList"
											items="${actionCommissionInfo.actionCommissions}">

											<div id="div_${actionCommissionsList.action.ID}">

												<input type="hidden"
													id="actionId_${actionCommissionsList.action.ID}"
													name="actionIdArr[]"
													value="${actionCommissionsList.action.ID}"> <input
													type="hidden"
													id="actionCommissionId_${actionCommissionsList.action.ID}"
													name="actionCommissionIdArr[]"
													value="${actionCommissionsList.id}">

											</div>

											<tr class='addrow'
												id="row_${actionCommissionsList.action.ID}">

												<td>${actionCommissionsList.action.action_name_ar}</td>
												<td>${actionCommissionsList.action.action_name_en}</td>
												<c:if test="${actionCommissionsList.isEnableFlag == 0 }">
													<td><span class="dot dot-lg bg-danger mr-1"></span>
														غير فعالة</td>
												</c:if>
												<c:if test="${actionCommissionsList.isEnableFlag == 1 }">
													<td><span class="dot dot-lg bg-success mr-2"></span>
														&nbsp فعالة &nbsp</td>
												</c:if>


											</tr>

										</c:forEach>
									</tbody>
								</table>

							</div>

						</c:if>





					</div>


				</div>
			</div>





			<div class="clear"></div>
		</div>
		<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
		<script>
			$(document).ready(function() {

				$('#commission-elements').addClass("show");
				$('#Commission').addClass("active-color");
				$('#commissionIndex').addClass("active-color");

			});
			$('#dataTable-1').DataTable({
				autoWidth : true,
				"lengthMenu" : [ [ 8, 32, 64, -1 ], [ 8, 32, 64, "All" ] ]
			});
			$('#addActionTable').DataTable({
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
		</script>
		<!-- <script>
			document
					.addEventListener(
							"DOMContentLoaded",
							function() {
								const precentageFlag = '${actionCommissionInfo.commission.precentageFlag}';

								if (precentageFlag === '1'
										|| precentageFlag === null) {
									document.getElementById('precentageFlag').disabled = false;
									document.getElementById('precentageFlag2').disabled = true;
								} else if (precentageFlag === '0') {
									document.getElementById('precentageFlag').disabled = true;
									document.getElementById('precentageFlag2').disabled = false;
								}
							});
		</script> -->