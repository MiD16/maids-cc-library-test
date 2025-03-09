<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/layout/header.jsp"%>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style>
.select2-container {
   width: 100% !important;
}
</style>
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
						class="black-text active text-uppercase " href="#"><span>

								<c:if test="${accountTypeForm.accountType.id==null }">
						إضافة منتج حساب 
						</c:if> <c:if test="${accountTypeForm.accountType.id!=null }">
						تعديل منتج حساب 
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

			<!-- .card -->
			<!-- .card -->
			<div class="card my-4">
				<div class="card-header">
					<c:if test="${ accountTypeForm.accountType.id==null}">
						<strong class="card-title"> إضافة منتج حساب </strong>
					</c:if>
					<c:if test="${ accountTypeForm.accountType.id!=null}">
						
							
								<strong> تعديل منتج حساب -<span style="color: #d1a923">
							${accountTypeForm.accountType.accTypeNameA }</span>
					</strong>
					</c:if>
				</div>
				
				<div class="card-body">
					<form:form name="example-form" id="example-form" method="post"
						action="${pageContext.request.contextPath}/AccountType/save"
						modelAttribute="accountTypeForm">

						<div>
							<h3>معلومات المنتج</h3>
							<section class="body ">
								<div class="row">
									<input id="accountType" name="accountType.id" type="hidden"
										class="form-control "
										value="${accountTypeForm.accountType.id}">

									<div class="row ">

										<div class="form-group col-md-6">

											<h5 style="color: #d1a923">معلومات المنتج الأساسية</h5>

										</div>
										<div class="form-group col-md-6"></div>

										<div class="form-group col-md-6">
											<label for="accTypeNameA">الاسم باللغة الأساسية *</label> <label
												style="display: none" class="error-label erroraccTypeNameA"
												for="accTypeNameA">هذا الحقل مطلوب.</label> <input
												id="accTypeNameA" required
												value="${accountTypeForm.accountType.accTypeNameA}"
												name="accountType.accTypeNameA" type="text"
												class="form-control  ">
										</div>

										<div class="form-group col-md-6">
											<label for="accTypeNameB">الاسم باللغة الثانوية *</label> <label
												style="display: none" class="error-label erroraccTypeNameB"
												for="accTypeNameB">هذا الحقل مطلوب.</label> <input
												id="accTypeNameB" required
												value="${accountTypeForm.accountType.accTypeNameB}"
												name="accountType.accTypeNameB" type="text"
												class="form-control  ">
										</div>

										<div class="form-group col-md-6">
											<label for="accTypeCode">رمز منتج الحساب </label> <label
												style="display: none" class="error-label erroraccTypeCode"
												for="accTypeCode">هذا الحقل مطلوب.</label> <input
												type="text"
												value="${accountTypeForm.accountType.accTypeCode}"
												name="accountType.accTypeCode" readonly id="accTypeCode"
												class="form-control">
										</div>



										<div class="form-group col-md-6">
											<label for="categoryId">صنف المنتج *</label> <label
												style="display: none" class="error-label errorcategoryId"
												for="categoryId">هذا الحقل مطلوب.</label> <select required
												onchange="showDepositFields()" class="form-control select2" 
												id="categoryId" name="accountType.categoryId">
												<option value="" selected>اختيار المنتج</option>
												<optgroup label="اختيار المنتج المطلوب">
													<c:forEach var="ind" items="${aTypeCategories}">

														<c:if
															test="${accountTypeForm.accountType.categoryId.id==ind.id}">
															<option nameB="${ind.nameB}" value="${ind.id}" selected>${ind.nameA}</option>
														</c:if>
														<c:if
															test="${accountTypeForm.accountType.categoryId.id!=ind.id}">
															<option nameB="${ind.nameB}" value="${ind.id}">${ind.nameA}</option>
														</c:if>


													</c:forEach>
												</optgroup>

											</select>
										</div>



										<div class="form-group col-md-6">
											<label for="debitInterestId">الفائدة المدينة * </label>
											<label
												style="display: none" class="error-label errordebitInterestId"
												for="debitInterestId">هذا الحقل مطلوب.</label> <select
												class="form-control select2" id="debitInterestId" required
												name="accountType.debitInterestId">
												<option value="" selected>اختيار الفائدة الدائنة</option>
												<optgroup label="اختيار الفائدة المطلوب">
													<c:forEach var="ind" items="${accDebitInterests}">

														<c:if
															test="${accountTypeForm.accountType.debitInterestId.id==ind.id}">
															<option value="${ind.id}" selected>${ind.descriptionA}</option>
														</c:if>
														<c:if
															test="${accountTypeForm.accountType.debitInterestId.id!=ind.id}">
															<option value="${ind.id}">${ind.descriptionA}</option>
														</c:if>

													</c:forEach>
												</optgroup>

											</select>
										</div>
										<div class="col-md-6 form-group" id="divCreditInterestId">
											<label for="creditInterestId">الفائدة الدائنة *</label>
											<label
												style="display: none" class="error-label errorcreditInterestId"
												for="creditInterestId">هذا الحقل مطلوب.</label> <select
												class="form-control select2" id="creditInterestId" required
												name="accountType.creditInterestId">
												<option value="" selected>اختيار الفائدة الدائنة</option>
												<optgroup label="اختيار الفائدة  المطلوب">
													<c:forEach var="ind" items="${accCreditInterests}">

														<c:if
															test="${accountTypeForm.accountType.creditInterestId.id==ind.id}">
															<option value="${ind.id}" selected>${ind.descriptionA}</option>
														</c:if>
														<c:if
															test="${accountTypeForm.accountType.creditInterestId.id!=ind.id}">
															<option value="${ind.id}">${ind.descriptionA}</option>
														</c:if>

													</c:forEach>
												</optgroup>

											</select>
										</div>

										<div class="form-group col-md-6">
											<div class="form-group">
												<label for="depositPeriodFlag"> فعال *</label> <label
													style="display: none" class="error" for="depositPeriodFlag">هذا
													الحقل مطلوب.</label>

												<div class="custom-control custom-checkbox ">
													<c:if
														test="${accountTypeForm.accountType.id!=null && accountTypeForm.accountType.depositPeriodFlag==1}">
														<input type="checkbox" value="1" checked
															class="custom-control-input form-control"
															id="depositPeriodFlag"
															name="accountType.depositPeriodFlag"
															onchange="toggledepositPeriodFlag()">
													</c:if>


													<c:if
														test="${accountTypeForm.accountType.id==null || accountTypeForm.accountType.depositPeriodFlag==0}">
														<input type="checkbox" value="1"
															class="custom-control-input form-control"
															id="depositPeriodFlag"
															name="accountType.depositPeriodFlag"
															onchange="toggledepositPeriodFlag()">
													</c:if>

													<input type='hidden' value='0'
														name="accountType.depositPeriodFlag"> <label
														class="custom-control-label" for="depositPeriodFlag">يدعم المنتج بدء احتساب الفوائد خلال فترة زمنية </label>
														<label>في حال عدم تفعيل الخيار سيتم بدء احتساب الفوائد عند أول عملية إيداع</label>
												</div>
											</div>
										</div>

										<div class="form-group col-md-6">
											<label for="maturityPeriodId">فترة بدء احتساب الفوائد</label>
											<select class="form-control select2" id="maturityPeriodId"
												disabled name="accountType.maturityPeriodId">
												<option value="" selected>اختيار فترة بدء الاحتساب</option>
												<optgroup label="اختيار الفترة المطلوبة">
													<c:forEach var="ind" items="${accPeriods}">

														<c:if
															test="${accountTypeForm.accountType.maturityPeriodId.id==ind.id}">
															<option value="${ind.id}" selected>${ind.accPeriodDescA}</option>
														</c:if>
														<c:if
															test="${accountTypeForm.accountType.maturityPeriodId.id!=ind.id}">
															<option value="${ind.id}">${ind.accPeriodDescA}</option>
														</c:if>

													</c:forEach>
												</optgroup>

											</select>
										</div>
										
										<div class="form-group col-md-6">
											<div class="form-group">
												<label for="interestPeriodFlag"> فعال *</label> <label
													style="display: none" class="error" for="interestPeriodFlag">هذا
													الحقل مطلوب.</label>

												<div class="custom-control custom-checkbox ">
													<c:if
														test="${accountTypeForm.accountType.id!=null && accountTypeForm.accountType.interestPeriodFlag==1}">
														<input type="checkbox" value="1" checked
															class="custom-control-input form-control"
															id="interestPeriodFlag"
															name="accountType.interestPeriodFlag"
															onchange="clearMonDay()">
													</c:if>


													<c:if
														test="${accountTypeForm.accountType.id==null || accountTypeForm.accountType.interestPeriodFlag==0}">
														<input type="checkbox" value="1"
															class="custom-control-input form-control"
															id="interestPeriodFlag"
															name="accountType.interestPeriodFlag"
															onchange="clearMonDay()">
													</c:if>

													<input type='hidden' value='0'
														name="accountType.interestPeriodFlag"> <label
														class="custom-control-label" for="interestPeriodFlag"> يدعم المنتج بدء احتساب استحقاق الفوائد خلال فترة زمنية </label>
												</div>
											</div>
										</div>
										
										<div class=" row col-md-6 form-group" >
											<div class="form-group col-md-6">
											<label for="monthInterest">الشهر:</label> <select id="monthInterest" class="form-control select2 col-md-6" 
											name="accountType.monthInterest">
												<c:if test="${accountTypeForm.accountType.id == null || accountTypeForm.accountType.monthInterest == null }">
												<option value="" selected>اختيار الشهر  </option>
												<option value="01">كانون الثاني</option>
												<option value="02">شباط</option>
												<option value="03">آذار</option>
												<option value="04">نيسان</option>
												<option value="05">أيار</option>
												<option value="06">حزيران</option>
												<option value="07">تموز</option>
												<option value="08">آب</option>
												<option value="09">أيلول</option>
												<option value="10">تشرين الأول</option>
												<option value="11" >تشرين الثاني</option>
												<option value="12">كانون الأول</option>
												</c:if>
												<c:if test="${accountTypeForm.accountType.id != null }">
												
												<c:if test="${accountTypeForm.accountType.monthInterest == 1 }">
												<option value="" selected>اختيار الشهر  </option>
												<option value="01" selected>كانون الثاني</option>
												<option value="02" >شباط</option>
												<option value="03" >آذار</option>
												<option value="04">نيسان</option>
												<option value="05">أيار</option>
												<option value="06">حزيران</option>
												<option value="07">تموز</option>
												<option value="08">آب</option>
												<option value="09">أيلول</option>
												<option value="10">تشرين الأول</option>
												<option value="11" >تشرين الثاني</option>
												<option value="12">كانون الأول</option>
												</c:if>
												
												<c:if test="${accountTypeForm.accountType.monthInterest == 2 }">
												<option value="" selected>اختيار الشهر  </option>
												<option value="01">كانون الثاني</option>
												<option value="02" selected>شباط</option>
												<option value="03" >آذار</option>
												<option value="04">نيسان</option>
												<option value="05">أيار</option>
												<option value="06">حزيران</option>
												<option value="07">تموز</option>
												<option value="08">آب</option>
												<option value="09">أيلول</option>
												<option value="10">تشرين الأول</option>
												<option value="11" >تشرين الثاني</option>
												<option value="12">كانون الأول</option>
												</c:if>
												
												<c:if test="${accountTypeForm.accountType.monthInterest == 3 }">
												<option value="" selected>اختيار الشهر  </option>
												<option value="01">كانون الثاني</option>
												<option value="02">شباط</option>
												<option value="03" selected>آذار</option>
												<option value="04">نيسان</option>
												<option value="05">أيار</option>
												<option value="06">حزيران</option>
												<option value="07">تموز</option>
												<option value="08">آب</option>
												<option value="09">أيلول</option>
												<option value="10">تشرين الأول</option>
												<option value="11" >تشرين الثاني</option>
												<option value="12">كانون الأول</option>
												</c:if>
												
												<c:if test="${accountTypeForm.accountType.monthInterest == 4 }">
												<option value="" selected>اختيار الشهر  </option>
												<option value="01">كانون الثاني</option>
												<option value="02">شباط</option>
												<option value="03">آذار</option>
												<option value="04" selected>نيسان</option>
												<option value="05">أيار</option>
												<option value="06">حزيران</option>
												<option value="07">تموز</option>
												<option value="08">آب</option>
												<option value="09">أيلول</option>
												<option value="10">تشرين الأول</option>
												<option value="11" >تشرين الثاني</option>
												<option value="12">كانون الأول</option>
												</c:if>
												
												<c:if test="${accountTypeForm.accountType.monthInterest == 5 }">
												<option value="" selected>اختيار الشهر  </option>
												<option value="01">كانون الثاني</option>
												<option value="02">شباط</option>
												<option value="03">آذار</option>
												<option value="04" >نيسان</option>
												<option value="05" selected>أيار </option>
												<option value="06">حزيران</option>
												<option value="07">تموز</option>
												<option value="08">آب</option>
												<option value="09">أيلول</option>
												<option value="10">تشرين الأول</option>
												<option value="11" >تشرين الثاني</option>
												<option value="12">كانون الأول</option>
												</c:if>
												
												<c:if test="${accountTypeForm.accountType.monthInterest == 6 }">
												<option value="" selected>اختيار الشهر  </option>
												<option value="01">كانون الثاني</option>
												<option value="02">شباط</option>
												<option value="03">آذار</option>
												<option value="04" >نيسان</option>
												<option value="05">أيار</option>
												<option value="06" selected>حزيران</option>
												<option value="07">تموز</option>
												<option value="08">آب</option>
												<option value="09">أيلول</option>
												<option value="10">تشرين الأول</option>
												<option value="11" >تشرين الثاني</option>
												<option value="12">كانون الأول</option>
												</c:if>
												
												<c:if test="${accountTypeForm.accountType.monthInterest == 7 }">
												<option value="" selected>اختيار الشهر  </option>
												<option value="01">كانون الثاني</option>
												<option value="02">شباط</option>
												<option value="03">آذار</option>
												<option value="04" >نيسان</option>
												<option value="05">أيار</option>
												<option value="06">حزيران</option>
												<option value="07" selected>تموز</option>
												<option value="08">آب</option>
												<option value="09">أيلول</option>
												<option value="10">تشرين الأول</option>
												<option value="11" >تشرين الثاني</option>
												<option value="12">كانون الأول</option>
												</c:if>
												
												<c:if test="${accountTypeForm.accountType.monthInterest == 8 }">
												<option value="" selected>اختيار الشهر  </option>
												<option value="01">كانون الثاني</option>
												<option value="02">شباط</option>
												<option value="03">آذار</option>
												<option value="04" >نيسان</option>
												<option value="05">أيار</option>
												<option value="06">حزيران</option>
												<option value="07">تموز</option>
												<option value="08" selected>آب</option>
												<option value="09">أيلول</option>
												<option value="10">تشرين الأول</option>
												<option value="11" >تشرين الثاني</option>
												<option value="12">كانون الأول</option>
												</c:if>
												
												<c:if test="${accountTypeForm.accountType.monthInterest == 9 }">
												<option value="" selected>اختيار الشهر  </option>
												<option value="01">كانون الثاني</option>
												<option value="02">شباط</option>
												<option value="03">آذار</option>
												<option value="04" >نيسان</option>
												<option value="05">أيار</option>
												<option value="06">حزيران</option>
												<option value="07">تموز</option>
												<option value="08">آب</option>
												<option value="09" selected>أيلول</option>
												<option value="10">تشرين الأول</option>
												<option value="11" >تشرين الثاني</option>
												<option value="12">كانون الأول</option>
												</c:if>
												
												<c:if test="${accountTypeForm.accountType.monthInterest == 10 }">
												<option value="" selected>اختيار الشهر  </option>
												<option value="01">كانون الثاني</option>
												<option value="02">شباط</option>
												<option value="03">آذار</option>
												<option value="04" >نيسان</option>
												<option value="05">أيار</option>
												<option value="06">حزيران</option>
												<option value="07">تموز</option>
												<option value="08">آب</option>
												<option value="09">أيلول</option>
												<option value="10" selected>تشرين الأول</option>
												<option value="11" >تشرين الثاني</option>
												<option value="12">كانون الأول</option>
												</c:if>
												
												<c:if test="${accountTypeForm.accountType.monthInterest == 11 }">
												<option value="" selected>اختيار الشهر  </option>
												<option value="01">كانون الثاني</option>
												<option value="02">شباط</option>
												<option value="03">آذار</option>
												<option value="04" >نيسان</option>
												<option value="05">أيار</option>
												<option value="06">حزيران</option>
												<option value="07">تموز</option>
												<option value="08">آب</option>
												<option value="09">أيلول</option>
												<option value="10">تشرين الأول</option>
												<option value="11" selected>تشرين الثاني</option>
												<option value="12">كانون الأول</option>
												</c:if>
												
												<c:if test="${accountTypeForm.accountType.monthInterest == 12 }">
												<option value="" selected>اختيار الشهر  </option>
												<option value="01">كانون الثاني</option>
												<option value="02">شباط</option>
												<option value="03">آذار</option>
												<option value="04" >نيسان</option>
												<option value="05">أيار</option>
												<option value="06">حزيران</option>
												<option value="07">تموز</option>
												<option value="08">آب</option>
												<option value="09">أيلول</option>
												<option value="10">تشرين الأول</option>
												<option value="11" >تشرين الثاني</option>
												<option value="12" selected>كانون الأول</option>
												</c:if>
												</c:if>
										</select>
										</div>
										
										<div class="form-group col-md-6">
										<input type="hidden" id="dayNumber" name="accountTyp777" value="${accountType.dayInterest }">
										<label for="dayInterest">اليوم:</label> 
										<select id="dayInterest" class="form-control select2 col-md-6" name="accountType.dayInterest">
											
										</select> 
										</div>
										</div> 

										 


										<div class="form-group col-md-6">
											<label for="interestPeriodId">فترة استحقاق الفوائد</label> <select
												class="form-control select2" id="interestPeriodId"
												name="accountType.interestPeriodId">
												<option value="" selected>اختيار فترة الاستحقاق</option>
												<optgroup label="اختيار الفترة المطلوبة">
													<c:forEach var="ind" items="${accPeriods}">

														<c:if
															test="${accountTypeForm.accountType.interestPeriodId.id==ind.id}">
															<option value="${ind.id}" selected>${ind.accPeriodDescA}</option>
														</c:if>
														<c:if
															test="${accountTypeForm.accountType.interestPeriodId.id!=ind.id}">
															<option value="${ind.id}">${ind.accPeriodDescA}</option>
														</c:if>

													</c:forEach>
												</optgroup>

											</select>
										</div>
										
										<div class="form-group col-md-6">
											<label for="numberOfAccounts">عدد الحسابات المسموح للعميل بفتحها *</label> <label
												style="display: none" class="error-label errornumberOfAccounts"
												for="numberOfAccounts">هذا الحقل مطلوب.</label> <input
												id=numberOfAccounts required  onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"
												value="${accountTypeForm.accountType.numberOfAccounts}"
												name="accountType.numberOfAccounts" type="text"
												class="form-control  ">
										</div>


										<%-- <div class="col-md-6" >
									<div class="form-group">
										<label for="note">ملاحظات</label>
										<textarea class="form-control" name="note" id="note" rows="4">${accountTypeForm.accountType.note}</textarea>
									</div>
								</div> --%>
									</div>

									<div class="row col-md-12" style="display: none" id="show">

										<div class="form-group col-md-6">

											<h5 style="color: #d1a923">معلومات الوديعة</h5>

										</div>
										<div class="form-group col-md-6"></div>



										<div class="form-group col-md-6">
											<label for="renwalPeriodId">مدة ربط الوديعة</label> <select
												class="form-control select2" id="renwalPeriodId"
												name="accountType.renwalPeriodId">
												<option value="" selected>اختيار المدة</option>
												<optgroup label="اختيار الفترة المطلوبة">
													<c:forEach var="ind" items="${accPeriods}">

														<c:if
															test="${accountTypeForm.accountType.renwalPeriodId.id==ind.id}">
															<option value="${ind.id}" selected>${ind.accPeriodDescA}</option>
														</c:if>
														<c:if
															test="${accountTypeForm.accountType.renwalPeriodId.id!=ind.id}">
															<option value="${ind.id}">${ind.accPeriodDescA}</option>
														</c:if>

													</c:forEach>
												</optgroup>

											</select>
										</div>


										<div class="form-group col-md-6">
											<label for="permissionPeriodId">فترة السماح </label> <select
												class="form-control select2" id="permissionPeriodId"
												name="accountType.permissionPeriodId">
												<option value="" selected>اختيار فترة السماح</option>
												<optgroup label="اختيار الفترة المطلوبة">
													<c:forEach var="ind" items="${accPeriods}">

														<c:if
															test="${accountTypeForm.accountType.permissionPeriodId.id==ind.id}">
															<option value="${ind.id}" selected>${ind.accPeriodDescA}</option>
														</c:if>
														<c:if
															test="${accountTypeForm.accountType.permissionPeriodId.id!=ind.id}">
															<option value="${ind.id}">${ind.accPeriodDescA}</option>
														</c:if>

													</c:forEach>
												</optgroup>

											</select>
										</div>

										<div class="form-group col-md-6">
											<label for="pentalyBreakDeposit">غرامة كسر الوديعة</label> <input
												name="accountType.pentalyBreakDeposit" type="text"
												id="pentalyBreakDeposit"
												value="${accountTypeForm.accountType.pentalyBreakDeposit}"
												class="form-control input-money">
										</div>

									</div>

									<div class="form-group col-md-6">

										<h5 style="color: #d1a923">حسابات الأستاذ المرتبطة
											بالمنتج</h5>

									</div>
									<div class="form-group col-md-6"></div>

									<div class="form-group col-md-6">
										<label for="glId"> الحساب الوسيط * </label> <label
											style="display: none" class="error-label errorglId"
											for="glId">هذا الحقل مطلوب.</label> <select
											class="form-control select2" id="glId" required
											onchange="changCode()" name="accountType.glId">

											<option value="" selected>اختيار حساب الوسيط الدائن</option>

											<optgroup label="اختيار الحساب المطلوب">
												<c:forEach var="ind" items="${generalLedgers}">
													<c:if test="${accountTypeForm.accountType.glId==ind.id}">
														<option value="${ind.id}" selected>${ind.description_a}
															- ${ind.glNumber}</option>
													</c:if>
													<c:if test="${accountTypeForm.accountType.glId!=ind.id}">
														<option value="${ind.id}">${ind.description_a}-
															${ind.glNumber}</option>
													</c:if>
												</c:forEach>
											</optgroup>
										</select>
									</div>

									<div class="form-group col-md-6">
										<label for="glCreditId"> حساب الأستاذ الوسيط الدائن *</label>
										<select class="form-control select2" id="glCreditId" required
											name="accountType.glCreditId">

											<option value="" selected>اختيار حساب الأستاذ الوسيط</option>

											<optgroup label="اختيار الحساب المطلوب">
												<c:forEach var="ind" items="${generalLedgers}">
													<c:if
														test="${accountTypeForm.accountType.glCreditId==ind.id}">
														<option value="${ind.id}" selected>${ind.description_a}
															- ${ind.glNumber}</option>
													</c:if>
													<c:if
														test="${accountTypeForm.accountType.glCreditId!=ind.id}">
														<option value="${ind.id}">${ind.description_a}-
															${ind.glNumber}</option>
													</c:if>
												</c:forEach>
											</optgroup>
										</select>
									</div>


									<div class="form-group col-md-6">
										<label for="glDebitId"> حساب الفائدة الوسيط المدين *</label> <label
											style="display: none" class="error-label errorglDebitId"
											for="glDebitId">هذا الحقل مطلوب.</label> <select
											class="form-control select2" id="glDebitId" required
											name="accountType.glDebitId">

											<option value="" selected>اختيار حساب الوسيط المدين</option>
											<optgroup label="اختيار الحساب المطلوب">
												<c:forEach var="ind" items="${generalLedgers}">
													<c:if
														test="${accountTypeForm.accountType.glDebitId==ind.id}">
														<option value="${ind.id}" selected>${ind.description_a}
															- ${ind.glNumber}</option>
													</c:if>
													<c:if
														test="${accountTypeForm.accountType.glDebitId!=ind.id}">
														<option value="${ind.id}">${ind.description_a}-
															${ind.glNumber}</option>
													</c:if>
												</c:forEach>
											</optgroup>
										</select>
									</div>

									<div class="row">

										<div class="form-group col-md-6">

											<h5 style="color: #d1a923">خصائص منتج الحساب</h5>

										</div>
										<div class="form-group col-md-6"></div>

										<div class="col-md-6">
											<div class="form-group">
												<label for="atmFlag"> فعال *</label> <label
													style="display: none" class="error" for="atmFlag">هذا
													الحقل مطلوب.</label>


												<div class="custom-control custom-checkbox ">
													<c:if
														test="${accountTypeForm.accountType.id!=null && accountTypeForm.accountType.atmFlag==1}">
														<input type="checkbox" value="1" checked
															class="custom-control-input form-control" id="atmFlag"
															name="accountType.atmFlag">
													</c:if>


													<c:if
														test="${accountTypeForm.accountType.id==null || accountTypeForm.accountType.atmFlag==0}">
														<input type="checkbox" value="1"
															class="custom-control-input form-control" id="atmFlag"
															name="accountType.atmFlag">
													</c:if>

													<input type='hidden' value='0' name='accountType.atmFlag'>
													<label class="custom-control-label" for="atmFlag">يدعم
														المنتج سحب من جهاز ATM</label>
												</div>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label for="chequeFlag"> فعال *</label> <label
													style="display: none" class="error" for="chequeFlag">هذا
													الحقل مطلوب.</label>
												<div class="custom-control custom-checkbox ">
													<c:if
														test="${accountTypeForm.accountType.id!=null && accountTypeForm.accountType.chequeFlag==1}">
														<input type="checkbox" value="1" checked
															class="custom-control-input form-control" id="chequeFlag"
															name="accountType.chequeFlag">
													</c:if>


													<c:if
														test="${accountTypeForm.accountType.id==null || accountTypeForm.accountType.chequeFlag==0}">
														<input type="checkbox" value="1"
															class="custom-control-input form-control" id="chequeFlag"
															name="accountType.chequeFlag">
													</c:if>

													<input type='hidden' value='0'
														name='accountType.chequeFlag'> <label
														class="custom-control-label" for="chequeFlag">يدعم
														المنتج الشيكات</label>
												</div>
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label for="interestTakeFlag"> فعال *</label> <label
													style="display: none" class="error" for="interestTakeFlag">هذا
													الحقل مطلوب.</label>
												<div class="custom-control custom-checkbox ">
													<c:if
														test="${accountTypeForm.accountType.id!=null && accountTypeForm.accountType.interestTakeFlag==1}">
														<input type="checkbox" value="1" checked
															class="custom-control-input form-control"
															id="interestTakeFlag" name="accountType.interestTakeFlag">
													</c:if>


													<c:if
														test="${accountTypeForm.accountType.id==null || accountTypeForm.accountType.interestTakeFlag==0}">
														<input type="checkbox" value="1"
															class="custom-control-input form-control"
															id="interestTakeFlag" name="accountType.interestTakeFlag">
													</c:if>

													<input type='hidden' value='0'
														name='accountType.interestTakeFlag'> <label
														class="custom-control-label" for="interestTakeFlag">يدعم
														المنتج الفوائد</label>
												</div>
											</div>
										</div>
										
										<div class="col-md-6">
											<div class="form-group">
												<label for="forInterestCompilationFlag"> فعال *</label> <label
													style="display: none" class="error" for="forInterestCompilationFlag">هذا
													الحقل مطلوب.</label>
												<div class="custom-control custom-checkbox ">
													<c:if
														test="${accountTypeForm.accountType.id!=null && accountTypeForm.accountType.forInterestCompilationFlag==1}">
														<input type="checkbox" value="1" checked
															class="custom-control-input form-control"
															id="forInterestCompilationFlag" name="accountType.forInterestCompilationFlag">
													</c:if>


													<c:if
														test="${accountTypeForm.accountType.id==null || accountTypeForm.accountType.forInterestCompilationFlag==0}">
														<input type="checkbox" value="1"
															class="custom-control-input form-control"
															id="forInterestCompilationFlag" name="accountType.forInterestCompilationFlag">
													</c:if>

													<input type='hidden' value='0'
														name='accountType.forInterestCompilationFlag'> <label
														class="custom-control-label" for="forInterestCompilationFlag">قابلية ترصيد
														الفوائد ضمن هذا المنتج</label>
												</div>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label for="passBookTakeFlag"> فعال *</label> <label
													style="display: none" class="error" for="passBookTakeFlag">هذا
													الحقل مطلوب.</label>
												<div class="custom-control custom-checkbox ">
													<c:if
														test="${accountTypeForm.accountType.id!=null && accountTypeForm.accountType.passBookTakeFlag==1}">
														<input type="checkbox" value="1" checked
															class="custom-control-input form-control"
															id="passBookTakeFlag" name="accountType.passBookTakeFlag">
													</c:if>


													<c:if
														test="${accountTypeForm.accountType.id==null || accountTypeForm.accountType.passBookTakeFlag==0}">
														<input type="checkbox" value="1"
															class="custom-control-input form-control"
															id="passBookTakeFlag" name="accountType.passBookTakeFlag">
													</c:if>

													<input type='hidden' value='0'
														name='accountType.passBookTakeFlag'> <label
														class="custom-control-label" for="passBookTakeFlag">يدعم
														المنتج دفتر توفير</label>
												</div>
											</div>
										</div>

										<div class="col-md-6">
											<div class="form-group">
												<label for="accountStatementFlag"> فعال *</label> <label
													style="display: none" class="error"
													for="accountStatementFlag">هذا الحقل مطلوب.</label>


												<div class="custom-control custom-checkbox ">
													<c:if
														test="${accountTypeForm.accountType.id!=null && accountTypeForm.accountType.accountStatementFlag==1}">
														<input type="checkbox" value="1" checked
															class="custom-control-input form-control"
															id="accountStatementFlag"
															name="accountType.accountStatementFlag">
													</c:if>


													<c:if
														test="${accountTypeForm.accountType.id==null || accountTypeForm.accountType.accountStatementFlag==0}">
														<input type="checkbox" value="1"
															class="custom-control-input form-control"
															id="accountStatementFlag"
															name="accountType.accountStatementFlag">
													</c:if>

													<input type='hidden' value='0'
														name='accountType.accountStatementFlag'> <label
														class="custom-control-label" for="accountStatementFlag">يدعم
														المنتج عملية كشف الحساب</label>
												</div>
											</div>
										</div>

										

									</div>


									
								</div>
							</section>

							<h3>عملات المنتج</h3>
							<section class="body ">
								<div class="row">
									<div class="form-group col-md-6">
										<label for="currencyId"> عملة المنتج * </label> <label
												style="display: none" class="error-label errorcurrencyId"
												for="currencyId">هذا الحقل مطلوب.</label> <select onchange="addCurrencyName()"
											class="form-control select2" id="currencyId" name="currencyId">
											<option value="" selected>اختيار عملة المنتج</option>
												<optgroup label="حسب النوع">
													<c:forEach var="ind" items="${accCurrencies}">
														<option nameb2="${ind.nameB}"
															namea="${ind.nameA}" value="${ind.id}" >${ind.nameA}</option>

													</c:forEach>
												</optgroup>
										</select>
									</div>

									<div class="form-group col-md-6"></div>
									
									<div class="form-group col-md-6">
										<label for="currencyNameAC">اسم العملة باللغة الأساسية
										</label> <input id="currencyNameAC" readonly
											name="currencyNameA" type="text"
											class="form-control  ">
									</div>

									<div class="form-group col-md-6">
										<label for="currencyNameBC">اسم العملة باللغة الثانوية
										</label> <input id="currencyNameBC" readonly
											name="currencyNameB" type="text"
											class="form-control  ">
									</div>

									<div class="form-group col-md-6">
										<label for="ledCurrMinComC"> عمولة أدنى رصيد دائنة بكل
											عملة*</label> <label style="display: none"
											class="error-label errorledCurrMinComC" for="ledCurrMinComC">هذا
											الحقل مطلوب.</label> <input id="ledCurrMinComC" onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"
											name="ledCurrMinCom" type="text"
											class="form-control  input-percent">
									</div>
									
									<div class="form-group col-md-6">
										<label for="ledCurrMaxComC"> عمولة أعلى رصيد مدينة بكل عملة*</label> <label style="display: none"
											class="error-label errorledCurrMaxCom" for="ledCurrMaxComC">هذا
											الحقل مطلوب.</label> <input id="ledCurrMaxComC" onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"
											name="ledCurrMaxCom" type="text"
											class="form-control  input-percent">
									</div>
									
									<div class="form-group col-md-6">
										<label for="ledCurrMinC"> أدنى رصيد دائن بهذه العملة*</label> <label style="display: none"
											class="error-label errorledCurrMin" for="ledCurrMinC">هذا
											الحقل مطلوب.</label> <input id="ledCurrMinC" onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"
											name="ledCurrMin" type="text"
											class="form-control  ">
									</div>
									
									<div class="form-group col-md-6"></div>
									
									<div class="form-group col-md-6">
										<label for="minAmountC">الحد الأدنى للمبلغ</label> <input
											name="minAmount" type="text"
											id="minAmountC"
											onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"
											class="form-control">
									</div>
									
									<div class="form-group col-md-6">
										<label for="maxAmountC">الحد الأعلى للمبلغ</label> <input
											name="maxAmount" type="text"
											id="maxAmountC"
											onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"
											class="form-control">
									</div>
									
									<div class="form-group col-md-6">
										<label for="glCommissionsId"> حساب الأستاذ للعمولات *</label>
										<select class="form-control select2" id="glCommissionsId" 
											name="glCommissionsId">
											
											<option value="" selected>اختيار حساب الأستاذ للعمولات</option>

											<optgroup label="اختيار الحساب المطلوب">
												<c:forEach var="ind" items="${generalLedgers}">
													<option value="${ind.id}">${ind.description_a}-
															${ind.glNumber}</option>
												</c:forEach>
											</optgroup>
										</select>
									</div>
									
									<div class="form-group col-md-6"></div>
									
									<div class="form-group col-md-6">

											<h5 style="color: #d1a923">معلومات الضريبة المرتبطة بعملة المنتج</h5>

										</div>
										<div class="form-group col-md-6"></div>
									
									
									
									<div class="form-group col-md-6">
										<label for="glTaxId"> حساب الأستاذ للضرائب * </label>
										<label style="display: none"
											class="error-label errorglTaxId" for="glTaxId">هذا
											الحقل مطلوب.</label>
										 <select
											class="form-control select2" id="glTaxId" name="glTaxId">
											
											<option value="" selected>اختيار حساب الأستاذ</option>

											<optgroup label="اختيار الحساب المطلوبة">
												<c:forEach var="ind" items="${generalLedgers}">
													<option value="${ind.id}">${ind.description_a}-
															${ind.glNumber}</option>
												</c:forEach>
											</optgroup>
										</select>
									</div>
									
									 <div class="form-group col-md-6">
										<label for="taxId">   الضريبة * </label>
										<label style="display: none"
											class="error-label errortaxId" for="taxId">هذا
											الحقل مطلوب.</label>
										 <select onchange="AddInfoTax()"
											class="form-control select2" id="taxId" name="taxId">
											
											<option value="" selected>اختيار الضريبة</option>

											<optgroup label="اختيار الضريبة  المطلوبة">
												<c:forEach var="ind" items="${accTaxs}">
													<option nameaT="${ind.nameA }" namebT = "${ind.nameB }"
													curr = "${ind.currency_id.iso }" amount="${ind.amount }"
													value="${ind.ID}">${ind.nameA}</option>
												</c:forEach>
											</optgroup>
										</select>
									</div>

									
									
									<div class="form-group col-md-6">
										<label for="currency_id">عملة الضريبة
										</label> <input id="currency_id" readonly
											name="currency_id" type="text"
											class="form-control  ">
									</div>
									
									<div class="form-group col-md-6">
										<label for="amount">المبلغ
										</label> <input id="amount" readonly
											name="amount" type="text"
											class="form-control  ">
									</div> 
									
									
									<div class="form-group col-md-6">

											<h5 style="color: #d1a923">معلومات التكاليف المرتبطة بعملة المنتج</h5>

										</div>
										<div class="form-group col-md-6"></div>

									<div class="form-group col-md-6">
										<div class="form-group">
											<label for="feesFlag"> فعال *</label> <label
												style="display: none" class="error" for="feesFlag">هذا
												الحقل مطلوب.</label>
											<div class="custom-control custom-checkbox">
												<input type="checkbox"
													class="custom-control-input form-control" id="feesFlag"
													name="feesFlag" value="0" onchange="toggleFeesAmount()">
												<!-- <input type="hidden" name="feesFlagHidden" value="1"> -->
												<label class="custom-control-label" for="feesFlag"
													onchange="toggleFeesAmount()">يدعم المنتج التكاليف</label>
											</div>
										</div>
									</div>



									<div class="form-group col-md-6">
										<label for="glFeesId"> حساب الأستاذ للتكاليف </label>
										<label style="display: none"
											class="error-label errorglFeesId" for="glFeesId">هذا
											الحقل مطلوب.</label>
										<select
											class="form-control select2" id="glFeesId" name="glFeesId">
											<option value="" selected>اختيار حساب الأستاذ</option>
											<c:forEach var="ind" items="${generalLedgers}">
													<option value="${ind.id}">${ind.description_a}-
															${ind.glNumber}</option>
												</c:forEach>
										</select>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<label for="feesAmountC">مبلغ التكاليف</label>
											<label style="display: none"
											class="error-label errorfeesAmountC" for="feesAmountC">هذا
											الحقل مطلوب.</label>
											 <input
												id="feesAmountC" name="feesAmount"
												type="text" class="form-control  input-money">
										</div>
									</div>

									<div class="form-group col-md-6">
										<label for="operationCountC">عدد العمليات</label>
										<label style="display: none"
											class="error-label erroroperationCountC" for="operationCountC">هذا
											الحقل مطلوب.</label>
										<input
											name="operationCount" type="text"
											id="operationCountC"
											onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"
											class="form-control">
									</div>		
									
									<div class="form-group col-md-6">
											<label for="feesPeriodId">مدة التكاليف</label> <select
												class="form-control select2" id="feesPeriodId"
												name="feesPeriodId">
												<option value="" selected>اختيار المدة</option>
												<optgroup label="اختيار الفترة المطلوبة">
													<c:forEach var="ind" items="${accPeriods}">
													<option value="${ind.id}" selected>${ind.accPeriodDescA}</option>
													</c:forEach>
												</optgroup>

											</select>
									</div>						
									<div class="form-group col-md-6"></div>
									<div class="form-group col-md-6">

										<button type="button" id="addRowf" onclick="addCurrency()"
											class="btn mt-1 mb-0 btn-outline-primary">
											إضافة عملة جديدة <i class="fe fe-plus-circle" style=""></i>
										</button>

									</div>

									<div class="col-md-12">
										<table class="table datatables" id="dataTable-2">
											<thead>
												<tr>
													<th>اسم المنتج باللغة الأساسية</th>
													<th>اسم العملة باللغة الثانوية</th>
													<th>العمليات</th>

												</tr>
											</thead>
											
											<tbody>
												<c:forEach varStatus="status" var="varfamily"
													items="${accountTypeForm.accountTypeCurrencies}">
													
											<div id="divf_${status.index}">
											<!-- <div>eikjhdk</div> -->
											<input type="hidden" id="id_${status.index}" name="accountTypeCurrencies[${status.index}].id"
											value="${varfamily.id}"> 
											
											<input type="hidden"
											id="currencyNameAC_${status.index}" name="accountTypeCurrencies[${status.index}].currencyNameA"
											value="${varfamily.currencyNameA}">
											 
											<input type="hidden"
											id="currencyNameBC_${status.index}" name="accountTypeCurrencies[${status.index}].currencyNameB"
											value="${varfamily.currencyNameB}"> 
											
											<input type="hidden"
											id="ledCurrMinComC_${status.index}" name="accountTypeCurrencies[${status.index}].ledCurrMinCom"
											value="${varfamily.ledCurrMinCom}">
											
											<input type="hidden"
											id="ledCurrMaxComC_${status.index}" name="accountTypeCurrencies[${status.index}].ledCurrMaxCom"
											value="${varfamily.ledCurrMaxCom}">
											
											<input type="hidden"
											id="ledCurrMinC_${status.index}" name="accountTypeCurrencies[${status.index}].ledCurrMin"
											value="${varfamily.ledCurrMin}">
											
											<input type="hidden"
											id="minAmountC_${status.index}" name="accountTypeCurrencies[${status.index}].minAmount"
											value="${varfamily.minAmount}">
											
											<input type="hidden"
											id="maxAmountC_${status.index}" name="accountTypeCurrencies[${status.index}].maxAmount"
											value="${varfamily.maxAmount}">
											
											<input type="hidden"
											id="feesFlag_${status.index}" 
											name="accountTypeCurrencies[${status.index}].feesFlag"
											value="${varfamily.feesFlag}">
											
											<input type="hidden"
											id="operationCountC_${status.index}" 
											name="accountTypeCurrencies[${status.index}].operationCount"
											value="${varfamily.operationCount}">
											
											<input type="hidden"
											id="feesAmountC_${status.index}" 
											name="accountTypeCurrencies[${status.index}].feesAmount"
											value="${varfamily.feesAmount}">
											
											<input type="hidden"
											id="currencyId_${status.index}" 
											name="accountTypeCurrencies[${status.index}].currencyId"
											value="${varfamily.currencyId.id}"> 
											
											<input type="hidden"
											id="glFeesId_${status.index}" 
											name="accountTypeCurrencies[${status.index}].glFeesId"
											value="${varfamily.glFeesId}">
											
											<input type="hidden"
													id="taxId_${status.index}"
													name="accountTypeCurrencies[${status.index}].taxId"
													value="${varfamily.taxId.ID}">
													
											<input type="hidden"
													id="glTaxId_${status.index}"
													name="accountTypeCurrencies[${status.index}].glTaxId"
													value="${varfamily.glTaxId}">
													
											<input type="hidden"
													id="glCommissionsId_${status.index}"
													name="accountTypeCurrencies[${status.index}].glCommissionsId"
													value="${varfamily.glCommissionsId}">
											
											<input type="hidden"
													id="feesPeriodId_${status.index}"
													name="accountTypeCurrencies[${status.index}].feesPeriodId"
													value="${varfamily.feesPeriodId.id}">

													</div>

													<tr id="rowf_${status.index}">

														<td>${varfamily.currencyNameA}</td>
														<td>${varfamily.currencyNameB}</td>
														<td><i id="deletef_${status.index}"
															data-id="${status.index}"
															class="delete-Curr fe fe-delete icon-delete"></i>
															&nbsp&nbsp&nbsp <i id="editf_${status.index}"
															data-id="${status.index}"
															class="edit-Curr fe fe-edit icon-edit"></i></td>

	
													</tr> 

												</c:forEach>
											</tbody>
										</table>

									</div>

								</div>
							</section>

							<h3>طبيعة عملاء المنتج</h3>
							<section class="body ">

							<div class = "row">
							<div class="form-group col-md-6">
									<label for="fileTypeId"> نوع الطبيعة  * </label>
									<label style="display: none"
											class="error-label errorfileTypeId" for="fileTypeId">هذا
											الحقل مطلوب.</label>
									 <select
										class="form-control select2" id="fileTypeId" onchange="changeList()"
										name="fileTypeId">
										
										<option value="" selected>اختيار الطبيعة</option>
										<optgroup label="اختيار  النوع  المطلوب">
											<c:forEach var="ind" items="${indFileTypes}">
												<option nameB1="${ ind.nameB}" value="${ind.id}">${ind.nameA}</option>
											</c:forEach>
											<option value="-1" >الجميع</option>
										</optgroup>
										
									</select>
								</div>
								
								<div class="form-group col-md-6" id="showListInd">
									<label for="customerNatureIdInd"> نوع الأشخاص * </label>
									<label style="display: none"
											class="error-label errorcustomerNatureIdInd" for="customerNatureIdInd">هذا
											الحقل مطلوب.</label>
									 <select
										class="form-control select2" id="customerNatureIdInd" disabled
										name="customerNatureIdInd">
										
										<option value="-10" selected>اختيار الطبيعة</option>
										
										<optgroup label="اختيار الحساب المطلوبة">
											<c:forEach var="ind" items="${indCustomerNaturesInd}">
												<option value="${ind.id}">${ind.nameA}</option>
											</c:forEach>
											<option value="-2" >الجميع</option>
										</optgroup>
										
									</select>
								</div>
								
								
								<div class="form-group col-md-6" style="display: none" id="showListComp">
									<label for="customerNatureIdComp"> نوع الأشخاص * </label>
									<label style="display: none"
											class="error-label errorcustomerNatureIdComp" for="customerNatureIdComp">هذا
											الحقل مطلوب.</label>
									 <select
										class="form-control select2" id="customerNatureIdComp" disabled
										name="customerNatureIdComp">
										
										<option value="-10" selected>اختيار الطبيعة</option>
										
										<optgroup label="اختيار الحساب المطلوبة">
											<c:forEach var="ind" items="${indCustomerNaturesComp}">
												<option value="${ind.id}">${ind.nameA}</option>
											</c:forEach>
										</optgroup>
										<option value="-3" >الجميع</option>
									</select>
								</div>
								
								<div class="col-md-6">
									<div class="form-group">
										<label for="isEnabledTaxFlag"> فعال *</label> <label
											style="display: none" class="error" for="isEnabledTaxFlag">هذا
											الحقل مطلوب.</label>


										<div class="custom-control custom-checkbox ">
										
												<input type="checkbox" value=0 
												onchange="toggleisEnabledTaxFlag()"
													class="custom-control-input form-control"
													id="isEnabledTaxFlag" name="isEnabledTaxFlag">
											

											<label class="custom-control-label" for="isEnabledTaxFlag">يدعم المنتج الضرائب لهذه الطبيعة</label>
										</div>
									</div>
								</div>
								
								<div class="col-md-6">
									<div class="form-group">
										<label for="descriptionN">وصف</label>
										<label style="display: none"
											class="error-label errordescriptionN" for="descriptionN">هذا
											الحقل مطلوب.</label>
										<textarea class="form-control" name="description" id="descriptionN" rows="2"></textarea>
									</div>
								</div>

								<div class="form-group col-md-6">

										<button type="button" id="addRowN" onclick="addNat()"
											class="btn mt-1 mb-0 btn-outline-primary">
											إضافة طبيعة عميل   <i class="fe fe-plus-circle" style=""></i>
										</button>

									</div>
								
								<div class="col-md-12">
										 <table class="table datatables" id="dataTable-3">
											<thead>
												<tr>

													<th>نوع الأشخاص</th>
													<th>الوصف</th>
													<th>العمليات</th>

												</tr>
											</thead>

											<tbody>
												<c:forEach varStatus="status" var="varAccTypNat"
													items="${accountTypeForm.accountTypeNatures}">

													<div id="divN_${status.index}">

													<input type="hidden" id="id_${status.index}"
														name="accountTypeNatures[${status.index}].id"
														value="${varAccTypNat.id}"> 
														
														<input type="hidden" id="isEnabledTaxFlag_${status.index}"
														name="accountTypeNatures[${status.index}].isEnabledTaxFlag"
														value="${varAccTypNat.isEnabledTaxFlag}"> 
													
													<input type="hidden" id="customerNatureId_${status.index}"
														name="accountTypeNatures[${status.index}].customerNatureId"
														value="${varAccTypNat.customerNatureId.id}"> 
													
													<input type="hidden" id="descriptionN_${status.index}"
														name="accountTypeNatures[${status.index}].description"
														value="${varAccTypNat.description}">
													
													<input type="hidden" id="fileTypeID_${status.index}"
														name="accountTypeNatures[${status.index}].fileTypeID"
														value="${varAccTypNat.fileTypeID}">
													
													</div>

													<tr id="rowN_${status.index}">
														<td>${varAccTypNat.customerNatureId.nameA}</td>
														<td>${varAccTypNat.description}</td>
														<td><i id="deleteN_${status.index}"
															data-id="${status.index}"
															class="delete-Nat fe fe-delete icon-delete"></i>
															&nbsp&nbsp&nbsp <i id="editN_${status.index}"
															data-id="${status.index}"
															class="edit-Nat fe fe-edit icon-edit"></i></td>
													</tr>

												</c:forEach>
											</tbody>
										</table> 

									</div>
							</div>
									
							</section>


						</div>
						
						<button id="subBtn" type="submit" style="display: none"></button>
					</form:form>
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

		$('#AccountType-elements').addClass("show");
		$('#AccountType').addClass("active-color");
		$('#AccType').addClass("active-color");

	});
	$('.input-money').mask("#.##0,000", {
		reverse : true
	});
	
	$('.input-percent').mask("#0%", {
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
	
	if (depositPeriodFlag.checked) {
		maturityPeriodId.removeAttribute("disabled");
		
		//maturityPeriodId.value = "";
	} else {
		maturityPeriodId.setAttribute("disabled", "disabled");
		/*  $('#maturityPeriodId').val('');
		 $('#maturityPeriodId').trigger('change');  */
	}
	
	
	function changeList(){
		var fileTypeId = document.getElementById("fileTypeId");
		var nameB = fileTypeId.options[fileTypeId.selectedIndex].getAttribute('nameB1');
		
		var customerNatureIdInd = document.getElementById("customerNatureIdInd");
		var customerNatureIdComp = document.getElementById("customerNatureIdComp");
		
		if(nameB == "COMPANY"){
			//$('#customerNatureIdComp').val('');
		//	$('#customerNatureIdComp').trigger('change');
			
			//$('#customerNatureIdInd').val('');
			//$('#customerNatureIdInd').trigger('change');
			
			document.getElementById("showListComp").style.display = '';
			document.getElementById("showListInd").style.display = 'none';
			
			customerNatureIdComp.removeAttribute("disabled");
		}else if(nameB == "INDIVIDUAL"){
			//$('#customerNatureIdInd').val('');
			//$('#customerNatureIdInd').trigger('change');
			
			//$('#customerNatureIdComp').val('');
			//$('#customerNatureIdComp').trigger('change');
			
			customerNatureIdInd.removeAttribute("disabled");
			document.getElementById("showListComp").style.display = 'none';
			document.getElementById("showListInd").style.display = '';
		}else if(fileTypeId.value == -1){
			$('#customerNatureIdInd').val(-2);
			$('#customerNatureIdInd').trigger('change');
			
			$('#customerNatureIdComp').val(-3);
			$('#customerNatureIdComp').trigger('change');
			
			customerNatureIdInd.setAttribute("disabled", "disabled");
			customerNatureIdComp.setAttribute("disabled", "disabled");
		}
		
		
	}

	function toggledepositPeriodFlag() {
		var depositPeriodFlag = document.getElementById("depositPeriodFlag");
		var maturityPeriodId = document.getElementById("maturityPeriodId");

		//alert(depositPeriodFlag.checked)
		if (depositPeriodFlag.checked) {
			maturityPeriodId.removeAttribute("disabled");
			//alert(maturityPeriodId.value)
		} else {
			//alert(maturityPeriodId.value)
			maturityPeriodId.setAttribute("disabled", "disabled");
			$('#maturityPeriodId').val('');
			$('#maturityPeriodId').trigger('change');
			//alert(maturityPeriodId.value)

		}
	}

	// Call toggleFeesAmount on page load to set the initial state
	window.onload = function() {
		toggledepositPeriodFlag();
	};
	
	function toggleisEnabledTaxFlag(){
		var isEnabledTaxFlag = document.getElementById("isEnabledTaxFlag");
		//alert("inside function: " + isEnabledTaxFlag.value)
		//alert("inside function checked: " + isEnabledTaxFlag.checked)
		
		if(isEnabledTaxFlag.checked){
			
			isEnabledTaxFlag.value = 1;
			//alert("value toggel isEnabledTaxFlag1: "+isEnabledTaxFlag.value);
		}else{
			
			isEnabledTaxFlag.value = 0;
			//alert("value toggel isEnabledTaxFlag0: "+isEnabledTaxFlag.value);
		}
	}
	
	window.onload = function() {
		toggleisEnabledFlag();
	}; 
	
	function toggleisEnabledFlag(){
		var isEnabledFlag = document.getElementById("isEnabledFlag");
		
		//alert("value toggel isEnabledFlag: "+isEnabledFlag.value);
		
		if(isEnabledFlag.checked){
			isEnabledFlag.value = 1;
		}else{
			isEnabledFlag.value = 0;
		}
	}
	
	window.onload = function() {
		toggleisEnabledFlag();
	}; 

 	 function toggleFeesAmount() {
 		 
		var feesFlag = document.getElementById("feesFlag");
		var feesAmount = document.getElementById("feesAmountC");
		var operationCount = document.getElementById("operationCountC");
		var glFeesId = document.getElementById("glFeesId");
		var feesPeriodId = document.getElementById("feesPeriodId");

		if (feesFlag.checked) {
		//	alert("1")
			feesFlag.value = 1;
			feesAmount.removeAttribute("readonly");
			operationCount.removeAttribute("readonly");
			glFeesId.removeAttribute("disabled");
			feesPeriodId.removeAttribute("disabled");
			
			
		} else {
			
			//alert("0");
			feesFlag.value = 0;
			feesAmount.setAttribute("readonly", "readonly");
			operationCount.setAttribute("readonly", "readonly");
			glFeesId.setAttribute("disabled", "disabled");
			feesPeriodId.setAttribute("disabled", "disabled");
			
			
			if (feesAmount.value != null || operationCount.value != null) {
				feesAmount.value = null;
				operationCount.value = null;
				glFeesId.value ="";
				$('#glFeesId').trigger('change');
				
				feesPeriodId.value ="";
				$('#feesPeriodId').trigger('change');
				
				$('.current').removeClass('error');
				$('.errorglFeesId').hide()
				$('input[id="glFeesId"]').removeClass('error');
				
				$('.current').removeClass('error');
				$('.erroroperationCountC').hide()
				$('input[id="operationCountC"]').removeClass('error');
				
				$('.current').removeClass('error');
				$('.errorfeesAmountC').hide()
				$('input[id="feesAmountC"]').removeClass('error');
			}
		}
	}

	// Call toggleFeesAmount on page load to set the initial state
	window.onload = function() {
		toggleFeesAmount();
	}; 

	function showDepositFields() {

		var categorySelect = document.getElementById("categoryId");
		var nameB = categorySelect.options[categorySelect.selectedIndex]
				.getAttribute('nameB');
		
		var monthInterest = document.getElementById("monthInterest");
		var dayInterest = document.getElementById("dayInterest");
		var interestPeriodFlag = document.getElementById("interestPeriodFlag");
		
		var depositPeriodFlag =  document.getElementById("depositPeriodFlag");
		var maturityPeriodId = document.getElementById("maturityPeriodId");
		var pentalyBreakDeposit = document.getElementById("pentalyBreakDeposit");

		if (nameB == "DEPOSIT") {
			document.getElementById("show").style.display = '';
			var renwalPeriodIdSelect = document.getElementById("renwalPeriodId");
			var maturityPeriodIdSelect = document.getElementById("maturityPeriodId");
			var permissionPeriodIdSelect = document.getElementById("permissionPeriodId");
			var interestPeriodId = document.getElementById("interestPeriodId");
			
			depositPeriodFlag.checked = true;
			toggledepositPeriodFlag();
			maturityPeriodId.setAttribute("required", "required");

			var index = 0;

			var optionsR = renwalPeriodIdSelect.options;
			var optionsM = maturityPeriodIdSelect.options;
			var optionsP = permissionPeriodIdSelect.options;

			var opR = optionsR[index].value;
			var opM = optionsM[index].value;
			var opP = optionsP[index].value;

			$("#renwalPeriodId").val(opR);
			$("#renwalPeriodId").trigger('change');

			$("#maturityPeriodId").val(opM);
			$("#maturityPeriodId").trigger('change');

			$("#permissionPeriodId").val(opM);
			$("#permissionPeriodId").trigger('change');

			$("#pentalyBreakDeposit").val("");
			
			interestPeriodFlag.checked = false;
			clearMonDay();
			renwalPeriodIdSelect.setAttribute("required", "required");
			permissionPeriodIdSelect.setAttribute("required", "required");
			maturityPeriodIdSelect.setAttribute("required", "required");
			pentalyBreakDeposit.setAttribute("required", "required");
			interestPeriodId.setAttribute("required", "required");
			
			monthInterest.setAttribute("disabled", "disabled");
			dayInterest.setAttribute("disabled", "disabled");
			interestPeriodFlag.setAttribute("disabled", "disabled");
			
			monthInterest.removeAttribute("required");
			dayInterest.removeAttribute("required");
			

		} else {
			document.getElementById("show").style.display = 'none';
			monthInterest.removeAttribute("disabled");
			dayInterest.removeAttribute("disabled");
			interestPeriodFlag.removeAttribute("disabled");
			
			monthInterest.setAttribute("required", "required");
			dayInterest.setAttribute("required", "required");
			
			pentalyBreakDeposit.removeAttribute("required");
			permissionPeriodId.removeAttribute("required");
			$('#permissionPeriodId').val('');
			$('#permissionPeriodId').trigger('change');
			
			renwalPeriodId.removeAttribute("required");
			$('#renwalPeriodId').val('');
			$('#renwalPeriodId').trigger('change');
			
			maturityPeriodId.removeAttribute("required");
			$('#maturityPeriodId').val('');
			$('#maturityPeriodId').trigger('change');
			depositPeriodFlag.checked = false;
			toggledepositPeriodFlag();

		}

	}

	
	function clearMonDay(){
		
		var monthInterest = document.getElementById("monthInterest");
		var dayInterest = document.getElementById("dayInterest");
		var interestPeriodFlag = document.getElementById("interestPeriodFlag");
		
		if(interestPeriodFlag.checked == false){
			
			interestPeriodFlag.value = 0;
			//alert(interestPeriodFlag.value + ' :interestPeriodFlag.value1')
			$('#dayInterest').val('');
			$('#dayInterest').trigger('change');
			
			$('#monthInterest').val('');
			$('#monthInterest').trigger('change');
			
			monthInterest.removeAttribute("required");
			dayInterest.removeAttribute("required");
			
		}else{
			interestPeriodFlag.value = 1;
			dayInterest.setAttribute("required", "required");
			monthInterest.setAttribute("required", "required");
			//alert(interestPeriodFlag.value + ' :interestPeriodFlag.value2')
		}
	}
	

	function addCurrencyName() {

		var t = document.getElementById("currencyId");
		var nameB = t.options[t.selectedIndex].getAttribute("nameb2");
		//alert(nameB);
		var nameA = t.options[t.selectedIndex].getAttribute("namea");
		
		$("#currencyNameAC").val(nameA);
		$("#currencyNameBC").val(nameB);
	}
	
	function AddInfoTax() {

		var t = document.getElementById("taxId");
		var nameB = t.options[t.selectedIndex].getAttribute("amount");
		//alert(nameB);
		var nameA = t.options[t.selectedIndex].getAttribute("curr");
		
		$("#currency_id").val(nameA);
		$("#amount").val(nameB);
	}

	$("#example-form")
			.submit(function(e) {

						/* var maturityPeriodId = document.getElementById("maturityPeriodId");
						
						var depositPeriodFlag = document.getElementById("depositPeriodFlag");
						//alert(maturityPeriodId.value)
						
						if(depositPeriodFlag.checked == false){
							 
								$('#maturityPeriodId').empty().select2();
			        	    	$('#maturityPeriodId').select2({
			    					theme : 'bootstrap4',
			    				});
								$('#maturityPeriodId').append('<option selected value="" hidden>إختر عملة الحساب</option>').trigger('change');
								document.forms["example-form"]["maturityPeriodId"].value=""
						} */
						//alert($('#maturityPeriodId'))
						var regex = /[.,\s]/g;
						
						document.forms["example-form"]["pentalyBreakDeposit"].value = document.forms["example-form"]["pentalyBreakDeposit"].value
								.replace(regex, '');
						
					});

	var categorySelect = document.getElementById("categoryId");
	var nameB = categorySelect.options[categorySelect.selectedIndex].getAttribute('nameB');
	
	if (nameB == "DEPOSIT") {
		document.getElementById("show").style.display = '';
		var renwalPeriodIdSelect = document.getElementById("renwalPeriodId");
		var maturityPeriodIdSelect = document.getElementById("maturityPeriodId");
		var permissionPeriodIdSelect = document.getElementById("permissionPeriodId");
		var interestPeriodId = document.getElementById("interestPeriodId");
		
		clearMonDay();
		monthInterest.setAttribute("disabled", "disabled");
		dayInterest.setAttribute("disabled", "disabled");
		interestPeriodFlag.setAttribute("disabled", "disabled");
		
		renwalPeriodIdSelect.setAttribute("required", "required");
		maturityPeriodIdSelect.setAttribute("required", "required");
		permissionPeriodIdSelect.setAttribute("required", "required");
		interestPeriodId.setAttribute("required", "required");
		pentalyBreakDeposit.setAttribute("required", "required");
	}

	function changCode() {

		var dd = document.getElementById("glId");
		var rr = dd.options[dd.selectedIndex].value;
		$("#accTypeCode").val(rr);

	}
	
	//add Nature to the table
	
	var counter_indexN="${accountTypeCustomerNatureList}";
	
	var tempRowN=-1;
	
	function validateRequierdNat(){
			var result="true";
	    	if( document.getElementById("customerNatureIdComp").value=="" && document.getElementById("customerNatureIdInd").value=="")
	    	{
	    	  	$('label[for="customerNatureIdInd"]').show ()
	    		$('input[id="customerNatureIdInd"]').addClass('error');
	    	  	$('.current').addClass('error');
	    	  	
	    	  	$('label[for="customerNatureIdComp"]').show ()
	    		$('input[id="customerNatureIdComp"]').addClass('error');
	    	  	$('.current').addClass('error');
	    		result=false;
	    	} 
	    	
	    	if( document.getElementById("fileTypeId").value=="")
	    	{
	    	  	$('label[for="fileTypeId"]').show ()
	    		$('input[id="fileTypeId"]').addClass('error');
	    	  	$('.current').addClass('error');
	    		result=false;
	    	}
	    	return result;
		}
		
		function clearClassesNat(){
			$('.current').removeClass('error');
			$('.errorcustomerNatureIdComp').hide()
			$('input[id="customerNatureIdComp"]').removeClass('error');
			
			$('.current').removeClass('error');
			$('.errorcustomerNatureIdInd').hide()
			$('input[id="customerNatureIdInd"]').removeClass('error');
			
			$('.current').removeClass('error');
			$('.errorfileTypeId').hide()
			$('input[id="fileTypeId"]').removeClass('error');
		}
		
		function clearInputNat() {
		//	alert("clear")
			$("#descriptionN").val("");
			$('#fileTypeId').val('');
			$('#fileTypeId').trigger('change');
			
			$('#customerNatureIdComp').val(-10);
			$('#customerNatureIdComp').trigger('change');
			
			$('#customerNatureIdInd').val(-10);
			$('#customerNatureIdInd').trigger('change');
			
			$("#isEnabledTaxFlag").prop('checked', false);
		    toggleisEnabledTaxFlag();
		}
		
		$(".delete-Nat").click(function(e) {
			 
			
   		 var data_id=$(this).attr("data-id");
   		 if(tempRowN==data_id)
       		{
   			tempRowN=0;
			    document.getElementById("addRowN").innerHTML="إضافة طبيعة <i class='fe fe-plus-circle' style='''></i>";
       		}
   		 $("#divN_"+data_id).remove();
   		var rowtodelete = document.getElementById('rowN_'+data_id);
 	        $('#dataTable-3').DataTable().rows(rowtodelete).remove().draw(false);  
   	 });

		
		
		$(".edit-Nat").click(function(e) {
			
			var data_id=$(this).attr("data-id");
			document.getElementById("addRowN").innerHTML="تعديل الطبيعة <i class='fe fe-edit' style='''></i>";
			tempRowN=data_id;
			
			$("#isEnabledTaxFlag").val($("#isEnabledTaxFlag_"+data_id).val());	        		
			//alert("retret: "+ $("#isEnabledTaxFlag_"+data_id).val());
  			 if($("#isEnabledTaxFlag_"+data_id).val() == 1)
  			 {
  			 //alert("isEnabledFlag: 1" );
  			document.getElementById("isEnabledTaxFlag").checked = true;
  			toggleisEnabledTaxFlag();
  			//alert("class isEnabledTaxFlag: 	" );
  			 
  			 }else{
  				 //alert("isEnabledFlag: 0");
  	   			document.getElementById("isEnabledTaxFlag").checked = false;
  	   			toggleisEnabledTaxFlag();
  			 }
			
			$("#descriptionN").val($("#descriptionN_"+data_id).val());
			//alert("customerNatureId_: " + $("#customerNatureId_"+data_id).val())
			
			
			$('#customerNatureIdComp').val($("#customerNatureId_"+data_id).val());
			$('#customerNatureIdComp').trigger('change');
				 
			$('#customerNatureIdInd').val($("#customerNatureId_"+data_id).val());
			$('#customerNatureIdInd').trigger('change');
			
			
			var idFileType = 0;
			var listId = $("#customerNatureId_"+data_id).val();
			var out = false;
			
			<c:forEach items="${indCustomerNatures}" var="ct">
			var id = "${ct.id}";
			if (listId == id && !out) {
				//console.log("${ct.fileTypeId.nameA}");
				idFileType = "${ct.fileTypeId.id}";
				out = true;
				//break;
			}
			</c:forEach>
			
			$('#fileTypeId').val(idFileType);
			$('#fileTypeId').trigger('change');
			 
			 
		 });


	function addNat()
	{
		//alert("1")
		var addNatCheck=validateRequierdNat();
		//alert("2")
		
		var description = $("#descriptionN").val();
		var isEnabledTaxFlag = $("#isEnabledTaxFlag").val();
		var fileTypeId = $("#fileTypeId").val();
		var customerNatureIdInd = $("#customerNatureIdInd").val();
		var customerNatureIdComp = $("#customerNatureIdComp").val();
		//var addBut = document.getElementById("addRowN");
		//alert("customerNatureIdInd add: "+customerNatureIdInd)
		//alert("customerNatureIdComp add: "+customerNatureIdComp)
		//alert("fileTypeIDd: " + fileTypeId )
		//alert("(customerNatureIdInd == -2 && fileTypeId != -1) : " + (customerNatureIdInd == -2 && fileTypeId != -1))
		var customerNatureId = 0;
		var custTypeId = 0;
		var nameA = "--";
		//alert("3"+" customerNatureIdInd: "+customerNatureIdInd+" customerNatureIdComp: "+customerNatureIdComp)
		if(customerNatureIdInd == null)
			customerNatureIdInd = -10;
		if(customerNatureIdComp == null)
			customerNatureIdComp = -10;
		//alert("3::: "+" customerNatureIdInd: "+customerNatureIdInd+" customerNatureIdComp: "+customerNatureIdComp)
		if(customerNatureIdInd != -2 && customerNatureIdInd != -10){
			//alert("14")
			customerNatureId = customerNatureIdInd;
			custTypeId = fileTypeId;
			var gender = document.getElementById("customerNatureIdInd");
			nameA = gender.options[gender.selectedIndex].text;
			//alert("nameA1: "+nameA)
		}
		else if(customerNatureIdComp != -3 && customerNatureIdComp != -10){
			//alert("P")
			customerNatureId = customerNatureIdComp;
			//alert("4")
			custTypeId = fileTypeId;
			//alert("5")
			var gender = document.getElementById("customerNatureIdComp");
			//alert("6")
			nameA = gender.options[gender.selectedIndex].text;
			//alert("nameA2: "+nameA)
		}
		else if(customerNatureIdComp == -3 && fileTypeId != -1){
			customerNatureId = -3;
			custTypeId = customerNatureId;
			nameA = "سيتم إضافة جميع المتعاملون الاعتباريون"
			//alert("nameA3: "+nameA)
		}
		else if(customerNatureIdInd == -2 && fileTypeId != -1){
			customerNatureId = -2;
			custTypeId = customerNatureId;
			nameA = "سيتم إضافة جميع المتعاملون الطبيعيون"
			//alert("nameA4: "+nameA)
		}
		else if(fileTypeId == -1){
			customerNatureId = -1;
			custTypeId = customerNatureId;
			nameA = "جميع المتعاملون الطبيعيون والاعتباريون"
			//alert("nameA5: "+nameA)
			var t = $('#dataTable-3').DataTable();
			t.rows().remove().draw();
			//addBut.setAttribute("disabled", "disabled");
			
		}
		
	   	//alert("customerNatureId: " + customerNatureId)
	   	  
		  var t3 = $('#dataTable-3').DataTable();
			
			 var data = t3.rows().data();
			 var checkAdd=true;
			 data.each(function (value, index) {
				if(nameA==value[0] && tempRowN == -1)
					checkAdd=false;
			 });
	   	  
	   	 //alert("addCustNat: "+ customerNatureId);
	   	
	   	if(addNatCheck){
	   		
	   		clearClassesNat();
	   		
	   		if(checkAdd){
	   			if(tempRowN==-1)
	   			{ 
	   			  var element1 = document.createElement("div");
	   			
	   			  var inner='<input type="hidden" id="descriptionN_'+counter_indexN+'" name="accountTypeNatures['+counter_indexN+'].description" value ="'+ description+'">';
	   			  inner+='<input type="hidden" id="customerNatureId_'+counter_indexN+'" name="accountTypeNatures['+counter_indexN+'].customerNatureId" value ="'+ customerNatureId+'"> ';
	   			  inner+='<input type="hidden" id="isEnabledTaxFlag_'+counter_indexN+'" name="accountTypeNatures['+counter_indexN+'].isEnabledTaxFlag" value ="'+ isEnabledTaxFlag+'"> ';
	   			  inner+='<input type="hidden" id="fileTypeID_'+counter_indexN+'" name="accountTypeNatures['+counter_indexN+'].fileTypeID" value ="'+ custTypeId+'"> ';
	   			  
	   			  element1.innerHTML=inner;
	   			
	   			  element1.setAttribute( 'id', 'divN_'+counter_indexN);

	   			  document.getElementById("example-form").appendChild(element1);
	   			
	   			  element1.setAttribute( 'id', 'divN_'+counter_indexN );
	   			
	   			  var newRaw=  $('#dataTable-3').DataTable().row.add( [
	   				  
	   				 nameA,
	   				  description,
	   			      '<i id="deleteN_'+counter_indexN+'" data-id="'+counter_indexN+'" class="fe fe-delete icon-delete"></i> &nbsp&nbsp&nbsp' +
	   			      '<i id="editN_'+counter_indexN+'" data-id="'+counter_indexN+'" class="fe fe-edit icon-edit"></i>'
	   			        ] ).draw( false );
	   			
	   			 $( newRaw.node() ).attr( 'id', 'rowN_'+counter_indexN );
	   			 
	   			 $("#deleteN_"+counter_indexN).click(function(e) {
	   				
	   				 var data_id=$(this).attr("data-id");
	   				 if(tempRowN==data_id)
	   		    		{
	   		    		tempRowN=-1;
	   				    document.getElementById("addRowN").innerHTML="إضافة طبيعة جديدة <i class='fe fe-plus-circle' style='''></i>";
	   		    		}
	   				 
	   				$("#divN_"+data_id).remove();
	   				var rowtodelete = document.getElementById('rowN_'+data_id);
	   			    $('#dataTable-3').DataTable().rows(rowtodelete).remove().draw(false);  
	   			 });
	   			 //alert("1111:  ");
	   			 $("#editN_"+counter_indexN).click(function(e) {
	   				//alert("111")
	   				var data_id=$(this).attr("data-id");
	   				document.getElementById("addRowN").innerHTML="تعديل الطبيعة <i class='fe fe-edit' style='''></i>";
	   				tempRowN=data_id;
	   				
	   				$("#descriptionN").val($("#descriptionN_"+data_id).val());
	   				$("#fileTypeID").val(custTypeId);
	   				$("#isEnabledTaxFlag").val($("#isEnabledTaxFlag_"+data_id).val());
	   				 
	   				 //alert("custTypeId fff: " +custTypeId)
	   				 if($("#isEnabledTaxFlag_"+data_id).val() == 1){
	   					document.getElementById("isEnabledTaxFlag").checked = true;
	   					//alert("counter isEnabledTaxFlag: 1" );
	   					toggleisEnabledTaxFlag();
	   				 }else{
	   					 
	   					document.getElementById("isEnabledTaxFlag").checked = false;
	   					//alert("counter isEnabledTaxFlag: 0	" );
	   					toggleisEnabledTaxFlag();
	   				 }
	   				 
	   				 $('#customerNatureIdComp').val(customerNatureId);
	   				 $('#customerNatureIdComp').trigger('change');
	   				 
	   				$('#customerNatureIdInd').val(customerNatureId);
	   				$('#customerNatureIdInd').trigger('change');
	   				 
	   				 alert("customerNatureId11: " + customerNatureId)
	   				 //alert("customerNatureIdComp11: " + customerNatureIdComp)
	   				$('#fileTypeId').val(custTypeId);
	   				 $('#fileTypeId').trigger('change');
	   				
	   				 
	   			 });
	   			 
	   			 clearInputNat();
	   			 counter_indexN++;

	   			 
	   		}
	   			  
	   			  else
	   				  {
	   				// alert("22")
	   				    $("#fileTypeId_"+tempRowN).val(custTypeId);
	   				    $("#customerNatureId_"+tempRowN).val(customerNatureId);
	   				  //  $("#customerNatureIdComp_"+tempRowN).val(customerNatureId);
	   				    
	   				    $("#descriptionN_"+tempRowN).val($("#descriptionN").val());
	   				    $("#isEnabledTaxFlag_"+tempRowN).val($("#isEnabledTaxFlag").val());
	   				    $("#fileTypeID_"+tempRowN).val(custTypeId);
	   				    
	   					var rowtodelete = document.getElementById("rowN_"+tempRowN);
	   		    			 $('#dataTable-3').DataTable().row(rowtodelete).data(
	   		    			 [
	   		    			   
	   		    				  nameA,
	   		    				  description,
	   		    				  '<i id="deleteN_'+tempRowN+'" data-id="'+tempRowN+'" class="fe fe-delete icon-delete"></i> &nbsp&nbsp&nbsp' +
	   		    				  '<i id="editN_'+tempRowN+'" data-id="'+tempRowN+'" class="fe fe-edit icon-edit"></i>'
	   		    			  ]).draw(false);
	   		    	
	   		    			 $("#deleteN_"+tempRowN).click(function(e) {
	   		    				
	   			        		 var data_id=$(this).attr("data-id");
	   			        		 if(tempRowN==data_id)
	   			        		{
	   			        		tempRowN=-1;
	   						    document.getElementById("addRowN").innerHTML="إضافة طبيعة جديدة <i class='fe fe-plus-circle' style='''></i>";
	   			        		}
	   			        		 $("#divN_"+data_id).remove();
	   			        		 
	   			        		var rowtodelete = document.getElementById('rowN_'+data_id);
	   			      	        $('#dataTable-3').DataTable().rows(rowtodelete).remove().draw(false);  
	   			        		 
	   			        		
	   			        	 });
	   		    			 //alert("2222:  ");
	   			        	 $("#editN_"+tempRowN).click(function(e) {
	   			        		//alert("222");
	   			        		var data_id=$(this).attr("data-id");
	   			        		document.getElementById("addRowN").innerHTML="تعديل الطبيعة <i class='fe fe-edit' style='''></i>";
	   			    			tempRowN=data_id;
	   			    			
	   			    			$("#fileTypeId").val(custTypeId);
	   			    			$('#fileTypeId').trigger('change');
	   			    			
	   			    			$("#customerNatureIdInd").val(customerNatureId);
	   			    			$('#customerNatureIdInd').trigger('change');
	   			    			
	   			    			$("#customerNatureIdComp").val(customerNatureId);
	   			    			$('#customerNatureIdComp').trigger('change');
	   			    			
	   			        		$("#descriptionN").val($("#descriptionN_"+data_id).val());
	   			        		$("#fileTypeID").val(custTypeId);
	   			        		$("#isEnabledTaxFlag").val($("#isEnabledTaxFlag_"+data_id).val());
	   			        		
	   			        		//alert("temp nnn: " + $("#isEnabledTaxFlag_"+data_id).val());
	   			        		 
	   			        		if($("#isEnabledTaxFlag_"+data_id).val() == 1){
	   			        			document.getElementById("isEnabledTaxFlag").checked = true;
	   			   				//alert("tempN isEnabledTaxFlag: 1	" );
	   			   					toggleisEnabledTaxFlag();
	   			   				 }else{
	   			   					 
	   			   				document.getElementById("isEnabledTaxFlag").checked = false;
	   			   				//alert("tempN isEnabledTaxFlag: 1	" );
	   			   					toggleisEnabledTaxFlag();
	   			   				 }
	   			        		 
	   			   	 });
	   			        	 tempRowN=-1;
	   			        	 document.getElementById("addRowN").innerHTML="إضافة طبيعة جديدة <i class='fe fe-plus-circle' style='''></i>";
	   			        	 clearInputNat();
	   				  }
	   		} else{
				callConfirmAlert("x","العنصر المراد إضافته موجود سابقا","الرجاء التحقق من صحة المعلومات")
				clearInputNat();
	   		}
	   		
	   	}
	   	
	} 

	
	
	//add tax to the table
	
		 var counter_indexT="${accountTypeTaxList}";
		
		var tempRowT=-1;
		
		function validateRequierdTax(){
			var result="true";
	    	if( document.getElementById("taxId").value=="")
	    	{
	    	  	$('label[for="taxId"]').show ()
	    		$('input[id="taxId"]').addClass('error');
	    	  	$('.current').addClass('error');
	    		result=false;
	    	}
	    	
	    	if( document.getElementById("glTaxId").value=="")
	    	{
	    	  	$('label[for="glTaxId"]').show ()
	    		$('input[id="glTaxId"]').addClass('error');
	    	  	$('.current').addClass('error');
	    		result=false;
	    	}
	    	
	    	return result;
		}
		
		function clearClassesTax(){
			$('.current').removeClass('error');
			$('.errorglTaxId').hide()
			$('input[id="glTaxId"]').removeClass('error');
			
			$('.current').removeClass('error');
			$('.errorTaxId').hide()
			$('input[id="taxId"]').removeClass('error');
		}
		
		function clearInputTax() {
		
	    
	    
	    $("#isEnabledFlag").prop('checked', false);
	    toggleisEnabledFlag();
		
		}
		
		
		$(".delete-tax").click(function(e) {
			//alert(".delete-tax")
			
   		 var data_id=$(this).attr("data-id");
   		 if(tempRowT==data_id)
       		{
       		tempRowT=0;
			    document.getElementById("addRowT").innerHTML="إضافة ضريبة جديدة <i class='fe fe-plus-circle' style='''></i>";
       		}
   		 $("#divT_"+data_id).remove();
   		var rowtodelete = document.getElementById('rowT_'+data_id);
 	        $('#dataTable-2').DataTable().rows(rowtodelete).remove().draw(false);  
   	 });

$(".edit-tax").click(function(e) {
	
	//alert(".edit-tax")
			
       		var data_id=$(this).attr("data-id");
       		document.getElementById("addRowT").innerHTML="تعديل ضريبة <i class='fe fe-edit' style='''></i>";
   			tempRowT=data_id;
   			$("#isEnabledFlag").val($("#isEnabledFlag_"+data_id).val());	        		
   			  
   			 if($("#isEnabledFlag_"+data_id).val() == 1)
   			 {
   			 //alert("isEnabledFlag: 1" );
   			isEnabledFlag.checked = true;
   			toggleisEnabledFlag();
   			 
   			 }else{
   				 //alert("isEnabledFlag: 0");
   	   			isEnabledFlag.checked = false;
   	   		toggleisEnabledFlag();
   			 }
   			 
   		     $('#taxId').val($("#taxId_"+data_id).val());
   			 $('#taxId').trigger('change');
   			 
   		     $('#glTaxId').val($("#glTaxId_"+data_id).val());
   			 $('#glTaxId').trigger('change'); 
       	 });
       	 
function addTax()
{
	var addCurrCheck=validateRequierdTax();
	
	var isEnabledFlag = $("input[type='checkbox'][id='isEnabledFlag']").val();
 	  
    var t = document.getElementById("taxId");
	var nameB = t.options[t.selectedIndex].getAttribute("namebT");
	
	var nameA = t.options[t.selectedIndex].getAttribute("nameaT");
    
 	var taxId = $("#taxId").val();
	var glTaxId = $("#glTaxId").val();
	  
	  
	  var t2 = $('#dataTable-2').DataTable();
		
		 var data = t2.rows().data();
		 var checkAdd=true;
		 data.each(function (value, index) {
			if(nameA==value[0] && tempRowT == -1)
				checkAdd=false;
		 });
		 
		 if(addCurrCheck){
			 
			 clearClassesTax();
			 //alert(checkAdd + "checkAdd")
			 if(checkAdd){
				 if(tempRowT==-1)
					{ 
					 //alert("first")
					  var element1 = document.createElement("div");
					
					  var inner='<input type="hidden" id="isEnabledFlag_'+counter_indexT+'" name="accountTypeTaxs['+counter_indexT+'].isEnabledFlag" value ="'+ isEnabledFlag +'"> ';
					  
					  inner+='<input type="hidden" id="taxId_'+counter_indexT+'" name="accountTypeTaxs['+counter_indexT+'].taxId" value ="'+ taxId +'"> ';
					  inner+='<input type="hidden" id="glTaxId_'+counter_indexT+'" name="accountTypeTaxs['+counter_indexT+'].glTaxId" value ="'+ glTaxId +'"> ';
					  element1.innerHTML=inner;
					
					  element1.setAttribute( 'id', 'divT_'+counter_indexT);

					  document.getElementById("example-form").appendChild(element1);
					
					  element1.setAttribute( 'id', 'divT_'+counter_indexT );
					
					  var newRaw=  $('#dataTable-2').DataTable().row.add( [
						  
						  nameA,
						  nameB,
					      '<i id="deleteT_'+counter_indexT+'" data-id="'+counter_indexT+'" class="fe fe-delete icon-delete"></i> &nbsp&nbsp&nbsp' +
					      '<i id="editT_'+counter_indexT+'" data-id="'+counter_indexT+'" class="fe fe-edit icon-edit"></i>'
					        ] ).draw( false );
					
					 $( newRaw.node() ).attr( 'id', 'rowT_'+counter_indexT );
					 
					 $("#deleteT_"+counter_indexf).click(function(e) {
						
						 var data_id=$(this).attr("data-id");
						 if(tempRowT==data_id)
				    		{
				    		tempRowT=-1;
						    document.getElementById("addRowT").innerHTML="إضافة ضريبة جديدة <i class='fe fe-plus-circle' style='''></i>";
				    		}
						 $("#divT_"+data_id).remove();
						var rowtodelete = document.getElementById('rowT_'+data_id);
					        $('#dataTable-2').DataTable().rows(rowtodelete).remove().draw(false);  
					 });
					 $("#editT_"+counter_indexT).click(function(e) {
					//alert("editf_1");
						var data_id=$(this).attr("data-id");
						document.getElementById("addRowT").innerHTML="تعديل الضريبة <i class='fe fe-edit' style='''></i>";
						tempRowT=data_id;
						 
						 $("#isEnabledFlag").val($("#isEnabledFlag_"+data_id).val());	  
						 if($("#isEnabledFlag_"+data_id).val() == 1)
						 {
						 //alert("isEnabledFlag: 1");
						 isEnabledFlag.checked = true;
						 toggleisEnabledFlag();
						 }else
							 {
							 //alert("isEnabled: 0");
							 toggleisEnabledFlag();
							 }
						 
					     $('#taxId').val($("#taxId_"+data_id).val());
						 $('#taxId').trigger('change');
					     $('#glTaxId').val($("#glTaxId_"+data_id).val());
						 $('#glTaxId').trigger('change'); 
						 
					
						
					 });
					 
					 clearInputTax();
					 counter_indexT++;

					 
				}
					  
					  else
						  {
						  
						 //alert("isEnabledFlag else : "+isEnabledFlag);

						    $("#taxId_"+tempRowT).val($("#taxId").val());
						    $("#glTaxId_"+tempRowT).val($("#glTaxId").val());
						    $("#isEnabledFlag_"+tempRowT).val($("#isEnabledFlag").val());
						    
						 
							
							var rowtodelete = document.getElementById("rowT_"+tempRowT);
				    			 $('#dataTable-2').DataTable().row(rowtodelete).data(
				    			 [
				    				 nameA,
				    				 nameB,
						         '<i id="deleteT_'+tempRowT+'" data-id="'+tempRowT+'" class="fe fe-delete icon-delete"></i> &nbsp&nbsp&nbsp' +
				   	                '<i id="editT_'+tempRowT+'" data-id="'+tempRowT+'" class="fe fe-edit icon-edit"></i>'
						        	]).draw(false);
				    	
				    			 $("#deleteT_"+tempRowT).click(function(e) {
				    				
					        		 var data_id=$(this).attr("data-id");
					        		 if(tempRowT==data_id)
					        		{
					        		tempRowT=-1;
								    document.getElementById("addRowT").innerHTML="إضافة ضريبة جديدة <i class='fe fe-plus-circle' style='''></i>";
					        		}
					        		 $("#divT_"+data_id).remove();
					        		 
					        		var rowtodelete = document.getElementById('rowT_'+data_id);
					      	        $('#dataTable-2').DataTable().rows(rowtodelete).remove().draw(false);  
					        		 
					        		
					        	 });
					        	 
					        	 $("#editT_"+tempRowT).click(function(e) {
					        		
					        		var data_id=$(this).attr("data-id");
					        		document.getElementById("addRowT").innerHTML="تعديل الضريبة <i class='fe fe-edit' style='''></i>";
					    			tempRowT=data_id;
					    				        		
					        		
					        		 $("#isEnabledFlag").val($("#isEnabledFlag_"+data_id).val());
					        		 if($("#isEnabledFlag_"+data_id).val() == 1)
					        		 {
					        		 //alert("edit 2 is enabled 1");
					        		 $("#isEnabledFlag").prop('checked', true);
					        		 toggleisEnabledFlag();
					        		 
					        		 }else{
					        			 //alert("edit 2 is enabled 0");
					        			 toggleisEnabledFlag();
					        		 }
					        			 
					        		 
					        	     $('#taxId').val($("#taxId_"+data_id).val());
					        		 $('#taxId').trigger('change');
					        		 $('#glTaxId').val($("#glTaxId_"+data_id).val());
					        		 $('#glTaxId').trigger('change'); 
					   	 });
					        	 
				    			 tempRowT=-1;
							 document.getElementById("addRowT").innerHTML="إضافة ضريبة جديدة <i class='fe fe-plus-circle' style='''></i>";
							 clearInputTax();
						  }
			 } else{
				 callConfirmAlert("x","العنصر المراد إضافته موجود سابقا","الرجاء التحقق من صحة المعلومات")
				clearInputTax();
			 }
		 
		 }
}
		
		
	
	//add currency to the table
	
	$(".delete-Curr").click(function(e) {
	
					
        		 var data_id=$(this).attr("data-id");
        		 if(tempRowf==data_id)
	        		{
	        		tempRowf=0;
				    document.getElementById("addRowf").innerHTML="إضافة عملة جديد <i class='fe fe-plus-circle' style='''></i>";
	        		}
        		 $("#divf_"+data_id).remove();
        		var rowtodelete = document.getElementById('rowf_'+data_id);
      	        $('#dataTable-2').DataTable().rows(rowtodelete).remove().draw(false);  
        	 });
	
	$(".edit-Curr").click(function(e) {
				
	        		var data_id=$(this).attr("data-id");
	        		document.getElementById("addRowf").innerHTML="تعديل عملة <i class='fe fe-edit' style='''></i>";
	    			tempRowf=data_id;
	    			
	    			$("#currencyNameAC").val($("#currencyNameAC_"+data_id).val());	        		
	    			 $("#currencyNameBC").val($("#currencyNameBC_"+data_id).val());
	    			 $("#ledCurrMinComC").val($("#ledCurrMinComC_"+data_id).val());
	    			 $("#ledCurrMaxComC").val($("#ledCurrMaxComC_"+data_id).val());
	    			 $("#ledCurrMinC").val($("#ledCurrMinC_"+data_id).val());
	    			 $("#minAmountC").val($("#minAmountC_"+data_id).val());
	    			 $("#maxAmountC").val($("#maxAmountC_"+data_id).val());
	    			 $("#feesFlag").val($("#feesFlag_"+data_id).val());	  
	    			 if($("#feesFlag_"+data_id).val() == 1)
	    			 {
	    		//	 alert("feesFlag1");
	    			 feesFlag.checked = true;
	    			 toggleFeesAmount();
	    			 
	    			 }
	    			 
	    			 $("#operationCountC").val($("#operationCountC_"+data_id).val());
	    		     $("#feesAmountC").val($("#feesAmountC_"+data_id).val());
	    		     $('#glFeesId').val($("#glFeesId_"+data_id).val());
	    			 $('#glFeesId').trigger('change');
	    		     $('#currencyId').val($("#currencyId_"+data_id).val());
	    			 $('#currencyId').trigger('change'); 
	    			 
	    			 $('#glTaxId').val($("#glTaxId_"+data_id).val());
	    			 $('#glTaxId').trigger('change'); 
	    			// alert($("#taxId_"+data_id).val())
	    			 $('#taxId').val($("#taxId_"+data_id).val());
	    			 $('#taxId').trigger('change'); 
	    			 $('#glCommissionsId').val($("#glCommissionsId_"+data_id).val());
	    			 $('#glCommissionsId').trigger('change'); 
	    			 //alert($("#feesPeriodId_"+data_id).val())
					 
					 $('#feesPeriodId').val($("#feesPeriodId_"+data_id).val());
					 $('#feesPeriodId').trigger('change'); 
	        	 });
	
	function validateRequierdCurrency(){
		var result="true";
    	if( document.getElementById("currencyId").value=="")
    	{
    	  	$('label[for="currencyId"]').show ()
    		$('input[id="currencyId"]').addClass('error');
    	  	$('.current').addClass('error');
    		result=false;
    	}
    	
    	if( document.getElementById("ledCurrMinComC").value=="")
    	{
    	  	$('label[for="ledCurrMinComC"]').show ()
    		$('input[id="ledCurrMinComC"]').addClass('error');
    	  	$('.current').addClass('error');
    		result=false;
    	}
    	
    	if( document.getElementById("ledCurrMaxComC").value=="")
    	{
    	  	$('label[for="ledCurrMaxComC"]').show ()
    		$('input[id="ledCurrMaxComC"]').addClass('error');
    	  	$('.current').addClass('error');
    		result=false;
    	}
    	
    	if( document.getElementById("ledCurrMinC").value=="")
    	{
    	  	$('label[for="ledCurrMinC"]').show ()
    		$('input[id="ledCurrMinC"]').addClass('error');
    	  	$('.current').addClass('error');
    		result=false;
    	}
    	if( document.getElementById("feesFlag").value=="1")
    	{
    		if( document.getElementById("feesAmountC").value=="")
        	{
        	  	$('label[for="feesAmountC"]').show ()
        		$('input[id="feesAmountC"]').addClass('error');
        	  	$('.current').addClass('error');
        		result=false;
        	}
    		if( document.getElementById("operationCountC").value=="")
        	{
        	  	$('label[for="operationCountC"]').show ()
        		$('input[id="operationCountC"]').addClass('error');
        	  	$('.current').addClass('error');
        		result=false;
        	}
    		
    		if( document.getElementById("glFeesId").value=="")
        	{
        	  	$('label[for="glFeesId"]').show ()
        		$('input[id="glFeesId"]').addClass('error');
        	  	$('.current').addClass('error');
        		result=false;
        	}
    	}
    	
    	return result;
	}
	
	function clearClassesCurr(){
		$('.current').removeClass('error');
		$('.errorledCurrMinComC').hide()
		$('input[id="ledCurrMinComC"]').removeClass('error');
		
		$('.current').removeClass('error');
		$('.errorledCurrMaxCom').hide()
		$('input[id="ledCurrMaxComC"]').removeClass('error');
		
		$('.current').removeClass('error');
		$('.errorledCurrMin').hide()
		$('input[id="ledCurrMinC"]').removeClass('error');
		
		$('.current').removeClass('error');
		$('.errorcurrencyId').hide()
		$('input[id="currencyId"]').removeClass('error');
	}
	
	function clearInputCurr(){
		//alert("clear")
		$("#currencyNameAC").val("");
		$("#currencyNameBC").val("");
		$("#ledCurrMinC").val("");
		$("#ledCurrMaxComC").val("");
		$("#ledCurrMinComC").val("");
		$("#maxAmountC").val("");
		$("#minAmountC").val("");
		
		$('#taxId').val('');
	    $('#taxId').trigger('change');
	    
	    $('#glCommissionsId').val('');
	    $('#glCommissionsId').trigger('change');
	    
	    $('#glTaxId').val('');
	    $('#glTaxId').trigger('change');
	    
		
		// Set the value of #currencyId to an empty string
	    $('#currencyId').val('');
	    
	    // Trigger a change event to update the UI
	    $('#currencyId').trigger('change');
	    
	    $("#feesFlag").prop('checked', false); // Uncheck the checkbox
	    toggleFeesAmount();
		
		 
	}
	
	
	
	var counter_indexf="${accountTypCurrList}";
	
	var tempRowf=-1;
	
	function addCurrency(){
		
	var addCurrCheck=validateRequierdCurrency();
	
	if(addCurrCheck){
		
	clearClassesCurr();
		
	var regex = /[.,\s]/g;

	document.forms["example-form"]["feesAmount"].value = document.forms["example-form"]["feesAmount"].value
			.replace(regex, '');
	console.log("PPPPP")
	document.forms["example-form"]["ledCurrMaxCom"].value = document.forms["example-form"]["ledCurrMaxCom"].value
	.replace('%', '');
	console.log("QQQQ")
	document.forms["example-form"]["ledCurrMinCom"].value = document.forms["example-form"]["ledCurrMinCom"].value
	.replace('%', '');
	
	  var currencyNameA = $("#currencyNameAC").val();
	  var currencyNameB = $("#currencyNameBC").val();
	  //var ledCurrMinCom = $("#ledCurrMinComC").val();
	 // var ledCurrMaxCom = document.forms["form"]["ledCurrMaxComC"].value;
   	  var ledCurrMin = $("#ledCurrMinC").val();
   	  var minAmount = $("#minAmountC").val();
   	  var maxAmount = $("#maxAmountC").val();
      var feesFlag = $("input[type='checkbox'][id='feesFlag']").val();
   	  var feesAmount = $("#feesAmountC").val();
   	  var operationCount = $("#operationCountC").val();
   	  var glFeesId = $("#glFeesId").val();
	  var currencyId = $("#currencyId").val();
	  var curr = document.getElementById("currencyId");
	  var glFee = document.getElementById("glFeesId");
	  var glCommissionsId = $("#glCommissionsId").val();
	 //alert(glCommissionsId);
	  var t = document.getElementById("taxId");
	  var nameB = t.options[t.selectedIndex].getAttribute("namebT");
	  var nameA = t.options[t.selectedIndex].getAttribute("nameaT");
	  var taxId = $("#taxId").val();
	  var glTaxId = $("#glTaxId").val();
	  var feesPeriodId = $("#feesPeriodId").val();
	  
	  var t1 = $('#dataTable-2').DataTable();
		
		 var data = t1.rows().data();
		 var checkAdd=true;
		 data.each(function (value, index) {
			if(currencyNameA==value[0] && tempRowf == -1)
				checkAdd=false;
		 });
	  
		 if(checkAdd){
			 if(tempRowf==-1)
				{ 
				  var element1 = document.createElement("div");
				
				  var inner='<input type="hidden" id="currencyNameAC_'+counter_indexf+'" name="accountTypeCurrencies['+counter_indexf+'].currencyNameA" value ="'+ currencyNameA+'">';
				  
			      inner+='<input type="hidden" id="currencyNameBC_'+counter_indexf+'" name="accountTypeCurrencies['+counter_indexf+'].currencyNameB" value ="'+ currencyNameB+'"> ';
			      inner+='<input type="hidden" id="ledCurrMinComC_'+counter_indexf+'" name="accountTypeCurrencies['+counter_indexf+'].ledCurrMinCom" value ="'+ document.forms["example-form"]["ledCurrMinCom"].value+'"> ';
			      inner+='<input type="hidden" id="ledCurrMaxComC_'+counter_indexf+'" name="accountTypeCurrencies['+counter_indexf+'].ledCurrMaxCom" value ="'+ document.forms["example-form"]["ledCurrMaxCom"].value+'"> ';
			      
				  inner+='<input type="hidden" id="ledCurrMinC_'+counter_indexf+'" name="accountTypeCurrencies['+counter_indexf+'].ledCurrMin" value ="'+ ledCurrMin +'"> ';
				  inner+='<input type="hidden" id="minAmountC_'+counter_indexf+'" name="accountTypeCurrencies['+counter_indexf+'].minAmount" value ="'+ minAmount +'"> ';
				  inner+='<input type="hidden" id="maxAmountC_'+counter_indexf+'" name="accountTypeCurrencies['+counter_indexf+'].maxAmount" value ="'+ maxAmount +'"> ';
				  inner+='<input type="hidden" id="feesFlag_'+counter_indexf+'" name="accountTypeCurrencies['+counter_indexf+'].feesFlag" value ="'+ feesFlag +'"> ';
				  inner+='<input type="hidden" id="feesAmountC_'+counter_indexf+'" name="accountTypeCurrencies['+counter_indexf+'].feesAmount" value ="'+ document.forms["example-form"]["feesAmount"].value +'"> ';
				  inner+='<input type="hidden" id="operationCountC_'+counter_indexf+'" name="accountTypeCurrencies['+counter_indexf+'].operationCount" value ="'+ operationCount +'"> ';
				  
				  inner+='<input type="hidden" id="currencyId_'+counter_indexf+'" name="accountTypeCurrencies['+counter_indexf+'].currencyId" value ="'+ currencyId +'"> ';
				  inner+='<input type="hidden" id="glFeesId_'+counter_indexf+'" name="accountTypeCurrencies['+counter_indexf+'].glFeesId" value ="'+ glFeesId +'"> ';
				  
				  inner+='<input type="hidden" id="taxId_'+counter_indexf+'" name="accountTypeCurrencies['+counter_indexf+'].taxId" value ="'+ taxId +'"> ';
				  inner+='<input type="hidden" id="glTaxId_'+counter_indexf+'" name="accountTypeCurrencies['+counter_indexf+'].glTaxId" value ="'+ glTaxId +'"> ';
				  inner+='<input type="hidden" id="glCommissionsId_'+counter_indexf+'" name="accountTypeCurrencies['+counter_indexf+'].glCommissionsId" value ="'+ glCommissionsId +'"> ';
				  inner+='<input type="hidden" id="feesPeriodId_'+counter_indexf+'" name="accountTypeCurrencies['+counter_indexf+'].feesPeriodId" value ="'+ feesPeriodId +'"> ';
				  
				  
				  element1.innerHTML=inner;
				
				  element1.setAttribute( 'id', 'divf_'+counter_indexf);

				  document.getElementById("example-form").appendChild(element1);
				
				  element1.setAttribute( 'id', 'divf_'+counter_indexf );
				
				  var newRaw=  $('#dataTable-2').DataTable().row.add( [
					  
					  currencyNameA,
					  currencyNameB,
				      '<i id="deletef_'+counter_indexf+'" data-id="'+counter_indexf+'" class="fe fe-delete icon-delete"></i> &nbsp&nbsp&nbsp' +
				      '<i id="editf_'+counter_indexf+'" data-id="'+counter_indexf+'" class="fe fe-edit icon-edit"></i>'
				        ] ).draw( false );
				
				 $( newRaw.node() ).attr( 'id', 'rowf_'+counter_indexf );
				 
				 $("#deletef_"+counter_indexf).click(function(e) {
					
					 var data_id=$(this).attr("data-id");
					 if(tempRowf==data_id)
			    		{
			    		tempRowf=-1;
					    document.getElementById("addRowf").innerHTML="إضافة عملة منتج <i class='fe fe-plus-circle' style='''></i>";
			    		}
					 $("#divf_"+data_id).remove();
					var rowtodelete = document.getElementById('rowf_'+data_id);
				        $('#dataTable-2').DataTable().rows(rowtodelete).remove().draw(false);  
				 });
				 $("#editf_"+counter_indexf).click(function(e) {
				//	alert("editf_1");
					var data_id=$(this).attr("data-id");
					document.getElementById("addRowf").innerHTML="تعديل عملة المنتج <i class='fe fe-edit' style='''></i>";
					tempRowf=data_id;
					 $("#currencyNameAC").val($("#currencyNameAC_"+data_id).val());	        		
					 $("#currencyNameBC").val($("#currencyNameBC_"+data_id).val());
					 $("#ledCurrMinComC").val($("#ledCurrMinComC_"+data_id).val());
					 $("#ledCurrMaxComC").val($("#ledCurrMaxComC_"+data_id).val());
					 $("#ledCurrMinC").val($("#ledCurrMinC_"+data_id).val());
					 $("#minAmountC").val($("#minAmountC_"+data_id).val());
					 $("#maxAmountC").val($("#maxAmountC_"+data_id).val());
					 $("#feesFlag").val($("#feesFlag_"+data_id).val());	  
					 if($("#feesFlag_"+data_id).val() == 1)
					 {
					// alert("feesFlag");
					 feesFlag.checked = true;
					 toggleFeesAmount();
					 
					 }
					 
					 $("#operationCountC").val($("#operationCountC_"+data_id).val());
				     $("#feesAmountC").val($("#feesAmountC_"+data_id).val());
				     $('#glFeesId').val($("#glFeesId_"+data_id).val());
					 $('#glFeesId').trigger('change');
				     $('#currencyId').val($("#currencyId_"+data_id).val());
					 $('#currencyId').trigger('change'); 
					 
					 $('#glCommissionsId').val($("#glCommissionsId_"+data_id).val());
					 $('#glCommissionsId').trigger('change'); 
					 
					 $('#glTaxId').val($("#glTaxId_"+data_id).val());
					 $('#glTaxId').trigger('change'); 
					 
					 $('#taxId').val($("#taxId_"+data_id).val());
					 $('#taxId').trigger('change');
					 
					 $('#feesPeriodId').val($("#feesPeriodId_"+data_id).val());
					 $('#feesPeriodId').trigger('change'); 
					 
				
					
				 });
				 
				 clearInputCurr();
				 counter_indexf++;

				 
			}
				  
				  else
					  {
					  
					  //alert("2feeFlag: "+feesFlag);

					    $("#glFeesId_"+tempRowf).val($("#glFeesId").val());
					    $("#currencyId_"+tempRowf).val($("#currencyId").val());
					    $("#feesAmountC_"+tempRowf).val($("#feesAmountC").val());
					    $("#operationCountC_"+tempRowf).val($("#operationCountC").val());
					    $("#feesFlag_"+tempRowf).val($("#feesFlag").val());
					    $("#maxAmountC_"+tempRowf).val($("#maxAmountC").val());
					    $("#minAmountC_"+tempRowf).val($("#minAmountC").val());
					    $("#ledCurrMinC_"+tempRowf).val($("#ledCurrMinC").val());
					    $("#ledCurrMaxComC_"+tempRowf).val($("#ledCurrMaxComC").val());
					    $("#ledCurrMinComC_"+tempRowf).val($("#ledCurrMinComC").val());
					    $("#currencyNameBC_"+tempRowf).val($("#currencyNameBC").val());
					    $("#currencyNameAC_"+tempRowf).val($("#currencyNameAC").val());
					    $("#glTaxId_"+tempRowf).val($("#glTaxId").val());
					    $("#taxId_"+tempRowf).val($("#taxId").val());
					    $("#glCommissionsId_"+tempRowf).val($("#glCommissionsId").val());
					    $("#feesPeriodId_"+tempRowf).val($("#feesPeriodId").val());
					 
						
						var rowtodelete = document.getElementById("rowf_"+tempRowf);
			    			 $('#dataTable-2').DataTable().row(rowtodelete).data(
			    			 [
			    				 currencyNameA,
			    				 currencyNameB,
					         '<i id="deletef_'+tempRowf+'" data-id="'+tempRowf+'" class="fe fe-delete icon-delete"></i> &nbsp&nbsp&nbsp' +
			   	                '<i id="editf_'+tempRowf+'" data-id="'+tempRowf+'" class="fe fe-edit icon-edit"></i>'
					        	]).draw(false);
			    	
			    			 $("#deletef_"+tempRowf).click(function(e) {
			    				
				        		 var data_id=$(this).attr("data-id");
				        		 if(tempRowf==data_id)
				        		{
				        		tempRowf=-1;
							    document.getElementById("addRowf").innerHTML="إضافة عملة منتج  <i class='fe fe-plus-circle' style='''></i>";
				        		}
				        		 $("#divf_"+data_id).remove();
				        		 
				        		var rowtodelete = document.getElementById('rowf_'+data_id);
				      	        $('#dataTable-2').DataTable().rows(rowtodelete).remove().draw(false);  
				        		 
				        		
				        	 });
				        	 
				        	 $("#editf_"+tempRowf).click(function(e) {
				        		
				        		var data_id=$(this).attr("data-id");
				        		document.getElementById("addRowf").innerHTML="تعديل المنتج <i class='fe fe-edit' style='''></i>";
				    			tempRowf=data_id;
				    				        		
				        		 $("#currencyNameAC").val($("#currencyNameAC_"+data_id).val());	        		
				        		 $("#currencyNameBC").val($("#currencyNameBC_"+data_id).val());
				        		 $("#ledCurrMinComC").val($("#ledCurrMinComC_"+data_id).val());
				        		 $("#ledCurrMaxComC").val($("#ledCurrMaxComC_"+data_id).val());
				        		 $("#ledCurrMinC").val($("#ledCurrMinC_"+data_id).val());
				        		 $("#minAmountC").val($("#minAmountC_"+data_id).val());
				        		 $("#maxAmountC").val($("#maxAmountC_"+data_id).val());
				        		 $("#feesFlag").val($("#feesFlag_"+data_id).val());
				        		 if($("#feesFlag_"+data_id).val() == 1)
				        		 {
				        	//	 alert("edit 2: " + $("#feesFlag_"+data_id).val());
				        		 $("#feesFlag").prop('checked', true);
				        		 toggleFeesAmount();
				        		 
				        		 }
				        		 $("#operationCountC").val($("#operationCountC_"+data_id).val());
				        	     $("#feesAmountC").val($("#feesAmountC_"+data_id).val());
				        	     $('#glFeesId').val($("#glFeesId_"+data_id).val());
				        		 $('#glFeesId').trigger('change');
				        		 $('#currencyId').val($("#currencyId_"+data_id).val());
				        		 $('#currencyId').trigger('change'); 
				        		 
				        		 $('#glTaxId').val($("#glTaxId_"+data_id).val());
				        		 $('#glTaxId').trigger('change'); 
				        		 
				        		 $('#glCommissionsId').val($("#glCommissionsId_"+data_id).val());
				        		 $('#glCommissionsId').trigger('change'); 
				        		 
				        		 $('#taxId').val($("#taxId_"+data_id).val());
				        		 $('#taxId').trigger('change'); 
				        		 
				        		 $('#feesPeriodId').val($("#feesPeriodId_"+data_id).val());
				        		 $('#feesPeriodId').trigger('change');
				   	 });
				        	 
			    			 tempRowf=-1;
						 document.getElementById("addRowf").innerHTML="إضافة عملة منتج <i class='fe fe-plus-circle' style='''></i>";
						 clearInputCurr();
					  }
		 }else{
			 callConfirmAlert("x","العنصر المراد إضافته موجود سابقا","الرجاء التحقق من صحة المعلومات")
			clearInputCurr();
		 }
	  
	  }
}

	
</script>



<script>
        const monthSelect = document.getElementById('monthInterest');
        const daySelect = document.getElementById('dayInterest');
        
        var dayNum = document.getElementById("dayNumber");
       
      //  alert(dayNum.value)
        function populateDays(month) {
            daySelect.innerHTML = '';
            var daysInMonth = 31;
            
            if (['04', '06', '09', '11'].includes(month)) {
                daysInMonth = 30;
            } else if (month === '02') {
                daysInMonth = 28; 
            }
           
            for (var i = 0; i <= daysInMonth; i++) {
               
                const option = document.createElement('option');
                if(i==0){
                	option.value = "";
                	option.textContent = "اختيار اليوم";
                }
                	
                else{
                	option.value = i;
                    option.textContent = i;
                }
                	
                
                daySelect.appendChild(option);
            }
            
            if (dayNum.value) {
                daySelect.value = dayNum.value;
            }
            
        }
        
        
        // Populate days for the initial selected month
        populateDays(monthSelect.value);
        
        // Update days when month changes
        monthSelect.addEventListener('change', (event) => {
            populateDays(event.target.value);
        });
        
      
    </script>

    
    <!-- <script>
function resetFeesFlag() {
    // Find the checkbox input by its ID
    var feesFlagInput = document.getElementById('feesFlag');
    
    // Check if the element exists
    if (feesFlagInput) {
        // Reset the checkbox to its default state (unchecked)
        feesFlagInput.checked = false;
        
        // Optionally, you can also reset the hidden input value
        var feesFlagHiddenInput = document.querySelector('input[name="feesFlag"]');
        if (feesFlagHiddenInput) {
            feesFlagHiddenInput.value = '0';
        }
    }
}

// Attach the function to the button's click event
document.getElementById('addRowf').addEventListener('click', resetFeesFlag);
</script> -->

<!-- <script>
function resetIsEnabledFlagFlag() {
    // Find the checkbox input by its ID
    var isEnabledFlagInput = document.getElementById('isEnabledFlag');
    
    // Check if the element exists
    if (isEnabledFlagInput) {
        // Reset the checkbox to its default state (unchecked)
        isEnabledFlagInput.checked = false;
        
        // Optionally, you can also reset the hidden input value
        var feesFlagHiddenInput = document.querySelector('input[name="isEnabledFlag"]');
        if (feesFlagHiddenInput) {
        //	alert("000");
            feesFlagHiddenInput.value = '0';
        }
    }
}

// Attach the function to the button's click event
document.getElementById('addRowT').addEventListener('click', resetIsEnabledFlagFlag);
</script>  -->