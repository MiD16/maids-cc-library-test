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
					<li class="breadcrumb-item font-weight-bold "><%-- <a
						class="black-text inactive text-uppercase  "
						href="<c:url value='/HomeConfiguration/index' />"> --%>
						<a>
						<span
							class="mr-md-3 mr-2">إدارة الاعدادات</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<%-- <li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase"
						href="<c:url value='/HomeIndex/index' />"><span
							class="mr-md-3 mr-2"> استعراض الفهارس</span></a><i
						class="fe fe-angle-double-right text-uppercase "
						aria-hidden="true"></i></li> --%>

					<li class="breadcrumb-item font-weight-bold">
					<!-- <a -->
<!-- 						class="black-text active text-uppercase " href="#">-->

<a>
						<span>

							<%-- 	<c:if test="${sysTable.id==null }">
						إضافة قيم فهرس
						</c:if> <c:if test="${sysTable.id!=null }">
						</c:if> --%>
												تعديل ${sysTable.nameA}
						
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
				<!-- <div class="card-header">
					<strong> فهرس الحالة الاجتماعية </strong>
				</div> -->
				<div class="card-body">
					<form class="needs-validation" novalidate
						action="${pageContext.request.contextPath}/HomeConfiguration/save?tableId=${tableId}"
						method="post" name="addNewIndSocialStatus"
						modelAttribute="sysTable">

						<div>
							<div class="row">
								<input type="hidden" value="${sysTable.id}" name="id"><input
									type="hidden" value="${sysTable.nameA}" name="nameA">
								</div>
								
	<div class="row">
								<input type="hidden" value="${sysTable.id}" name="id"><input
									type="hidden" value="${sysTable.nameB}" name="nameB">
								</div>
								
								
								
								
								<%-- <div class="row">
								<input type="hidden" value="${sysTable.id}" name="id"><input
									type="hidden" value="${sysTable.nameB}" name="nameB">
								</div>
								 --%>
								
								<div class="row">
								<input type="hidden" value="${sysTable.id}" name="id"><input
									type="hidden" value="${sysTable.DATATYPE}" name="DATATYPE">
								</div>
								
								
								<div class="row">
								<input type="hidden" value="${sysTable.isenabled}" name="isenabled"><input
									type="hidden" value="${sysTable.isenabled}" name="isenabled">
									
								</div>
								
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
								
 --%><!-- 
								<div class="custom-control custom-checkbox ">




									<hr>
									<input type="checkbox" id="myButton2" checked class="mt-5"
										onchange="checkInput()">

 -->




									<script>
	
	
	 function checkInput() {
		// alert("hi 1 ");
	// First, get a reference to the button
	//var button = document.getElementById('myButton');
	//alert("hi");
	
	  var remember = document.getElementById('myButton2');
	  //alert(remember);
	    if (remember.checked){
	        alert("checked") ;
	        remember.value='1';
	    }else{
	        alert("You didn't check it! Let me check it for you.");
	        remember.value='0';
	    }

	// Then, disable the button
	//button.disabled = true;
	 }
	 </script>
									<%-- 
												<c:if
													test="${sysTable.id!=null && sysTable.isenabled==1}">
													<input type="checkbox" value="1" checked
														class="custom-control-input form-control"
														id="isenabled" name="isenabled">
												</c:if>

												<c:if
													test="${sysTable.id==null || sysTable.isenabled==0}">
													<input type="checkbox" value="1"
														class="custom-control-input form-control"
														id="isenabled" name="isenabled">
												</c:if>

												<input type='hidden' value='0' name='isenabled'>
												<label class="custom-control-label" for="isenabled">قيمة
													الفهرس فعال </label>
									<%-- 		</div> --%>
									<!--  	</div>
									</div>
								<c:if
									test="${tableId ne 'CUSTOMER_SITUATION' && tableId ne 'CUSTOMER_STAGE' }">


									<div class="form-group col-md-6">
										<label for="nameA">الاسم باللغة الأساسية *</label> <label
											style="display: none" class="error-label errornameA"
											for="nameA">هذا الحقل مطلوب.</label> <input id="nameA"
											value="${sysTable.nameA}" required name="nameA" type="text"
											class="form-control  ">
									</div>
						 <div class="mb-2">
						 
		</c:if>
						 
						 	 <c:if test="${sysTable.isenabled == 0}">
						 	 
						 	<a href="<c:url value='/HomeConfiguration/editEnableFlage?tableId=${tableId}' />">
						 	<button type="button" class="btn mb-2 btn-outline-primary" disabled="0"value="0" 
                       			 id="isenabled" name="isenabled">"Disabled</button>
						 	</a> 
                        
                        				 <c:if test="${sysTable.isenabled == 1}">
						 <a href="<c:url value='/HomeConfiguration/editEnableFlage?tableId=${tableId}' />">
						 	<button type="button" class="btn mb-2 btn-outline-primary active " value="1" 
								onclick	= "hh()"				
								id="isenabled" name="isenabled">Active</button>
						 </a>
						  
						  
			 
						 </c:if>
                        
                        
                        
						 	 
						 </c:if>
						 
                       
								
														
                        
                        
                      </div>
 
 -->
									<!--  
	<c:if test="${tableId eq 'CUSTOMER_STAGE' }" >
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



