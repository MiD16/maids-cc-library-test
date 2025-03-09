
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
						class="black-text inactive text-uppercase  " href="#"><span
							class="mr-md-3 mr-2"> استعراض العمولات</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<c:if test='${commission.id==0}'>
						<li class="breadcrumb-item font-weight-bold"><a
							class="black-text active text-uppercase " href="#"><span>إضافة
									عمولة </span></a></li>
					</c:if>
					<c:if test='${commission.id!=0}'>
						<li class="breadcrumb-item font-weight-bold"><a
							class="black-text active text-uppercase " href="#"><span>تعديل
									عمولة </span></a></li>
					</c:if>
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
							<strong class="card-title"> إضافة عمليات</strong>
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




				</div>
				<div class="card-body">

					<form id="addNewAction"
						action="${pageContext.request.contextPath}/commission/actions-commission/save"
						method="post" name="addNewAction"
						modelAttribute="actionCommissionInfo">





						<input id="id" name="commission.id" type="hidden"
							class="form-control "
							value="${actionCommissionInfo.commission.id}">

						<div class="wizard clearfix row">

							<div class="form-group col-md-6">

								<h5 style="color: #d1a923">معلومات العمولة</h5>

							</div>

							<div class="form-group col-md-6"></div>
							<div class="col-md-6">
								<div class="form-group">

									<label for="nameA"> اسم العمولة</label> <input id=nameA
										name="commission.nameA" type="text" class="form-control "
										readonly value="${actionCommissionInfo.commission.nameA}">
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<label for="nameB"> اسم العمولة باللغة الثانوية</label> <input
										id="nameB" name="commission.nameB" type="text"
										class="form-control " readonly
										value="${actionCommissionInfo.commission.nameB}">
								</div>
							</div>



							<div class="col-md-6">
								<div class="form-group">

									<label for="cbCode"> نوع العمولة </label> <input id="cbCode"
										name="commission.commissionTypeName" type="text"
										class="form-control " readonly
										value="${actionCommissionInfo.commission.commissionTypeName}">
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">

									<label for="cbCode"> رمز المصرف المركزي </label> <input
										id="cbCode" name="commission.cbCode" type="text"
										class="form-control " readonly
										value="${actionCommissionInfo.commission.cbCode}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">

									<label for="value"> القيمة</label> <input id="value"
										name="commission.value" type="number" class="form-control "
										readonly value="${actionCommissionInfo.commission.value}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="effectiveFrom">تاريخ بدء التفعيل *</label>
									<div class="input-group">
										<input type="text" class="form-control "
											value="${actionCommissionInfo.commission.effectiveFrom}"
											id="effectiveFrom" name="commission.effectiveFrom"
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
										<input value="1" type="radio" id="precentageFlag"
											name="commission.precentageFlag" class="custom-control-input"
											checked> <label class="custom-control-label"
											for="precentageFlag">نعم </label>
									</div>
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="precentageFlag2"
											name="commission.precentageFlag" class="custom-control-input">
										<label class="custom-control-label" for="precentageFlag2">
											لا </label>
									</div>




								</c:if>
								<c:if
									test="${actionCommissionInfo.commission.precentageFlag==0 }">
									<div class=" custom-radio form-check-inline">
										<input value="1" type="radio" id="precentageFlag" disabled
											name="commission.precentageFlag" class="custom-control-input">
										<label class="custom-control-label" for="precentageFlag">نعم
										</label>
									</div>
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="precentageFlag2" disabled
											name="commission.precentageFlag" class="custom-control-input"
											checked> <label class="custom-control-label"
											for="precentageFlag2"> لا </label>
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
										تفعيل العمولة</label> <input type="hidden"
										name="commission.activationFlag" id="activationFlagInput"
										value="${actionCommissionInfo.commission.activationFlag}"
										disabled>
								</div>

							</div>

							<div class="col-md-6">
								<div class="form-group">

									<label for="note">ملاحظة</label>
									<textarea class="form-control" name="commission.note" id="note"
										rows="4" readonly>${actionCommissionInfo.commission.note}</textarea>

								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group"></div>
							</div>
							<br></br> <br></br> <br></br> <br></br>

							<div class="form-group col-md-6" style="margin-bottom: -1.5rem;">

								<h5 style="color: #d1a923">العمليات المرتبطة بالعمولة</h5>

							</div>
							<div class="form-group col-md-6"></div>


							<div class="form-group col-md-6" style="margin-top: 3rem">




								<!-- <button type="button" class="btn  btn-primary ml-20"
											style="margin-right: 1rem">بحث</button> -->

								<button type="button" class="btn mb-2 btn-outline-primary"
									data-toggle="modal" data-target="#varyModal"
									style="margin-right: 0.5rem" id="searchNonCustButton"
									data-whatever="@mdo">
									البحث عن عملية <i class="fe fe-search" style=""> </i>
								</button>
								<div class="modal fade" id="varyModal" tabindex="-1"
									role="dialog" aria-labelledby="varyModalLabel"
									aria-hidden="true" style="display: none;">
									<div class="modal-dialog" role="document"
										style="max-width: 840px;">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="varyModalLabel">البحث عن
													متعامل</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">×</span>
												</button>
											</div>
											<div class="modal-body">
												<!-- non customer individual search criteria  -->
												<div class="col-md-12">
													<div id="nonIndiv" style="display: block">

														<div class="row ">

															<div class="col-6">
																<div class="input-group mb-3">
																	<div class="input-group-prepend">
																		<span class="input-group-text" id="basic-addon1">
																			اسم العملية باللغة العربية</span>
																	</div>
																	<input type="text" class="form-control" placeholder=""
																		name="action_name_ar" aria-label="Username"
																		id="action_name_ar" aria-describedby="basic-addon1">
																</div>

															</div>

															<div class="col">
																<button onclick="showHideCustIndivSearchDivElement()"
																	type="button" class="btn mb-2 btn-secondary">
																	<span id="icon_test" class="fe fe-chevrons-down fe-16"></span>
																</button>
															</div>

															<div class="col-2">

																<button type="button" class="btn mb-2 btn-primary"
																	onclick="searchAction()">&nbsp &nbsp بحث &nbsp
																	&nbsp</button>
															</div>


														</div>

														<!-- non customer individual search criteria  -->

														<div class="container-div row" id="ActionSearchDiv">
															<div class="col-md-6 ">
																<div class="input-group mb-3 trans">
																	<div class="input-group-prepend">
																		<span class="input-group-text ">اسم العملية
																			باللغة الثانوية</span>
																	</div>
																	<input type="text" class="form-control" placeholder=""
																		name="action_name_en" aria-label="Username"
																		id="action_name_en" aria-describedby="basic-addon1">

																</div>
															</div>
															<div class="col-md-6 ">
																<div class="input-group mb-3 trans">
																	<div class="input-group-prepend">
																		<span class="input-group-text ">رمز العملية</span>
																	</div>
																	<input type="text" class="form-control" placeholder=""
																		name="code" aria-label="Username" id="code"
																		aria-describedby="basic-addon1">
																</div>
															</div>
															<div class="col-md-6 ">
																<div class="input-group mb-3 trans">
																	<div class="input-group-prepend">
																		<span class="input-group-text ">نوع العمليىة</span>
																	</div>
																	<select class="form-control select2"
																		id="indCatigoryModule" name=indCatigoryModule>
																		<option value="-1" selected>اختيار نوع
																			العملية</option>
																		<optgroup>
																			<c:forEach var="ind" items="${indCatigoryModules}">
																				<option value="${ind.id}">${ind.nameA}</option>
																			</c:forEach>
																		</optgroup>

																	</select>
																</div>
															</div>


															<div class="col-md-6 ">
																<div class="input-group mb-3 trans">
																	<div class="input-group-prepend">
																		<span class="input-group-text ">نوع الوحدة </span>
																	</div>
																	<select class="form-control select2"
																		id="indCreditDebitCatigory"
																		name=indCreditDebitCatigory>
																		<option value="-1" selected>اختيارنوع الوحدة</option>
																		<optgroup>
																			<c:forEach var="ind"
																				items="${indCreditDebitCatigories}">
																				<option value="${ind.id}">${ind.nameA}</option>
																			</c:forEach>
																		</optgroup>

																	</select>

																</div>
															</div>


															<div class=" col-md-6">
																<p class="mb-2">ينتج عن العملية قيود مالية</p>
																<!-- <div class="custom-control custom-radio">
																	<input type="radio" id="isTransactionFlag1"
																		name="isTransactionFlag" class="custom-control-input">
																	<label class="custom-control-label" for="isTransactionFlag1">Toggle
																		this custom radio</label>
																</div>
																<div class="custom-control custom-radio">
																	<input type="radio" id="isTransactionFlag2"
																		name="isTransactionFlag" class="custom-control-input"
																		checked> <label class="custom-control-label"
																		for="isTransactionFlag2">Or toggle this other custom
																		radio</label>
																</div> -->
																<div class=" custom-radio form-check-inline">
																	<input value="1" type="radio" id="isTransactionFlag1"
																		name="isTransactionFlag" class="custom-control-input"
																		checked value="1"> <label
																		class="custom-control-label" for="isTransactionFlag1">نعم
																	</label>
																</div>
																<div class=" custom-radio form-check-inline">
																	<input value="0" type="radio" id="isTransactionFlag2"
																		name="isTransactionFlag" class="custom-control-input"
																		value="0"> <label class="custom-control-label"
																		for="isTransactionFlag2"> لا </label>
																</div>

															</div>
															<div class=" col-md-6">
																<p class="mb-2">تقبل العملية طلب استدعاء</p>
																<div class=" custom-radio form-check-inline">
																	<input value="1" type="radio" id="subpoenaReqFlag1"
																		name="subpoenaReqFlag" class="custom-control-input"
																		checked value="1"> <label
																		class="custom-control-label" for="subpoenaReqFlag1">نعم
																	</label>
																</div>
																<div class=" custom-radio form-check-inline">
																	<input value="0" type="radio" id="subpoenaReqFlag2"
																		name="subpoenaReqFlag" class="custom-control-input"
																		value="0"> <label class="custom-control-label"
																		for="subpoenaReqFlag2"> لا </label>
																</div>

															</div>

														</div>



														<div class="row my-4">
															<!-- Small table -->
															<div class="col-md-12">
																<div class="card shadow">
																	<div class="card-body">
																		<!-- table -->
																		<table class="table datatables" id="dataTable-2">
																			<thead>
																				<tr>
																					<th>اسم العملية</th>
																					<th>اسم العملية باللغة الثانوية</th>
																					<th>إضافة عملية</th>
																				</tr>
																			</thead>
																		</table>

																	</div>

																</div>
															</div>

															<!-- simple table -->
														</div>

													</div>
												</div>
											</div>

										</div>
									</div>
								</div>



							</div>

							<div class="col-md-12" id="addActionDiv"
								style="display: none; padding-bottom: 20px;">
								<table class="table datatables" id="addActionTable">
									<thead>
										<tr>

											<th>اسم العملية باللغة العربية</th>
											<th>اسم العملية باللغة الثانوية</th>
											<th>الحالة</th>
										<!-- 	<th>العمليات</th> -->

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
												<c:if test="${actionCommissionsList.isEnableFlag == 0 || actionCommissionsList.isEnableFlag == null }">
													<td><span class="dot dot-lg bg-danger mr-1"></span>
														غير فعالة</td>
												</c:if>
												<c:if test="${actionCommissionsList.isEnableFlag == 1 }">
													<td><span class="dot dot-lg bg-success mr-2"></span>
														&nbsp فعالة &nbsp</td>
												</c:if>
											<%-- 	<td><span class='deleterow'
													id='${actionCommissionsList.action.ID}'> <i
														class='fe fe-delete icon-delete'
														onclick='removeAction(this.parentElement.id)'> </i>
												</span></td> --%>

											</tr>

										</c:forEach>
									</tbody>
								</table>

							</div>

						</div>


						<div class="row">

							<div class="form-group col-md-12" align="left">

								<button class="btn btn-primary" type="submit" id="submitActions">&nbsp
									&nbsp حفظ &nbsp &nbsp</button>
							</div>
						</div>
					</form>
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
				$('#dataTable-2').DataTable({
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
			</script>

			<script>
				function searchAction() {

					var action_name_ar = document
							.getElementById("action_name_ar").value;
					var action_name_en = document
							.getElementById("action_name_en").value;
					var code = document.getElementById("code").value;
					var subpoenaReqFlag = document
							.getElementsByName('subpoenaReqFlag');
					var isTransactionFlag = document
							.getElementsByName('isTransactionFlag');
					var indCreditDebitCatigory = document
							.getElementById("indCreditDebitCatigory");
					var indCreditDebitCatigoryValue = indCreditDebitCatigory.options[indCreditDebitCatigory.selectedIndex].value;
					var indCatigoryModule = document
							.getElementById("indCatigoryModule");
					var indCatigoryModuleValue = indCatigoryModule.options[indCatigoryModule.selectedIndex].value;
					var subpoenaReqFlagchecked = 0;
					var isTransactionFlagchecked = 0;
					var subpoenaReqFlagchecked = 0;
					// Iterate over the radio buttons
					for (let i = 0; i < subpoenaReqFlag.length; i++) {
						// Check if the current radio button is checked
						if (subpoenaReqFlag[i].checked) {
							// Get the value of the checked radio button
							subpoenaReqFlagchecked = subpoenaReqFlag[i].value;
							console.log(subpoenaReqFlagchecked); // Output the value
							break; // Exit the loop once the checked value is found
						}
					}

					// Iterate over the radio buttons
					for (let i = 0; i < isTransactionFlag.length; i++) {
						// Check if the current radio button is checked
						if (isTransactionFlag[i].checked) {
							// Get the value of the checked radio button
							isTransactionFlagchecked = isTransactionFlag[i].value;
							console.log(isTransactionFlagchecked); // Output the value
							break; // Exit the loop once the checked value is found
						}
					}

					var t = $('#dataTable-2').DataTable();

					$
							.ajax({
								type : "GET",
								headers : {
									Accept : "application/json; charset=utf-8",
									"Content-Type" : "application/json; charset=utf-8"
								},
								//contentType : "application/json",
								url : '${pageContext.request.contextPath}'
										+ '/rest/searchAction',
								data : {
									action_name_ar : action_name_ar,
									action_name_en : action_name_en,
									code : code,
									indCreditDebitCatigory : indCreditDebitCatigoryValue,
									indCatigoryModule : indCatigoryModuleValue,
									isTransactionFlag : isTransactionFlagchecked,
									subpoenaReqFlag : subpoenaReqFlagchecked
								},
								dataType : "json",
								cache : false,
								timeout : 600000,
								success : function(response) {
									//	alert(response);
									t.rows().remove().draw();
									for ( var i in response) {

										var op = '<i class="fe fe-plus-circle" onclick="getAction(\''
												+ response[i].ACTION_NAME_AR
												+ '\',\''
												+ response[i].ACTION_NAME_EN
												+ '\',\''
												+ response[i].ID
												+ '\')" data-dismiss="modal"></i>';

										t.row
												.add(
														[
																response[i].ACTION_NAME_AR,
																response[i].ACTION_NAME_EN,
																op ]).draw(
														false);

									}

								},

								error : function(e) {
									alert(e);

								}
							});
				}
			</script>

			<script>
				function showHideCustIndivSearchDivElement() {

					var container = $('#ActionSearchDiv');

					if (!container.hasClass('active')) {
						container.addClass('show').outerWidth();
						container.addClass('active');
						document.getElementById("icon_test").classList
								.remove('fe-chevrons-down');
						document.getElementById("icon_test").classList
								.add('fe-chevrons-up');

					} else {
						container
								.removeClass('active')
								.one(
										'transitionend',
										function() {
											container.removeClass('show');

											document
													.getElementById("icon_test").classList
													.remove('fe-chevrons-up');
											document
													.getElementById("icon_test").classList
													.add('fe-chevrons-down');
										});
					}

				}
			</script>

			<!-- <script>
				function getAction(nameA, nameB, id) {
					alert(nameA + nameB + id);
				}
			</script> -->


			<script>
				if ($('#addActionTable tbody tr.addrow').length > 0) {
					document.getElementById("addActionDiv").style.display = "block";
				}
				function removeAction(parentId) {

					$("#div_" + parentId).remove();
					var rowtodelete = document
							.getElementById('row_' + parentId);
					$('#addActionTable').DataTable().rows(rowtodelete).remove()
							.draw(false);

					if ($('#addActionTable tbody tr.addrow').length == 0) {
						document.getElementById("addActionDiv").style.display = "none";
					}

				}

				function getAction(nameA, nameB, id) {

					document.getElementById("addActionDiv").style.display = "block";

					var checked = true;
					let input = document.getElementsByName('actionIdArr[]');
					if (input.length > 0)
						for (let i = 0; i < input.length; i++) {
							if (input[i].value == id)
								checked = false;
						}

					if (checked) {
						var actions = "<input type='hidden' name='actionIdArr[]' value = '"+id+"' id='actionId_"+id+"'>"
								+ "<input type='hidden' name='actionCommissionIdArr[][]' value = '-1' id='actionCommissionId_"+id+"'>";
						var element1 = document.createElement("div");
						element1.innerHTML = actions;
						document.getElementById("addNewAction").appendChild(
								element1);
						element1.setAttribute('id', 'div_' + id);

						var t = $('#addActionTable').DataTable();
						var newRaw = t.row
								.add(
										[

												"<td>" + nameA + "</td>",
												"<td>" + nameB + "</td>",
												"<td> <span class='dot dot-lg bg-danger mr-1'></span>غير فعالة</td>",
												"<td><span class='deleterow' id ='" + id + "'><i class='fe fe-delete icon-delete' onclick='removeAction(this.parentElement.id)'></span></td>" ])
								.draw(false);

						$(newRaw.node()).attr('class', 'addrow');
						$(newRaw.node()).attr('id', 'row_' + id);

					} else {
						
						callConfirmAlert('info', 'تنبيه',
								'هذه العملية  تمت إضافتها مسبقاً');
					}

				}
			</script>
			<script>
				$("#addNewAction").submit(
						function(e) {
							let actionIdArr = document
									.getElementsByName('actionIdArr[]');
							for (let i = 0; i < actionIdArr.length; i++) {
								//	alert(actionIdArr[i].value);
								var element1 = document.createElement("input");
								element1.type = "hidden";
								element1.value = actionIdArr[i].value;
								element1.name = "actionCommissions[" + i
										+ "].action";
								document.getElementById("addNewAction")
										.appendChild(element1);
							}

							// e.preventDefault();

						});
			</script>