<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/layout/header.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>


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
						class="black-text inactive text-uppercase"
						href="<c:url value='/AccountType/index' />"><span
							class="mr-md-3 mr-2">استعراض منتجات الحسابات</span></a><i
						class="fe fe-angle-double-right text-uppercase "
						aria-hidden="true"></i></li>

					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>استعراض معلومات منتج</span></a></li>
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

			<!-- .card -->
			<!-- .card -->
			<div class="card my-4">
				<div class="card-header">
					<strong> معلومات منتج حساب </strong>
				</div>
				
				<div class="card-body">
					<div class="col-md-12 mb-4">
						<ul class="nav nav-pills" id="pills-tab2" role="tablist" >
							<li class="nav-item"><a class="nav-link px-3 active"
								id="pills-home-tab2" data-toggle="pill" href="#pills-home2"
								role="tab" aria-controls="pills-home2" aria-selected="true"><span class="fontstyle"
									class="fe fe-16 ">1. معلومات  المنتج</span></a></li>
							<li class="nav-item"><a class="nav-link px-3"
								id="pills-profile-tab2" data-toggle="pill"
								href="#pills-profile2" role="tab" aria-controls="pills-profile2"
								aria-selected="false"><span class="fontstyle"
									class="fe fe-16 ">2.
										عملات المنتج</span></a></li>
							<li class="nav-item"><a class="nav-link px-3"
								id="pills-contact-tab3" data-toggle="pill"
								href="#pills-contact3" role="tab" aria-controls="pills-contact"
								aria-selected="false"><span class="fontstyle"
									class="fe fe-16 ">4.
										طبيعة عملاء المنتج</span></a></li>
						</ul>
						<div class="tab-content mb-2" id="pills-tabContent2">
							<div class="tab-pane fade active show" id="pills-home2"
								role="tabpanel" aria-labelledby="pills-home-tab2">
								<div class="card-body">
								<div class="row">
								
									<div class="form-group col-md-6">

											<h5 style="color: #d1a923">معلومات المنتج الأساسية</h5>

									</div>
									<div class="form-group col-md-6"></div>
								
									<div class="form-group col-md-6">
										<label for="accTypeNameA">الاسم  باللغة الأساسية </label><input
											id="accTypeNameA" name="accountType.accTypeNameA"
											class="form-control" readonly type="text"
											value="${accountTypeForm.accountType.accTypeNameA}">
									</div>
									
									<div class="form-group col-md-6">
										<label for="accTypeNameB">الاسم  باللغة الثانوية </label><input
											id="accTypeNameB" name="accountType.accTypeNameB"
											class="form-control" readonly type="text"
											value="${accountTypeForm.accountType.accTypeNameB}">
									</div>
									
									<div class="form-group col-md-6">
										<label for="accTypeCode">رمز المنتج </label><input
											id="accTypeCode" name="accountType.accTypeCode"
											class="form-control" readonly type="text"
											value="${accountTypeForm.accountType.accTypeCode}">
									</div>
									
									<div class="form-group col-md-6">
										<label for="categoryId">صنف المنتج </label><input
											id="categoryId" name="accountType.categoryId"
											class="form-control" readonly type="text"
											value="${accountTypeForm.accountType.categoryId.nameA}">
									</div>
									
									<input
											id="categoryIdB" name="accountType.categoryId"
											class="form-control" readonly type="hidden"
											value="${accountTypeForm.accountType.categoryId.nameB}">
									
									<div class="form-group col-md-6">
										<label for="debitInterestId">الفائدة المدينة  </label><input
											id="debitInterestId" name="accountType.debitInterestId"
											class="form-control" readonly type="text"
											value="${accountTypeForm.accountType.debitInterestId.descriptionA}">
									</div>
									
									<div class="form-group col-md-6">
										<label for="creditInterestId">الفائدة الدائنة  </label><input
											id="creditInterestId" name="accountType.creditInterestId"
											class="form-control" readonly type="text"
											value="${accountTypeForm.accountType.creditInterestId.descriptionA}">
									</div>
									
									
									<div class="form-group col-md-6">
										<label for="depositPeriodFlag">فعال </label>
										<div class="custom-control custom-checkbox ">
											<c:if
												test="${accountTypeForm.accountType.id!=null && accountTypeForm.accountType.depositPeriodFlag==1}">
												<input type="checkbox" value="1" checked disabled
													class="custom-control-input form-control" id="depositPeriodFlag"
													name="accountType.depositPeriodFlag">
											</c:if>


											<c:if
												test="${accountTypeForm.accountType.id==null || accountTypeForm.accountType.depositPeriodFlag==0}">
												<input type="checkbox" value="0" disabled
													class="custom-control-input form-control" id="depositPeriodFlag"
													name="accountType.depositPeriodFlag">
											</c:if>

											<input type='hidden' value='0' name='accountType.depositPeriodFlag'> <label
												class="custom-control-label" for="depositPeriodFlag">يدعم المنتج بدء احتساب الفوائد خلال فترة زمنية   </label>
												<label>في حال عدم تفعيل الخيار سيتم بدء احتساب الفوائد عند أول عملية إيداع</label>
										</div>
									</div>
									
									<div class="form-group col-md-6">
										<label for="maturityPeriodId">فترة بدء احتساب الفوائد</label><input
											id="maturityPeriodId" name="accountType.maturityPeriodId"
											class="form-control" readonly type="text"
											value="${accountTypeForm.accountType.maturityPeriodId.accPeriodDescA}">
									</div>
									
									
									
									<div class="form-group col-md-6">
										<label for="interestPeriodFlag">فعال </label>
										<div class="custom-control custom-checkbox ">
											<c:if
												test="${accountTypeForm.accountType.id!=null && accountTypeForm.accountType.interestPeriodFlag==1}">
												<input type="checkbox" value="1" checked disabled
													class="custom-control-input form-control" id="interestPeriodFlag"
													name="accountType.interestPeriodFlag">
											</c:if>


											<c:if
												test="${accountTypeForm.accountType.id==null || accountTypeForm.accountType.interestPeriodFlag==0}">
												<input type="checkbox" value="0" disabled
													class="custom-control-input form-control" id="interestPeriodFlag"
													name="accountType.interestPeriodFlag">
											</c:if>

											<input type='hidden' value='0' name='accountType.interestPeriodFlag'>  <label
														class="custom-control-label" for="interestPeriodFlag">يدعم
														المنتج  احتساب استحقاق الفوائد خلال فترة زمنية </label>
										</div>
									</div>
									
									<div class=" row col-md-6 form-group" >
										<div class="form-group col-md-6">
											<label for="monthInterest">الشهر: </label>
											
											<c:if test="${accountTypeForm.accountType.monthInterest == null }">
												<input id="monthInterest" name="accountType.monthInterest"
													class="form-control" readonly type="text" value="-- ">
											</c:if>
											
											<c:if test="${accountTypeForm.accountType.monthInterest == 1 }">
												<input id="monthInterest" name="accountType.monthInterest"
													class="form-control" readonly type="text" value="كانون الثاني">
											</c:if>
											<c:if test="${accountTypeForm.accountType.monthInterest == 2}">
												<input id="monthInterest" name="accountType.monthInterest"
													class="form-control" readonly type="text" value=" شباط">
											</c:if>
											<c:if test="${accountTypeForm.accountType.monthInterest == 3 }">
												<input id="monthInterest" name="accountType.monthInterest"
													class="form-control" readonly type="text" value="أذار">
											</c:if>
											<c:if test="${accountTypeForm.accountType.monthInterest == 4 }">
												<input id="monthInterest" name="accountType.monthInterest"
													class="form-control" readonly type="text" value="نيسان ">
											</c:if>
											<c:if test="${accountTypeForm.accountType.monthInterest == 5 }">
												<input id="monthInterest" name="accountType.monthInterest"
													class="form-control" readonly type="text" value="أيار ">
											</c:if>
											<c:if test="${accountTypeForm.accountType.monthInterest == 6 }">
												<input id="monthInterest" name="accountType.monthInterest"
													class="form-control" readonly type="text" value="حزيران ">
											</c:if>
											<c:if test="${accountTypeForm.accountType.monthInterest == 7 }">
												<input id="monthInterest" name="accountType.monthInterest"
													class="form-control" readonly type="text" value="تموز ">
											</c:if>
											<c:if test="${accountTypeForm.accountType.monthInterest == 8 }">
												<input id="monthInterest" name="accountType.monthInterest"
													class="form-control" readonly type="text" value="آب ">
											</c:if>
											<c:if test="${accountTypeForm.accountType.monthInterest == 9 }">
												<input id="monthInterest" name="accountType.monthInterest"
													class="form-control" readonly type="text" value="أيلول ">
											</c:if>
											<c:if test="${accountTypeForm.accountType.monthInterest == 10 }">
												<input id="monthInterest" name="accountType.monthInterest"
													class="form-control" readonly type="text" value="تشرين الأول ">
											</c:if>
											<c:if test="${accountTypeForm.accountType.monthInterest == 11 }">
												<input id="monthInterest" name="accountType.monthInterest"
													class="form-control" readonly type="text" value="تشرين الثاني ">
											</c:if>
											<c:if test="${accountTypeForm.accountType.monthInterest == 12 }">
												<input id="monthInterest" name="accountType.monthInterest"
													class="form-control" readonly type="text" value="كانون الأول ">
											</c:if>
										</div>

										<div class="form-group col-md-6">
										<label for="dayInterest">اليوم: </label>
										
										<c:if test="${accountTypeForm.accountType.dayInterest == null }">
												<input id="dayInterest" name="accountType.dayInterest"
													class="form-control" readonly type="text" value="-- ">
										</c:if>
										
										<c:if test="${accountTypeForm.accountType.dayInterest != null }">
											<input
											id="dayInterest" name="accountType.dayInterest"
											class="form-control" readonly type="text"
											value="${accountTypeForm.accountType.dayInterest}">
										</c:if>
										
										
									</div>
									
									</div>
									
									<div class="form-group col-md-6">
										<label for="interestPeriodId">فترة استحقاق الفوائد</label><input
											id="interestPeriodId" name="accountType.interestPeriodId"
											class="form-control" readonly type="text"
											value="${accountTypeForm.accountType.interestPeriodId.accPeriodDescA}">
									</div>
									
									<div class="form-group col-md-6">
										<label for="numberOfAccounts">عدد الحسابات المسموح للعميل بفتحها</label> <input
											id="numberOfAccounts" name="accountType.numberOfAccounts"
											class="form-control" readonly type="text"
											value="${accountTypeForm.accountType.numberOfAccounts}">
									</div>
									
									<div class="row col-md-12" style="display: none" id="show">

										<div class="form-group col-md-6">

											<h5 style="color: #d1a923">معلومات الوديعة</h5>

										</div>
										<div class="form-group col-md-6"></div>
										
									<div class="form-group col-md-6">
										<label for="renwalPeriodId">مدة ربط الوديعة</label> <input
											id="renwalPeriodId" name="accountType.renwalPeriodId"
											class="form-control" readonly type="text"
											value="${accountTypeForm.accountType.renwalPeriodId.accPeriodDescA}">
									</div>
									
									<div class="form-group col-md-6">
										<label for="permissionPeriodId">فترة السماح </label> <input
											id="permissionPeriodId" name="accountType.permissionPeriodId"
											class="form-control" readonly type="text"
											value="${accountTypeForm.accountType.permissionPeriodId.accPeriodDescA}">
									</div>
									
									<div class="form-group col-md-6">
										<label for="pentalyBreakDeposit">غرامة كسر الوديعة</label> <input
											id="pentalyBreakDeposit" name="accountType.pentalyBreakDeposit"
											class="form-control input-money" readonly type="text"
											value="${accountTypeForm.accountType.pentalyBreakDeposit}">
									</div>
									
									</div>
									
									
									
									<div class="form-group col-md-6">

											<h5 style="color: #d1a923">حسابات الأستاذ المرتبطة
												بالمنتج</h5>

										</div>
										<div class="form-group col-md-6"></div>
									<div class="form-group col-md-6">
										<label for="glId"> الحساب الوسيط </label> <input
											id="glId" name="accountType.glId"
											class="form-control " readonly type="text"
											value="${accountTypeForm.accountType.glId}">
									</div>
									
									<div class="form-group col-md-6">
										<label for="glCreditId"> حساب الفائدة الوسيط الدائن </label> <input
											id="glCreditId" name="accountType.glCreditId"
											class="form-control " readonly type="text"
											value="${accountTypeForm.accountType.glCreditId}">
									</div>
									
									<div class="form-group col-md-6">
										<label for="glDebitId"> حساب الفائدة الوسيط المدين </label> <input
											id="glDebitId" name="accountType.glDebitId"
											class="form-control " readonly type="text"
											value="${accountTypeForm.accountType.glDebitId}">
									</div>
									
									
									<div class="form-group col-md-6"></div>
									

									<div class="form-group col-md-6">

										<h5 style="color: #d1a923">خصائص منتج الحساب</h5>

									</div>
									<div class="form-group col-md-6"></div>
									
									<div class="form-group col-md-6">
										<label for="atmFlag">فعال </label>
										<div class="custom-control custom-checkbox ">
											<c:if
												test="${accountTypeForm.accountType.id!=null && accountTypeForm.accountType.atmFlag==1}">
												<input type="checkbox" value="1" checked disabled
													class="custom-control-input form-control" id="atmFlag"
													name="accountType.atmFlag">
											</c:if>


											<c:if
												test="${accountTypeForm.accountType.id==null || accountTypeForm.accountType.atmFlag==0}">
												<input type="checkbox" value="0" disabled
													class="custom-control-input form-control" id="atmFlag"
													name="accountType.atmFlag">
											</c:if>

											<input type='hidden' value='0' name='accountType.atmFlag'>  <label
														class="custom-control-label" for="atmFlag">يدعم
														المنتج سحب من جهاز ATM</label>
										</div>
									</div>
									
									<div class="form-group col-md-6">
										<label for="chequeFlag">فعال </label>
										<div class="custom-control custom-checkbox ">
											<c:if
												test="${accountTypeForm.accountType.id!=null && accountTypeForm.accountType.chequeFlag==1}">
												<input type="checkbox" value="1" checked disabled
													class="custom-control-input form-control" id="chequeFlag"
													name="accountType.chequeFlag">
											</c:if>


											<c:if
												test="${accountTypeForm.accountType.id==null || accountTypeForm.accountType.chequeFlag==0}">
												<input type="checkbox" value="0" disabled
													class="custom-control-input form-control" id="chequeFlag"
													name="accountType.chequeFlag">
											</c:if>

											<input type='hidden' value='0' name='accountType.chequeFlag'> <label
														class="custom-control-label" for="chequeFlag">يدعم
														المنتج الشيكات</label>
										</div>
									</div>
									
									<div class="form-group col-md-6">
										<label for="interestTakeFlag">فعال </label>
										<div class="custom-control custom-checkbox ">
											<c:if
												test="${accountTypeForm.accountType.id!=null && accountTypeForm.accountType.interestTakeFlag==1}">
												<input type="checkbox" value="1" checked disabled
													class="custom-control-input form-control" id="interestTakeFlag"
													name="accountType.interestTakeFlag">
											</c:if>


											<c:if
												test="${accountTypeForm.accountType.id==null || accountTypeForm.accountType.interestTakeFlag==0}">
												<input type="checkbox" value="0" disabled
													class="custom-control-input form-control" id="interestTakeFlag"
													name="accountType.interestTakeFlag">
											</c:if>

											<input type='hidden' value='0' name='accountType.interestTakeFlag'> <label
														class="custom-control-label" for="chequeFlag">يدعم
														المنتج الفوائد</label>
										</div>
									</div>
									
									<div class="form-group col-md-6">
										<label for="forInterestCompilationFlag">فعال </label>
										<div class="custom-control custom-checkbox ">
											<c:if
												test="${accountTypeForm.accountType.id!=null && accountTypeForm.accountType.forInterestCompilationFlag==1}">
												<input type="checkbox" value="1" checked disabled
													class="custom-control-input form-control" id="forInterestCompilationFlag"
													name="accountType.forInterestCompilationFlag">
											</c:if>


											<c:if
												test="${accountTypeForm.accountType.id==null || accountTypeForm.accountType.forInterestCompilationFlag==0}">
												<input type="checkbox" value="0" disabled
													class="custom-control-input form-control" id="forInterestCompilationFlag"
													name="accountType.forInterestCompilationFlag">
											</c:if>

											<input type='hidden' value='0' name='accountType.forInterestCompilationFlag'> <label
														class="custom-control-label" for="forInterestCompilationFlag">قابلية ترصيد
														الفوائد ضمن هذا المنتج</label>
										</div>
									</div>
									
									<div class="form-group col-md-6">
										<label for="passBookTakeFlag">فعال </label>
										<div class="custom-control custom-checkbox ">
											<c:if
												test="${accountTypeForm.accountType.id!=null && accountTypeForm.accountType.passBookTakeFlag==1}">
												<input type="checkbox" value="1" checked disabled
													class="custom-control-input form-control" id="passBookTakeFlag"
													name="accountType.passBookTakeFlag">
											</c:if>


											<c:if
												test="${accountTypeForm.accountType.id==null || accountTypeForm.accountType.passBookTakeFlag==0}">
												<input type="checkbox" value="0" disabled
													class="custom-control-input form-control" id="passBookTakeFlag"
													name="accountType.passBookTakeFlag">
											</c:if>

											<input type='hidden' value='0' name='accountType.passBookTakeFlag'> <label
														class="custom-control-label" for="passBookTakeFlag">يدعم
														المنتج دفتر توفير</label>
										</div>
									</div>
									
									<div class="form-group col-md-6">
										<label for="accountStatementFlag">فعال </label>
										<div class="custom-control custom-checkbox ">
											<c:if
												test="${accountTypeForm.accountType.id!=null && accountTypeForm.accountType.accountStatementFlag==1}">
												<input type="checkbox" value="1" checked disabled
													class="custom-control-input form-control" id="accountStatementFlag"
													name="accountType.accountStatementFlag">
											</c:if>


											<c:if
												test="${accountTypeForm.accountType.id==null || accountTypeForm.accountType.accountStatementFlag==0}">
												<input type="checkbox" value="0" disabled
													class="custom-control-input form-control" id="accountStatementFlag"
													name="accountType.accountStatementFlag">
											</c:if>

											<input type='hidden' value='0' name='accountType.accountStatementFlag'> <label
														class="custom-control-label" for="accountStatementFlag">يدعم
														المنتج عملية كشف الحساب</label>
										</div>
									</div>
									
									
									</div>

								</div>
								</div>
								<div class="tab-pane fade" id="pills-profile2" role="tabpanel"
								aria-labelledby="pills-profile-tab2">
								
									<div class="card-body">
									<div class="row">
								<div class="col-md-12">
								<table class="table datatables" id="dataTable-2">
										<thead>
											<tr>
												<th>#</th>
												<th>عملة المنتج باللغة الأساسية </th>
												<th>عملة المنتج باللغة الثانوية</th>
												<th>العمليات</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="systable" items="${accountTypeCurrencies}">
												<tr>
												<td>${systable.id}</td>
													<td>${systable.currencyId.nameA}</td>
													<td>${systable.currencyId.nameB}</td>
													
													<td>
														<li type="button" class="fe fe-info icon-info"
														data-toggle="modal" data-target="#id_${systable.id}_id" 
														data-whatever="@mdo"></li>

														<div class="modal fade" id="id_${systable.id}_id" tabindex="-1"
															role="dialog" aria-labelledby="varyModalLabel"
															aria-hidden="true">
															<div class="modal-dialog" role="document"
																style="max-width: 700px">
																<div class="modal-content">
																	<div class="modal-header">
																		<h5 class="modal-title" id="varyModalLabel">تفاصيل عملة المنتج</h5>
																		<button type="button" class="close"
																			data-dismiss="modal" aria-label="Close">
																			<span aria-hidden="true">&times;</span>
																		</button>
																	</div>
																	<div class="modal-body">
																		<div class="row">
																				<div class="col-4">
																					<div class="form-group mb-3">
																						<label for="currencyNameA">العملة باللغة
																							الأساسية </label> <input type="text" id="currencyNameA"
																							class="form-control" readonly
																							value="${systable.currencyNameA}">
																					</div>

																					<div class="form-group mb-3">
																						<label for="ledCurrMinCom">عمولة أدنى رصيد
																							دائنة بكل عملة </label> <input type="text"
																							id="ledCurrMinCom" class="form-control" readonly
																							value="${systable.ledCurrMinCom}">
																					</div>

																					<div class="form-group mb-3">
																						<label for="ledCurrMin"> أدنى رصيد دائن
																							بهذه العملة </label> <input type="text" id="ledCurrMin"
																							class="form-control" readonly
																							value="${systable.ledCurrMin}">
																					</div>
																					
																					<div class="form-group mb-3">
																						<label for="minAmount"> الحد الأدنى للمبلغ</label> <input type="text" id="minAmount"
																							class="form-control" readonly
																							value="${systable.minAmount}">
																					</div>
																					
																					<div class="form-group mb-3">
																					<label for="glTaxId">معرف حساب الأستاذ للضريبة </label> <input
																						type="text" id="glTaxId" class="form-control"
																						readonly value="${systable.glTaxId}">
																				</div>

																				<div class="form-group mb-3">
																						<label for="feesFlag">فعال </label>
																						<div class="custom-control custom-checkbox ">
																							<c:if
																								test="${systable.feesFlag==1}">
																								<input type="checkbox" value="1" checked
																									disabled
																									class="custom-control-input form-control"
																									id="feesFlag"
																									name="feesFlag">
																							</c:if>


																							<c:if
																								test="${systable.feesFlag==0}">
																								<input type="checkbox" value="0" disabled
																									class="custom-control-input form-control"
																									id="accountStatementFlag"
																									name="accountType.accountStatementFlag">
																							</c:if>

																							<input type='hidden' value='0'
																								name='feesFlag'> <label class="custom-control-label"
																								for="feesFlag">يدعم المنتج التكاليف</label>
																						</div>
																					</div> 
																					
																				<div class="form-group mb-3" style="padding-top: 1.8rem;">
																					<label for="operationCount">عدد عمليات التكاليف </label> <input
																						type="text" id="operationCount" class="form-control"
																						readonly value="${systable.operationCount}">
																				</div>
																				
																				<div class="form-group mb-3" style="padding-top: 1.8rem;">
																					<label for="feesPeriodId">فترة التكاليف</label> <input
																						type="text" id="feesPeriodId" class="form-control"
																						readonly value="${systable.feesPeriodId.accPeriodDescA}">
																				</div> 

																				</div>
																				<div class="col-2"></div>
																				<div class="col-4">
																				<div class="form-group mb-3">
																					<label for="currencyNameB">العملة باللغة الثانوية </label> <input
																						type="text" id="currencyNameB" class="form-control"
																						readonly value="${systable.currencyNameB}">
																				</div>
																				<div class="form-group mb-3">
																					<label for="ledCurrMaxCom">عمولة أعلى رصيد مدينة بكل عملة </label> <input
																						type="text" id="ledCurrMaxCom" class="form-control"
																						readonly value="${systable.ledCurrMaxCom}">
																				</div>
																				
																			<div class="form-group mb-3">
																					<label for="glFeesId">معرف حساب الأستاذ للمصاريف </label> <input
																						type="text" id="glFeesId" class="form-control"
																						readonly value="${systable.glFeesId}">
																				</div>
																				
																				<div class="form-group mb-3">
																						<label for="maxAmount"> الحد الأعلى للمبلغ</label> <input type="text" id="maxAmount"
																							class="form-control" readonly
																							value="${systable.maxAmount}">
																					</div>
																					
																					<div class="form-group mb-3">
																						<label for="glCommissionsId">معرف  حساب الأستاذ للعمولات</label> <input type="text" id="glCommissionsId"
																							class="form-control" readonly
																							value="${systable.glCommissionsId}">
																					</div>
																					
																					<div class="form-group mb-3">
																						<label for="taxId">اسم الضريبة باللغة الأساسية</label> <input type="text" id="taxId"
																							class="form-control" readonly
																							value="${systable.taxId.nameA}">
																					</div>
																				
																			<div class="form-group mb-3">
																					<label for="feesAmount">التكاليف في هذه العملة </label> <input
																						type="text" id="feesAmount" class="form-control input-money"
																						readonly value="${systable.feesAmount}">
																				</div>
																				
																			</div>
																		</div>

																	</div>
																	<div class="modal-footer">
																		<button type="button" class="btn mb-2 btn-secondary"
																			data-dismiss="modal">إغلاق</button>
																	</div>
																</div>
															</div>
														</div>
													</td>
													
												</tr>

											</c:forEach>

										</tbody>
									</table>
									</div>
								</div>
									</div>
									</div>
									
									<%-- <div class="tab-pane fade" id="pills-contact2" role="tabpanel"
								aria-labelledby="pills-contact-tab2">
									<div class="card-body">
									<div class="row">
								<div class="col-md-12">
								<table class="table datatables" id="dataTable-2">
										<thead>
											<tr>
												<th>#</th>
												<th>اسم الضريبة باللغة الأساسية </th>
												<th>اسم الضريبة باللغة الثانوية </th>
												<th>العمليات</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="systable" items="${accountTypeTaxs}">
												<tr>
												<td>${systable.id}</td>
													<td>${systable.taxId.nameA}</td>
													<td>${systable.taxId.nameB}</td>
													
													<td>
														<li type="button" class="fe fe-info icon-info"
														data-toggle="modal" data-target="#id_${systable.id}_id" 
														data-whatever="@mdo"></li>

														<div class="modal fade" id="id_${systable.id}_id" tabindex="-1"
															role="dialog" aria-labelledby="varyModalLabel"
															aria-hidden="true">
															<div class="modal-dialog" role="document"
																style="max-width: 700px">
																<div class="modal-content">
																	<div class="modal-header">
																		<h5 class="modal-title" id="varyModalLabel">تفاصيل ضريبة المنتج</h5>
																		<button type="button" class="close"
																			data-dismiss="modal" aria-label="Close">
																			<span aria-hidden="true">&times;</span>
																		</button>
																	</div>
																	<div class="modal-body">
																		<div class="row">
																				<div class="col-4">
																					

																					<div class="form-group mb-3">
																						<label for="isEnabledFlag">فعال </label>
																						<div class="custom-control custom-checkbox ">
																							<c:if
																								test="${systable.isEnabledFlag==1}">
																								<input type="checkbox" value="1" checked
																									disabled
																									class="custom-control-input form-control"
																									id="isEnabledFlag"
																									name="isEnabledFlag">
																							</c:if>


																							<c:if
																								test="${systable.isEnabledFlag==0}">
																								<input type="checkbox" value="0" disabled
																									class="custom-control-input form-control"
																									id="isEnabledFlag"
																									name="isEnabledFlag">
																							</c:if>

																							<input type='hidden' value='0'
																								name='isEnabledFlag'> <label class="custom-control-label"
																								for="isEnabledFlag">يدعم المنتج هذه الضريبة </label>
																						</div>
																					</div>
																					

																				</div>
																				<div class="col-2"></div>
																				<div class="col-4">
																				
																				
																				
																				
																			</div>
																		</div>

																	</div>
																	<div class="modal-footer">
																		<button type="button" class="btn mb-2 btn-secondary"
																			data-dismiss="modal">إغلاق</button>
																	</div>
																</div>
															</div>
														</div>
													</td>
													
												</tr>

											</c:forEach>

										</tbody>
									</table>
									</div>
								</div>
									</div>
									</div> --%>
									
									<div class="tab-pane fade" id="pills-contact3" role="tabpanel"
								aria-labelledby="pills-contact-tab3">
								
									<div class="card-body">
									<div class="row">
								<div class="col-md-12">
								<table class="table datatables" id="dataTable-3">
										<thead>
											<tr>
												<th>طبيعة العميل</th>
													<th>الوصف</th>
													<th>العمليات</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="varAccTypNat" items="${accountTypeNatures}">
												<tr>
												<td>${varAccTypNat.customerNatureId.nameA}</td>
												<td>${varAccTypNat.description}</td>
													
													<td>
														<li type="button" class="fe fe-info icon-info"
														data-toggle="modal" data-target="#id_${varAccTypNat.id}_id" 
														data-whatever="@mdo"></li>

														<div class="modal fade" id="id_${varAccTypNat.id}_id" tabindex="-1"
															role="dialog" aria-labelledby="varyModalLabel"
															aria-hidden="true">
															<div class="modal-dialog" role="document"
																style="max-width: 700px">
																<div class="modal-content">
																	<div class="modal-header">
																		<h5 class="modal-title" id="varyModalLabel">تفاصيل طبيعة عملاء المنتج</h5>
																		<button type="button" class="close"
																			data-dismiss="modal" aria-label="Close">
																			<span aria-hidden="true">&times;</span>
																		</button>
																	</div>
																	<div class="modal-body">
																		<div class="row">
																				<div class="col-4">
																					<div class="form-group mb-3">
																						<label for="customerNatureId">اسم الطبيعة باللغة الأساسية</label> <input type="text" id="customerNatureId"
																							class="form-control" readonly
																							value="${varAccTypNat.customerNatureId.nameA}">
																					</div>
																					
																					<div class="form-group mb-3">
																					<label for="description"> الوصف </label> <input
																						type="text" id="description" class="form-control"
																						readonly value="${varAccTypNat.description}">
																				</div>

																				</div>
																				<div class="col-2"></div>
																				<div class="col-4">
																				<div class="form-group mb-3">
																						<label for="customerNatureId1">اسم الطبيعة باللغة الثانوية</label> <input type="text" id="customerNatureId1"
																							class="form-control" readonly
																							value="${varAccTypNat.customerNatureId.nameB}">
																				</div>
																				
																				<div class="form-group mb-3">
																						<label for="isEnabledFlag">فعال </label>
																						<div class="custom-control custom-checkbox ">
																							<c:if
																								test="${varAccTypNat.isEnabledTaxFlag==1}">
																								<input type="checkbox" value="1" checked
																									disabled
																									class="custom-control-input form-control"
																									id="isEnabledTaxFlag"
																									name="isEnabledTaxFlag">
																							</c:if>


																							<c:if
																								test="${varAccTypNat.isEnabledTaxFlag==0}">
																								<input type="checkbox" value="0" disabled
																									class="custom-control-input form-control"
																									id="isEnabledTaxFlag"
																									name="isEnabledTaxFlag">
																							</c:if>

																							<input type='hidden' value='0'
																								name='isEnabledFlag'> <label class="custom-control-label"
																								for="isEnabledFlag">يدعم المنتج هذه الضريبة </label>
																						</div>
																					</div>
																				
																			</div>
																		</div>

																	</div>
																	<div class="modal-footer">
																		<button type="button" class="btn mb-2 btn-secondary"
																			data-dismiss="modal">إغلاق</button>
																	</div>
																</div>
															</div>
														</div>
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
								<div class="row">

									<div class="form-group col-md-12" align="left"
										style="margin-top: 2rem;">
										<a href="<c:url value='/AccountType/index' />">
											<button class="btn btn-primary" type="button" id="button">&nbsp
												&nbsp رجوع &nbsp &nbsp</button>
										</a>

									</div>
								</div>
								</div>
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


	var nameB = document.getElementById("categoryIdB");
	if (nameB.value == "DEPOSIT") {
		document.getElementById("show").style.display = '';


	} else {
		document.getElementById("show").style.display = 'none';
		//$("#categoryId").val("");

	}
	$(document).ready(function() {

		$('#AccountType-elements').addClass("show");
		$('#AccountType').addClass("active-color");
		$('#AccType').addClass("active-color");

	});
	$('.input-money').mask("#.##0,000", {
		reverse : true
	});

	
	
	$('#dataTable-2').DataTable({
		autoWidth : true,
		"lengthMenu" : [ [ 8, 32, 64, -1 ], [ 8, 32, 64, "All" ] ]
	});
	
	$('#dataTable-3').DataTable({
		autoWidth : true,
		"lengthMenu" : [ [ 8, 32, 64, -1 ], [ 8, 32, 64, "All" ] ]
	});
	
	(function() {
		'use strict';
		window.addEventListener('load', function() {
			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.getElementsByClassName('needs-validation');
			// Loop over them and prevent submission
			var validation = Array.prototype.filter.call(forms, function(form) {
				form.addEventListener('submit', function(event) {
					if (form.checkValidity() === false) {
						event.preventDefault();
						event.stopPropagation();
					}
					form.classList.add('was-validated');
				}, false);
			});
		}, false);
	})();

	(function() {
		'use strict';
		window.addEventListener('load', function() {
			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.getElementsByClassName('needs-validation');
			// Loop over them and prevent submission
			var validation = Array.prototype.filter.call(forms, function(form) {
				form.addEventListener('submit', function(event) {
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