<c:if test="${tableId eq 'ACC_IND_DATE_UNIT' }">

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
</c:if>
									<div class="col-md-6">
										<div class="form-group">
											<label for="isenabled"> فعال *</label> <label
												style="display: none" class="error" for="isenabled">هذا
												الحقل مطلوب.</label>
 --%>
<%-- 
											<div class="custom-control custom-checkbox ">
												<c:if
													test="${sysTable.id!=null && sysTable.isEnabledFlag==1}">
													<input type="checkbox" value="1" checked
														class="custom-control-input form-control"
														id="isenabled" name="isenabled">
												</c:if>

												<c:if
													test="${sysTable.id==null || sysTable.isenabled==0}">
													<input type="checkbox" value="1"
														class="custom-control-input form-control"
														id="isenabled" name="isenabled">
												</c:if>

												<input type='hidden' value='0' name='isenabled'>
												<label class="custom-control-label" for="isenabled">قيمة
													الفهرس فعال </label>
											</div> --%>
										</div>
									</div>














								<c:if test="${tableId eq 'CUSTOMER_SITUATION' }">
								
								sssssssssssssssss
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
								<c:if test="${tableId ne 'CUSTOMER_STAGE' }">
									<div class="form-group col-md-6">
										<label for="cbCode">الرمز </label> <input type="text"
											value="${sysTable.cbCode}" required name="cbCode" id="cbCode"
											class="form-control">
									</div>


									<%-- <div class="form-group col-md-6">
										<label for="placeOrder">ترتيب عرض القيمة</label> <input
											required name="placeOrder" type="text" id="placeOrder"
											onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"
											value="${sysTable.placeOrder}" class="form-control">
									</div> --%>



								

									<div class="form-group col-md-6">
										<label for="placeOrder">ترتيب عرض القيمة</label> <input
											required name="placeOrder" type="text" id="placeOrder"
											onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"
											value="${sysTable.placeOrder}" class="form-control">
									</div>

								</c:if>

							
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
									
									
								</c:if>


								<c:if test="${tableId eq 'IND_ECONMIC_ACTIVITY' }">
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

    <!-- 

                        <button type="button" class="btn mb-2 btn-outline-primary active onclick="hhh();">Active</button>
                    <div class="mb-2">
                        <button type="button" class="btn mb-2 btn-outline-primary" disabled="">Disabled</button>
                      </div>
 -->

									<!-- 
							<c:if test="${tableId eq 'IND_CUSTOMER_NATURE_KEY' }">
									<div class="col-md-6 ">
										<label for="indCustomerNature">طبيعة العميل *</label> <label
											class="error" for="indCustomerNature">هذا الحقل
											مطلوب.</label> <select class="form-control select2"
											id="indCustomerNature" name="sysTable.indCustomerNature">
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



								<!--  	<c:if test="${tableId eq 'IND_REGION' }">
									<div class="form-group col-md-6">
										<label for="code">رمز </label> <input type="text"
											value="${sysTable.code}" required name="code" id="code"
											class="form-control">
									</div>
								</c:if>
