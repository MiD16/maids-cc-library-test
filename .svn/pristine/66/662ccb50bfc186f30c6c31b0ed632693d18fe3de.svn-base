`<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
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
							class="mr-md-3 mr-2"> استعراض الفهارس</span></a><i
						class="fe fe-angle-double-right text-uppercase "
						aria-hidden="true"></i></li>

					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>

								<c:if test="${sysTable.id==null }">
						إضافة قيم فهرس
						</c:if> <c:if test="${sysTable.id!=null }">
						تعديل قيم الفهرس
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
				</div>
			</div>
			</span>

			<!-- .card -->
			<!-- .card -->
			<div class="card my-4">
				<!-- <div class="card-header">
					<strong> فهرس الحالة الاجتماعية </strong>
				</div> -->

				<div class="card-body">
					<form class="needs-validation" novalidate
						action="${pageContext.request.contextPath}/HomeIndex/save?tableId=${tableId}"
						method="post" name="addNewIndSocialStatus"
						modelAttribute="sysTable">

						<div>
							<div class="row">
								<input type="hidden" value="${sysTable.id}" name="id"><input
									type="hidden" value="${sysTable.insertBy}" name="insertBy">
								<input type="hidden" value="${sysTable.isDeleted}"
									name="isDeleted"> <input type="hidden"
									value="${sysTable.deletedBy}" name="deletedBy"> <input
									type="hidden" value="${sysTable.note}" name="note">
							</div>





							



							<c:if test="${tableId != 'CUSTOMER_SITUATION' && tableId != 'CUSTOMER_STAGE'  }">
								<div class="row">


	
 <div class="form-group col-md-6">
										<label for="nameB">الاسم باللغة الثانوية *</label> <label
											style="display: none" class="error-label errornameB"
											for="nameB">هذا الحقل مطلوب.</label> <input id="nameB"
											value="${sysTable.nameB}" required name="nameB" type="text"
											class="form-control  ">
									</div> 
									
									
									<div class="form-group col-md-6">
										<label for="nameA">الاسم باللغة الأساسية *</label> <label
											style="display: none" class="error-label errornameA"
											for="nameA">هذا الحقل مطلوب.</label> <input id="nameA"
											value="${sysTable.nameA}" required name="nameA" type="text"
											class="form-control  ">
									</div>
<%-- 
									<div class="form-group col-md-6">
										<label for="nameB">الاسم باللغة الثانوية *</label> <label
											style="display: none" class="error-label errornameB"
											for="nameB">هذا الحقل مطلوب.</label> <input id="nameB"
											value="${sysTable.nameB}" required name="nameB" type="text"
											class="form-control  ">
									</div> --%>
								</div>

					
									<c:if test="${tableId eq 'IND_CUSTOMER_TYPE' }">

										<label for="signingRightFlag">مؤشر حق التوقيع* </label>
										<div class="custom-control custom-checkbox ">

											<input type="checkbox" value="1" checked
												id="signingRightFlag" class="custom-control-input"
												name="signingRightFlag">
										</div>
								</c:if>
								</div>


							</c:if>



						
							
						</div>



						<c:if test="${ tableId ne 'CUSTOMER_STAGE' && tableId ne 'IND_KEY' && tableId ne 'IND_TABLE' && tableId ne 'SUBPOENA_REQUEST'&& tableId ne 'BRANCH'&& tableId ne 'SUBPOENA_REQUEST' && tableId ne 'IND_SUBPOENA_REQUEST'}">

							<div class="row">
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
								</div>




							</div>
						</c:if>




						<%-- 


						<c:if test="${tableId eq 'IND_CUSTOMER_TYPE' }">
							<div class="col-md-6">
								<div class="form-group">
									<label for="signingRightFlag"> مؤشر حق التوقيع *</label> <label
										style="display: none" class="error" for="signingRightFlag">هذا
										الحقل مطلوب.</label>


									<div class="custom-control custom-checkbox ">
										<c:if
											test="${sysTable.id!=null && sysTable.signingRightFlag==1}">
											<input type="checkbox" value="1" checked
												class="custom-control-input form-control"
												id="signingRightFlag" name="signingRightFlag">
										</c:if>

										<c:if
											test="${sysTable.id==null || sysTable.signingRightFlag==0}">
											<input type="checkbox" value="1"
												class="custom-control-input form-control"
												id="signingRightFlag" name="signingRightFlag">
										</c:if>

										<input type='hidden' value='0' name='signingRightFlag'>
										<label class="custom-control-label" for="isEnabledFlag">قيمة
											المؤشر فعال </label>
									</div>
								</div>
							</div>
						</c:if>
 --%>





						<c:if test="${tableId eq 'IND_CITY' }">
							<div class="col-md-6 ">
								<label for="indCountry">الدولة *</label> <label class="error"
									for="indCountry">هذا الحقل مطلوب.</label> <select
									class="form-control select2" id="indCountry"
									name="sysTable.indCountry">
									<option value="" selected>اختيار الدولة</option>
									<optgroup label="حسب المدينة">
										<c:forEach var="ind" items="${indCountries}">

											<c:if test="${sysTable.indCountry.id==ind.id}">
												<option value="${ind.id}" selected>${ind.nameA}</option>
											</c:if>
											<c:if test="${sysTable.indCountry.id!=ind.id}">
												<option value="${ind.id}">${ind.nameA}</option>
											</c:if>


										</c:forEach>
									</optgroup>

								</select>
							</div>
						</c:if>












						<c:if test="${tableId eq 'SUBPOENA_REQUEST' }">

							<div>kkokokok</div>
							<div class="col-md-6 ">
								<label for="indSubpoenaRequest">طبيعة العميل *</label> <label
									class="error" for="indSubpoenaRequest">هذا الحقل مطلوب.</label>
								<select class="form-control select2" id="indSubpoenaRequest"
									name="sysTable.indSubpoenaRequest">
									<option value="" selected>اختيار طبيعة العميل</option>
									<optgroup label="حسب الطبيعة">
										<c:forEach var="ind" items="${indSubpoenaRequest}">

											<c:if test="${sysTable.indSubpoenaRequest.id==ind.id}">
												<option value="${ind.id}" selected>${ind.nameA}</option>
											</c:if>
											<c:if test="${sysTable.indSubpoenaRequest.id!=ind.id}">
												<option value="${ind.id}">${ind.nameA}</option>
											</c:if>

										</c:forEach>
									</optgroup>

								</select>
							</div>


						</c:if>

						<c:if test="${tableId eq 'BRANCH' }">


							<div class='row'>
								<div class="form-group col-md-6">
									<label for="CODE">الكوود</label> <input required name="CODE"
										type="text" id="CODE" value="${sysTable.CODE}"
										class="form-control">
								</div>




								<div class="col-md-6 ">
									<label for="indBranchType">نوع الفرع *</label> <label
										class="error" for="indBranchType">هذا الحقل مطلوب.</label> <select
										class="form-control select2" id="LindCountry"
										name="sysTable.indBranchType">
										<option value="" selected>اختيار نوع الفرع</option>
										<optgroup label="حسب الطبيعة">
											<c:forEach var="ind" items="${indBranchType}">

												<c:if test="${sysTable.indBranchType.id==ind.id}">
													<option value="${ind.id}" selected>${ind.nameA}</option>
												</c:if>
												<c:if test="${sysTable.indBranchType.id!=ind.id}">
													<option value="${ind.id}">${ind.nameA}</option>
												</c:if>

											</c:forEach>
										</optgroup>

									</select>
								</div>
							</div>
							<div>




								<div class="row">
									<div class="col-md-6 ">

										<label for="indCountry1">البلد*</label> <label class="error"
											for="indCountry1">هذا الحقل مطلوب.</label> <select
											class="form-control select2" id="indCountry1"
											name="sysTable.indCountry1">
											<option value="" selected>اختيار البلد]</option>
											<optgroup label="حسب الطبيعة">
												<c:forEach var="ind" items="${indCountry1}">

													<c:if test="${sysTable.country_id.id==ind.id}">
														<option value="${ind.id}" selected>${ind.nameA}</option>
													</c:if>
													<c:if test="${sysTable.country_id.id!=ind.id}">
														<option value="${ind.id}">${ind.nameA}</option>
													</c:if>

												</c:forEach>
											</optgroup>

										</select>
									</div>

									<div class="col-md-6 ">

										<label for="indCity1">المدينة*</label> <label class="error"
											for="indCity1">هذا الحقل مطلوب.</label> <select
											class="form-control select2" id="indCity1"
											name="sysTable.indCity1">
											<option value="" selected>اختيار المدينة]</option>
											<optgroup label="حسب الطبيعة">
												<c:forEach var="ind" items="${indCity1}">

													<c:if test="${sysTable.id.id==ind.id}">
														<option value="${ind.id}" selected>${ind.nameA}</option>
													</c:if>
													<c:if test="${sysTable.id.id!=ind.id}">
														<option value="${ind.id}">${ind.nameA}</option>
													</c:if>

												</c:forEach>
											</optgroup>

										</select>
									</div>







									<label for="ListBranch">الفرع*</label> <label class="error"
										for="ListBranch">هذا الحقل مطلوب.</label> <select
										class="form-control select2" id="ListBranch"
										name="sysTable.ListBranch">
										<option value="" selected>اختيار الفرع]</option>
										<optgroup label="الفرع">
											<c:forEach var="ind" items="${ListBranch}">

												<c:if test="${sysTable.id.id==ind.id}">
													<option value="${ind.id}" selected>${ind.nameA}</option>
												</c:if>
												<c:if test="${sysTable.id.id!=ind.id}">
													<option value="${ind.id}">${ind.nameA}</option>
												</c:if>

											</c:forEach>
										</optgroup>

									</select>
								</div>
						</c:if>


						<c:if test="${tableId eq 'IND_ECONMIC_ACTIVITY' }">
							<!--  								--------------8
 -->
							<div class="row">

								<div class="col-md-6 ">
									<label for="IndEconmicSector">طبيعة العميل *</label> <label
										class="error" for="IndEconmicSector">هذا الحقل مطلوب.</label>
									<select class="form-control select2" id="fileTypeId"
										name="sysTable.indEconmicSector">
										<option value="" selected>اختيار طبيعة العميل</option>
										<optgroup label="حسب الطبيعة">
											<c:forEach var="ind" items="${indEconmicSector}">

												<c:if test="${sysTable.ECONOMIC_SECTOR_ID.id==ind.id}">
													<option value="${ind.id}" selected>${ind.nameA}</option>
												</c:if>
												<c:if test="${sysTable.ECONOMIC_SECTOR_ID.id!=ind.id}">
													<option value="${ind.id}">${ind.nameA}</option>
												</c:if>

											</c:forEach>
										</optgroup>

									</select>
								</div>
						</c:if>


						<c:if test="${tableId eq 'IND_ECONMIC_ACTIVITY' }">
							<div class="col-md-6 ">
								<label for="IndSectorType">طبيعة العميل *</label> <label
									class="error" for="IndSectorType">هذا الحقل مطلوب.</label> <select
									class="form-control select2" id="fileTypeId"
									name="sysTable.indSectorType">
									<option value="" selected>اختيار طبيعة العميل</option>
									<optgroup label="حسب الطبيعة">
										<c:forEach var="ind" items="${indSectorType}">

											<c:if test="${sysTable.IND_SECTOR_TYPE.id==ind.id}">
												<option value="${ind.id}" selected>${ind.nameA}</option>
											</c:if>
											<c:if test="${sysTable.IND_SECTOR_TYPE.id!=ind.id}">
												<option value="${ind.id}">${ind.nameA}</option>
											</c:if>

										</c:forEach>
									</optgroup>

								</select>
							</div>
				</div>
				</c:if>

				<%-- 	<c:if test="${ tableId eq 'CUSTOMER_STAGE' }">
								<div class="form-group col-md-6">
									<label for="stageCode">ترتيب عرض القيمة</label> <input required
										name="stageCode" type="text" id="stageCode"
										value="${sysTable.stageCode}" class="form-control">


									<div class="form-group col-md-6">

										<label for="stageCode">ارمز المرحلة*</label> <label
											style="display: none" class="error-label errordescriptionA"
											for="stageCode">هذا الحقل مطلوب.</label> <input
											id="stageCode" value="${sysTable.stageCode}" required
											name="stageCode" type="text" class="form-control  ">
									</div>
									<div class="form-group col-md-6">
										<label for="centralFlag">االعلم الرئيسي *</label> <label
											style="display: none" class="error-label errordescriptionB"
											for="centralFlag">هذا الحقل مطلوب.</label> <input
											id="centralFlag" value="${sysTable.centralFlag}" required
											name="centralFlag" type="text" class="form-control  ">
									</div>
							</c:if> --%>

				<%-- 
							<c:if test="${tableId eq 'CUSTOMER_STAGE' }">


									<div class="form-group col-md-6">
										<label for="descriptionA">الاسم باللغة الاساسية *</label> <label
											style="display: none" class="error-label errordescriptionA"
											for="descriptionA">هذا الحقل مطلوب.</label> <input
											id="descriptionA" value="${sysTable.descriptionA}" required
											name="descriptionA" type="text" class="form-control  ">
									</div>
									 <div class="form-group col-md-6">
										<label for="descriptionB">الاسم باللغة الثانوية *</label> <label
											style="display: none" class="error-label errordescriptionB"
											for="descriptionB">هذا الحقل مطلوب.</label> <input id="descriptionB"
											value="${sysTable.descriptionB}" required name="descriptionB"
											type="text" class="form-control  ">
									</div>  
								
</c:if> --%>


				<c:if test="${tableId eq 'ACC_IND_DATE_UNIT' }">
					<div class='row'>
						<div class="form-group col-md-6">
							<label for="descriptionA">الوصف باللغة الأساسية *</label> <label
								style="display: none" class="error-label errordescriptionA"
								for="descriptionA">هذا الحقل مطلوب.</label> <input
								id="descriptionA" value="${sysTable.descriptionA}" required
								name="descriptionA" type="text" class="form-control  ">
						</div>

						<div class="form-group col-md-6">
							<label for="descriptionB">الوصف باللغة الثانوية *</label> <label
								style="display: none" class="error-label errordescriptionB"
								for="descriptionB">هذا الحقل مطلوب.</label> <input
								id="descriptionB" value="${sysTable.descriptionB}" required
								name="descriptionB" type="text" class="form-control  ">
						</div>
					</div>
				</c:if>







				<c:if test="${tableId eq 'IND_CUSTOMER_NATURE_KEY' }">
					<div class="col-md-6 ">
						<label for="indCustomerNature">طبيعة العميل *</label> <label
							class="error" for="indCustomerNature">هذا الحقل مطلوب.</label> <select
							class="form-control select2" id="indCustomerNature"
							name="sysTable.indCustomerNature">
							<option value="" selected>اختيار طبيعة العميل</option>
							<optgroup label="حسب الطبيعة">
								<c:forEach var="ind" items="${indCustomerNature}">

									<c:if test="${sysTable.indCustomerNature.id==ind.id}">
										<option value="${ind.id}" selected>${ind.nameA}</option>
									</c:if>
									<c:if test="${sysTable.indCustomerNature.id!=ind.id}">
										<option value="${ind.id}">${ind.nameA}</option>
									</c:if>

								</c:forEach>
							</optgroup>

						</select>
					</div>

				</c:if>
				<c:if
					test="${tableId eq 'CUSTOMER_SITUATION' || tableId eq 'CUSTOMER_STAGE'  }">

			

	

					<div class="custom-control custom-checkbox ">

						<input type="checkbox" value="1" checked id="centralFlag"
							class="custom-control-input" name="centralFlag">
					</div>

					<div class="row">

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
					</div>
					<c:if test="${ tableId eq 'CUSTOMER_STAGE' }">
						<div class="row">

							<div class="form-group col-md-6">


								<label for="stageCode">رمز المرحلة*</label> <label
									style="display: none" class="error-label errordescriptionA"
									for="stageCode">هذا الحقل مطلوب.</label> <input id="stageCode"
									value="${sysTable.stageCode}" required name="stageCode"
									type="text" class="form-control  ">
							</div>


							<%-- 		<div class="form-group col-md-6">
							<label for="descriptionB">االوصف باللغة الثانوية *</label> <label
								style="display: none" class="error-label errordescriptionB"
								for="descriptionB">هذا الحقل مطلوب.</label> <input
								id="descriptionB" value="${sysTable.descriptionB}" required
								name="descriptionB" type="text" class="form-control  ">

						</div>
								
									<label for="stageCode">ترتيب عرض القيمة</label> <input required
										name="stageCode" type="text" id="stageCode"
										value="${sysTable.stageCode}" class="form-control">


									
										<label for="stageCode">ارمز المرحلة*</label> <label
											style="display: none" class="error-label errordescriptionA"
											for="stageCode">هذا الحقل مطلوب.</label> <input
											id="stageCode" value="${sysTable.stageCode}" required
											name="stageCode" type="text" class="form-control  ">
															</div>
											</div> --%>

							<div class="form-group col-md-6">
								<label for="centralFlag">االعلم الرئيسي *</label> <label
									style="display: none" class="error-label errordescriptionB"
									for="centralFlag">هذا الحقل مطلوب.</label> <input
									id="centralFlag" value="${sysTable.centralFlag}" required
									name="centralFlag" type="text" class="form-control  ">
							</div>
							
							
							
						<%--	<div class="row">--%>
								
							
							
							
							
							
							
							
							
							
							
							
							
							
							<div class="form-group  col-md-6">
				
						<label for="note">ملاحظات</label>
						<textarea class="form-control" name="note" id="note" rows="4">${sysTable.note}</textarea>
					</div>
					
						<div class="form-group col-md-6" style="align-content: center">
								<div class="custom-control custom-switch">
									
								
										<input type="checkbox" class="custom-control-input"
											onchange="" id="isEnabledFlag" name="isEnabledFlag" value="1">
								
									<label class="custom-control-label" for="isEnabledFlag">
										تفعيل </label> <input type="hidden"
										name="isEnabledFlag" id="isEnabledFlag"
										value="0">
								</div>
							
							
							</div>
					
					
					
					</div>
					</c:if>
<<%-- c:if test="${ tableId eq 'CUSTOMER_STAGE' }">
								<div class="form-group col-md-6">
									<label for="stageCode">ترتيب عرض القيمة</label> <input required
										name="stageCode" type="text" id="stageCode"
										value="${sysTable.stageCode}" class="form-control">


									<div class="form-group col-md-6">

										<label for="stageCode">ارمز المرحلة*</label> <label
											style="display: none" class="error-label errordescriptionA"
											for="stageCode">هذا الحقل مطلوب.</label> <input
											id="stageCode" value="${sysTable.stageCode}" required
											name="stageCode" type="text" class="form-control  ">
									</div>
									<div class="form-group col-md-6">
										<label for="centralFlag">االعلم الرئيسي *</label> <label
											style="display: none" class="error-label errordescriptionB"
											for="centralFlag">هذا الحقل مطلوب.</label> <input
											id="centralFlag" value="${sysTable.centralFlag}" required
											name="centralFlag" type="text" class="form-control  ">
									</div>
							</c:if> --%>

				</c:if>

				<div class="row">



					<c:if test="${ tableId eq 'CUSTOMER_STAGE' }">

					</c:if>


					<c:if test="${tableId eq 'IND_COMMISION_TYPE' }">
						<div class="form-group col-md-6">
							<label for="code">رمز </label> <input type="text"
								value="${sysTable.code}" required name="code" id="code"
								class="form-control">
						</div>
					</c:if>


					<c:if test="${tableId eq 'IND_NON_CUST_DOCUMENT' }">
						<div class="col-md-6 ">
							<label for="fileTypeId">طبيعة العميل *</label> <label
								class="error" for="fileTypeId">هذا الحقل مطلوب.</label> <select
								class="form-control select2" id="fileTypeId"
								name="sysTable.fileTypeId">
								<option value="" selected>اختيار طبيعة العميل</option>
								<optgroup label="حسب الطبيعة">
									<c:forEach var="ind" items="${indFileType}">

										<c:if test="${sysTable.fileTypeId.id==ind.id}">
											<option value="${ind.id}" selected>${ind.nameA}</option>
										</c:if>
										<c:if test="${sysTable.fileTypeId.id!=ind.id}">
											<option value="${ind.id}">${ind.nameA}</option>
										</c:if>

									</c:forEach>
								</optgroup>

							</select>
						</div>

					</c:if>



<c:if test="${tableId eq 'IND_KEY' }">
<div class="col-md-6 ">
		<label for="actions">العمليات  *</label> <label
			class="error" for="actions">هذا الحقل مطلوب.</label> <select
			class="form-control select2" id="actions"
			name="sysTable.indKey">
			<option value="" selected>اختيار العملية </option>
			<optgroup >
				<c:forEach var="ind" items="${actions}">

					<c:if test="${sysTable.action.ID==ind.ID}">
						<option value="${ind.ID}" selected>${ind.action_name_ar}</option>
					</c:if>
					<c:if test="${sysTable.action.ID!=ind.ID}">
						<option value="${ind.ID}">${ind.action_name_ar}</option>
					</c:if>

				</c:forEach>
			</optgroup>

		</select>
	</div>
</c:if>

<c:if test="${tableId eq 'ACC_IND_INTEREST_TYPE' }">
							


								<div class="form-group  col-md-6">

									<label for="description">الوصف *</label> <label
										style="display: none" class="error-label errordescription"
										for="description">هذا الحقل مطلوب.</label> <textarea
										id="description" rows="4" required
										name="description"  class="form-control  ">${sysTable.description} </textarea>
								</div>


							</c:if>
	<c:if test="${ tableId eq 'IND_GL_CLASS' }">
	
			
	<div class="row">
								<div class="form-group col-md-6">
									<label for="cbCode">القيمة الصغرة* </label> <<textarea
										value="${sysTable.MINNUMBER}" required name="MINNUMBER" id="MINNUMBER" rows="6"
										class="form-control">
								</div>
								<div class="form-group col-md-6">
									<label for="placeOrder">القيمة الكبرى*</label> <input
										required name="MAXNUMBER" type="text" id="MAXNUMBER" rows="6"
										value="${sysTable.MAXNUMBER}" class="form-control">
								</div>




							
	

		<div class="row">
	
								<div class="form-group col-md-6">
									<label for="placeOrder">الرقم*</label> <input
										required name="DIGITNUMBER" type="text" id="DIGITNUMBER" rows="6"
										value="${sysTable.DIGITNUMBER}" class="form-control">
							</div>
		
				
			
						<div class="form-group col-md-6" style="align-content: center">
								<div class="custom-control custom-switch">
									
								
										<input type="checkbox" class="custom-control-input"
											onchange="" id="isEnabledFlag" name="isEnabledFlag" value="1">
								
									<label class="custom-control-label" for="isEnabledFlag">
										تفعيل </label> <input type="hidden"
										name="isEnabledFlag" id="isEnabledFlag"
										value="0">
								</div>

				</div>	
				</div>							
							
</div>
</c:if>

</div>


	<c:if test="${ tableId ne 'CUSTOMER_STAGE' && tableId ne 'IND_GL_CLASS'}">
		<%-- 			<div class="form-group  col-md-6">
					yy


				
						<label for="note">ملاحظات</label>
						<input type="text" class="form-control" name="note" id="note" rows="4" value="${sysTable.note}" >
					</div>
				<div class="row">
									<div class="form-group col-md-6" style="align-content: center">
								<div class="custom-control custom-switch">
									
								
										<input type="checkbox" class="custom-control-input"
											onchange="" id="isEnabledFlag" name="isEnabledFlag" value="1">
								
									<label class="custom-control-label" for="isEnabledFlag">
										تفعيل </label> <input type="hidden"
										name="isEnabledFlag" id="isEnabledFlag"
										value="0">
								</div>

							</div>	
					</div>
 --%>




<div class="form-group  col-md-6">

					<%-- <label for="note">ملاحظات</label>
						<input type="text" class="form-control" name="note" id="note" rows="8" value="${sysTable.note}" >
					 --%>
					
						<label for="note">ملاحظات</label>			
						<textarea
										id="note" rows="6" required
										name="note"  class="form-control  ">${sysTable.note} </textarea>
						
							
								
										<div class="form-group col-md-6" >
								<div class="custom-control custom-switch">
									
								
										<input type="checkbox" class="custom-control-input"
											onchange="" id="isEnabledFlag" name="isEnabledFlag" value="1">
								
									<label class="custom-control-label" for="isEnabledFlag">
										تفعيل </label> <input type="hidden"
										name="isEnabledFlag" id="isEnabledFlag"
										value="0">
								</div>
							
							
							</div>
					
</div>
</c:if>



















					<div class="form-group col-md-12" align="left">

						<a
							href="<c:url value='/HomeIndex/tableindex?tableId=${tableId}' />">
							<button class="btn btn-primary" type="button" id="addIndex">&nbsp
								&nbsp إلغاء &nbsp &nbsp</button>
						</a>

						<button class="btn btn-primary" type="submit" value='/HomeIndex/tableindex?tableId=${tableId}' 
						id="addIndex">&nbsp
							&nbsp حفظ &nbsp &nbsp</button>
							
								<a href="<c:url value='/HomeIndex/tableindex?tableId=${tableId}' />">
							<button class="btn btn-primary" type="submit" id="addIndex"  value='/HomeIndex/tableindex?tableId=${tableId}'>&nbsp
									&nbsp موافق &nbsp &nbsp</button>
							</a>
							
					</div>
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



<c:if test="${tableId eq 'IND_ECONMIC_ACTIVITY' }">

	<div class="col-md-6 ">
		<label for="IndEconmicSector">طبيعة العميل *</label> <label
			class="error" for="IndEconmicSector">هذا الحقل مطلوب.</label> <select
			class="form-control select2" id="fileTypeId"
			name="sysTable.indEconmicSector">
			<option value="" selected>اختيار طبيعة العميل</option>
			<optgroup label="حسب الطبيعة">
				<c:forEach var="ind" items="${indEconmicSector}">

					<c:if test="${sysTable.ECONOMIC_SECTOR_ID.id==ind.id}">
						<option value="${ind.id}" selected>${ind.nameA}</option>
					</c:if>
					<c:if test="${sysTable.ECONOMIC_SECTOR_ID.id!=ind.id}">
						<option value="${ind.id}">${ind.nameA}</option>
					</c:if>

				</c:forEach>
			</optgroup>

		</select>
	</div>

</c:if>


<c:if test="${tableId eq 'IND_ECONMIC_ACTIVITY' }">
									<div class="col-md-6 ">
		<label for="IndSectorType">طبيعة العميل *</label> <label class="error"
			for="IndSectorType">هذا الحقل مطلوب.</label> <select
			class="form-control select2" id="fileTypeId"
			name="sysTable.indSectorType">
			<option value="" selected>اختيار طبيعة العميل</option>
			<optgroup label="حسب الطبيعة">
				<c:forEach var="ind" items="${indSectorType}">

					<c:if test="${sysTable.IND_SECTOR_TYPE.id==ind.id}">
						<option value="${ind.id}" selected>${ind.nameA}</option>
					</c:if>
					<c:if test="${sysTable.IND_SECTOR_TYPE.id!=ind.id}">
						<option value="${ind.id}">${ind.nameA}</option>
					</c:if>

				</c:forEach>
			</optgroup>

		</select>
	</div>

</c:if>




<c:if test="${tableId eq 'IND_CUSTOMER_NATURE_KEY' }">
	<div class="col-md-6 ">
		<label for="indCustomerNature">طبيعة العميل *</label> <label
			class="error" for="indCustomerNature">هذا الحقل مطلوب.</label> <select
			class="form-control select2" id="indCustomerNature"
			name="sysTable.indCustomerNature">
			<option value="" selected>اختيار طبيعة العميل</option>
			<optgroup label="حسب الطبيعة">
				<c:forEach var="ind" items="${indCustomerNature}">

					<c:if test="${sysTable.indCustomerNature.id==ind.id}">
						<option value="${ind.id}" selected>${ind.nameA}</option>
					</c:if>
					<c:if test="${sysTable.indCustomerNature.id!=ind.id}">
						<option value="${ind.id}">${ind.nameA}</option>
					</c:if>

				</c:forEach>
			</optgroup>

		</select>
	</div>

</c:if>


<c:if test="${tableId eq 'ACC_IND_DATE_UNIT' }">

	<div class="form-group col-md-6">
		<label for="descriptionA">الوصف باللغة الأساسية *</label> <label
			style="display: none" class="error-label errordescriptionA"
			for="descriptionA">هذا الحقل مطلوب.</label> <input id="descriptionA"
			value="${sysTable.descriptionA}" required name="descriptionA"
			type="text" class="form-control  ">
	</div>

	<div class="form-group col-md-6">
		<label for="descriptionB">الوصف باللغة الثانوية *</label> <label
			style="display: none" class="error-label errordescriptionB"
			for="descriptionB">هذا الحقل مطلوب.</label> <input id="descriptionB"
			value="${sysTable.descriptionB}" required name="descriptionB"
			type="text" class="form-control  ">
	</div>

</c:if>





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

	$("#example-form")
			.submit(
					function(e) {

						var regex = /[.,\s]/g;
						document.forms["example-form"]["capitalValue"].value = document.forms["example-form"]["capitalValue"].value
								.replace(regex, '');
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
</script>