-->

									<!--  	<c:if test="${tableId eq 'IND_CITY' }">
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
-->
									<!--  	<c:if test="${tableId eq 'IND_REGION' }">
									<div class="col-md-6 ">
										<label for="indCity">المدينة *</label> <label class="error"
											for="indCity">هذا الحقل مطلوب.</label> <select
											class="form-control select2" id="indCity"
											name="sysTable.indCity">
											<option value="" selected>اختيار المدينة</option>
											<optgroup label="حسب المدينة">
												<c:forEach var="ind" items="${indCities}">

													<c:if test="${sysTable.indCity.id==ind.id}">
														<option value="${ind.id}" selected>${ind.nameA}</option>
													</c:if>
													<c:if test="${sysTable.indCity.id!=ind.id}">
														<option value="${ind.id}">${ind.nameA}</option>
													</c:if>


												</c:forEach>
											</optgroup>

										</select>
									</div>
								</c:if>
-->
									<!--
							  	<c:if test="${tableId eq 'IND_CUSTOMER_NATURE_KEY' }">
									<div class="col-md-6 ">
										<label for="indCustomerNature">طبيعة العميل *</label> <label
											class="error" for="indCustomerNature">هذا الحقل
											مطلوب.</label> <select class="form-control select2"
											id="indCustomerNature" name="sysTable.indCustomerNature">
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

								<!-- ------------------------------------------------------------------------------------------- -->

									<!--  
								<c:if test="${tableId eq 'ACC_IND_DATE_UNIT' }">

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

								</c:if>

-->










									<!--  
								<c:if test="${tableId eq 'ACC_IND_INTEREST_TYPE' }">

									<div class="form-group col-md-6">
										<label for="description">الوصف *</label> <label
											style="display: none" class="error-label errordescription"
											for="description">هذا الحقل مطلوب.</label> <input
											id="description" value="${sysTable.description}" required
											name="description" type="text" class="form-control  ">
									</div>
								</c:if>


-->



									<!--  
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

-->
									<!-- ------------------------------------------------------------------------------------------- -->


									<!--  

								<c:if test="${tableId eq 'IND_ECONMIC_ACTIVITY' }">
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


		-->

									<!-- 									
									
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

								</c:if>
												
											

 -->
									<%-- 
							 	<c:if test="${tableId eq 'ACC_IND_DATE_UNIT' }">

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

								</c:if> --%>



									<!--  					<c:if test="${tableId eq 'ACC_IND_INTEREST_TYPE' }">

									<div class="form-group col-md-6">
										<label for="description">الوصف *</label> <label
											style="display: none" class="error-label errordescription"
											for="description">هذا الحقل مطلوب.</label> <input
											id="description" value="${sysTable.description}" required
											name="description" type="text" class="form-control  ">
									</div>
								</c:if>



-->
									<!--  
<div></div>
	<c:if test="${tableId eq 'SYS_CONFIGRATION' }">
	
	
	</c:if>

</div>







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



<input type="button" id="p1" value="edit" onclick="show()" />
<input type="button" id="p2" value="submit" name="submit" />

<script type="text/javascript"> 
function show(){


	$("#p2").hide()
	}

</script>









								<div class="col-md-6">
									<div class="form-group">
										<label for="note">ملاحظات</label>
										<textarea class="form-control" name="note" id="note" rows="4">${sysTable.note}</textarea>
									</div>
								</div>
							</div>
							<div class="row">

								<div class="form-group col-md-12" align="left">

<%-- 
									<a
										href="<c:url value='/HomeConfiguration/tableindex?tableId=${tableId}' />">
										<button  onclick="hh()">&nbsp
											&nbsp إلغاء &nbsp &nbsp</button>
									</a>

									<button class="btn btn-primary" type="submit" id="addIndex">&nbsp
										&nbsp حفظ &nbsp &nbsp</button>

								</div>
								
								<h3 id="demo" onclick="myFunction()">Click me to change my color.</h3> --%>
								
								
								
						
			<div class="container">
    <div class="toggle" onclick="toggle()">
    
    *******
        <div class="circle">
        --</div>
    </div>
    <span class="text">FF</span>
</div>				
							
			
							
		-->

									<!--<c:if test="${tableId eq 'CUSTOMER_STAGE' }">  	</c:if>-->

<!-- 
									<div class="form-group col-md-6">
										<label for="">االاعداد *</label> <label style="display: none"
											class="error-label errordescriptionA" for="">هذا
											الحقل مطلوب.</label> <input id="" value="" required name=""
											type="text" class="form-control  ">
									</div> -->

									
									
									<%-- <h1> "${sysTable.id}"</h1> --%>
									
									
									<c:if test="${sysTable.DATATYPE eq '2'}">
									
									<div class="form-group col-md-6">
										<label for="valuenumber">االقيمة رقمية فقط *</label> <label
										style="display: none" class="error-label errordescriptionA"
											for="valuenumber">هذا الحقل مطلوب.</label> <input
											id="valuenumber" value="${sysTable.valuenumber}"
											name="valuenumber" type="number" class="form-control  ">
											
											
									</div>
									
									
									
										</c:if> 			
										
										<c:if test="${sysTable.DATATYPE eq '3'}">
									
									<div class="form-group col-md-6">
										<label for="valuestring">االقيمة *</label> <label
										style="display: none" class="error-label errordescriptionA"
											for="valuestring">هذا الحقل مطلوب.</label> <input
											id="valuestring" value="${sysTable.valuestring}"
											name="valuestring" type= class="form-control  ">
											
											
									</div>
									
									
									
										</c:if> 			
										

	<!--  <h1> "${sysTable.id}"</h1>-->


	<c:if test="${sysTable.DATATYPE eq '1'}">
									<div class="container">
										<div class="toggle" onclick="toggle()">

											
											<div class="circle">--</div>
										</div>
										<span class="text"></span>
									</div>
									
<%--  <input type="hidden" id="valuebool" name="valuebool" value="0"  onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"
									 class="form-control">> --%>
									
 <input required
									name="valuebool" type="text" id="valuebool"
									onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"
									value="0" class="form-control">
 </c:if>
 
 <button class="btn btn-primary" type="submit" id="addIndex">&nbsp
										&nbsp حفظ &nbsp &nbsp</button>
 


									<script>
									
									function allnumeric(inputtxt)
									   {
									      var numbers = /^[0-9]+$/;
									      if(inputtxt.value.match(numbers))
									      {
									      alert('Your Registration number has accepted....');
									      document.form1.text1.focus();
									      return true;
									      }
									      else
									      {
									      alert('Please input numeric characters only');
									      document.form1.text1.focus();
									      return false;
									      }
									   } 								
									
									
									
									
									
									
									
									

let active = false

function toggle() {
let toggle = document.querySelector('.toggle')

active = !active
if (active) {
toggle.classList.add('active')

	$("#valuebool").val("1")

} else {
toggle.classList.remove('active')
	$("#valuebool").val("0");
}
}			
</script>









									<script>
window.onclick = myFunction;

function myFunction() {
 /*  document.getElementsByTagName("BODY")[0].style.backgroundColor = "yellow"
  ; */
 // var feesFlag = document.getElementById(${elementId});
  document.getElementById(${tableId});
  
  alert("hi");
}
</script>
									</script>





	<!-- 								<script> 
      function fun() { 
    	     var feesFlag = document.getElementById(${tableId});	
    	        
    	       // if (feesFlag.isenabled == 1) {
    	           /*  feesAmount.removeAttribute("readonly");
    	            operationCount.removeAttribute("readonly");
    	            glFeesId.removeAttribute("disabled");
    	 */
    	 alert (document.getElementById(${tableId}););
      }  -->
   </script>
									<!-- Calling js function using HTML button <br> -->
									<br>
<!-- 									<button onclick="fun()">click me !</button>
 -->									<p>
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
	
	/* function hh(){
        var feesFlag = document.getElementById(${tableId});	
        
        if (feesFlag.isenabled == 1) {
           /*  feesAmount.removeAttribute("readonly");
            operationCount.removeAttribute("readonly");
            glFeesId.removeAttribute("disabled");
 */
/* alert (feesFlag);
	}*/
	
</script>