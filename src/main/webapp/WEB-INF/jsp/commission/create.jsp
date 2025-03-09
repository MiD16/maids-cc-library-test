
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
					<c:if test='${actionCommissionInfo.commission.id==0}'>
						<li class="breadcrumb-item font-weight-bold"><a
							class="black-text active text-uppercase " href="#"><span>إضافة
									عمولة </span></a></li>
					</c:if>
					<c:if test='${actionCommissionInfo.commission.id!=0}'>
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
					<c:if test='${actionCommissionInfo.commission.id==0}'>
						<strong class="card-title"> إضافة عمولة </strong>
					</c:if>
					<c:if test='${actionCommissionInfo.commission.id!=0}'>

						<div class="row mt-3" style="align-content: center;">
							<div class="col-md-10">
								<strong class="card-title"> تعديل عمولة </strong>
							</div>
							<div class="col-md-2" style="text-align: left;">
								<c:if
									test="${actionCommissionInfo.commission.isEnableFlag == 1}">
									<span class="badge badge-pill badge-success"
										style="padding: 1.25em 2em; font-size: 76%">فعالة</span>
								</c:if>
								<c:if
									test="${actionCommissionInfo.commission.isEnableFlag == 0}">
									<span class="badge badge-pill badge-danger"
										style="padding: 1.25em 2em; font-size: 76%">غير فعالة</span>
								</c:if>


							</div>
						</div>
					</c:if>


				</div>
				<div class="card-body">


					<script>
		function clrearDate(id){
			$('#'+id).val("")
			$('#'+id+'Input').val("")
			changeDate(id);
			
		}
		</script>
					<script>
			function changeDate(id){
			//	alert("changeDate : " + id)
			//	alert($('#'+id).val())
				$('#'+id+'Input').val($('#'+id).val())
		//		alert($('#'+id+'Input').val())
			}
		</script>


					<form id="form" class="needs-validation" novalidate method="post"
						modelAttribute="actionCommissionInfo"
						action="${pageContext.request.contextPath}/commission/save">


						<input id="id" name="commission.id" type="hidden"
							class="form-control "
							value="${actionCommissionInfo.commission.id}"> <input
							id="commission.insertBy" name="commission.insertBy" type="hidden"
							class="form-control "
							value="${actionCommissionInfo.commission.insertBy}"> <input
							id="isDeleted" name="commission.isDeleted" type="hidden"
							class="form-control "
							value="${actionCommissionInfo.commission.isDeleted}"> <input
							type="hidden" name="commission.isEnableFlag"
							id="isEnableFlagInput"
							value="${actionCommissionInfo.commission.isEnableFlag}">



						<div class="wizard clearfix row">
							<div class="form-group col-md-6">

								<h5 style="color: #d1a923">معلومات العمولة</h5>

							</div>

							<div class="form-group col-md-6"></div>
							<div class="col-md-6">
								<div class="form-group">

									<label for="nameA"> اسم العمولة *</label> <input id=nameA
										name="commission.nameA" type="text" class="form-control "
										required value="${actionCommissionInfo.commission.nameA}">
									<div class="invalid-feedback">هذا الحقل مطلوب</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">

									<label for="nameB"> اسم العمولة باللغة الثانوية *</label> <input
										id="nameB" name="commission.nameB" type="text"
										class="form-control " required
										value="${actionCommissionInfo.commission.nameB}">
									<div class="invalid-feedback">هذا الحقل مطلوب</div>
								</div>
							</div>
							<div class=" col-md-6">
								<div class="form-group">

									<label for="indCommissionType">نوع العمولة</label> <select
										class="form-control select2" id="indCommissionType"
										name="commission.indCommissionType">

										<c:forEach var="CommissionType"
											items="${IndCommissionTypeList}">
											<c:if
												test="${actionCommissionInfo.commission.indCommissionType.id == CommissionType.id }">
												<option nameB="${CommissionType.nameB}"
													value="${CommissionType.id}" selected>${CommissionType.nameA}</option>
											</c:if>
											<c:if
												test="${actionCommissionInfo.commission.indCommissionType.id != CommissionType.id }">
												<option nameB="${CommissionType.nameB}"
													value="${CommissionType.id}">${CommissionType.nameA}</option>
											</c:if>

										</c:forEach>


									</select>


								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">

									<label for="cbCode"> رمز المصرف المركزي </label> <input
										id="cbCode" name="commission.cbCode" type="text"
										class="form-control "
										value="${actionCommissionInfo.commission.cbCode}">

								</div>
							</div>
							<div class="form-group col-md-6" id="is_enabledDiv">
								<p class="mb-2">القيمة بالنسبة المئوية *</p>
								<c:if
									test="${actionCommissionInfo.commission.precentageFlag==1 ||actionCommissionInfo.commission.precentageFlag==null}">
									<div class=" custom-radio form-check-inline">
										<input value="1" type="radio" id="precentageFlag"
											name="commission.precentageFlag" class="custom-control-input"  onclick="percentFlagChange(this)"
											checked> <label class="custom-control-label"
											for="precentageFlag">نعم </label>
									</div>
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="precentageFlag2"  onclick="percentFlagChange(this)"
											name="commission.precentageFlag" class="custom-control-input">
										<label class="custom-control-label" for="precentageFlag2">
											لا </label>
									</div>




								</c:if>
								<c:if
									test="${actionCommissionInfo.commission.precentageFlag==0 }">
									<div class=" custom-radio form-check-inline">
										<input value="1" type="radio" id="precentageFlag" onclick="percentFlagChange(this)"
											name="commission.precentageFlag" class="custom-control-input">
										<label class="custom-control-label" for="precentageFlag">نعم
										</label>
									</div>
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="precentageFlag2" onclick="percentFlagChange(this)"
											name="commission.precentageFlag" class="custom-control-input"
											checked> <label class="custom-control-label"
											for="precentageFlag2"> لا </label>
									</div>




								</c:if>
							</div>
							<div class="col-md-6">
								<div class="form-group">

									<label for="value"> القيمة *</label> <input id="value"
										name="commission.value" type="text" class="form-control"
										
										
										required value="${actionCommissionInfo.commission.value}">
									<div class="invalid-feedback">هذا الحقل مطلوب</div>
								</div>
							</div>
							<%-- 		<div class="col-md-6">
								<div class="form-group">
									<label for="effectiveFrom">تاريخ بدء التفعيل *</label>
									<div class="input-group">
										<input type="text" class="form-control drgpicker" required
											value="${actionCommissionInfo.commission.effectiveFrom}"
											id="effectiveFrom" name="comfrom"
											aria-describedby="button-addon2">
										<div class="input-group-append">
											<div class="input-group-text" id="button-addon-date">
												<span class="fe fe-calendar fe-16"></span>
											</div>
										</div>
										<div class="invalid-feedback">هذا الحقل مطلوب</div>
									</div>
								</div>
								<input type="hidden" name="commission.effectiveFrom"
									id="effectiveFromInput">

							</div> --%>


							<div class="form-group col-md-6" style="align-content: center">
								<div class="custom-control custom-switch">
									<c:if
										test="${actionCommissionInfo.commission.activationFlag == null || actionCommissionInfo.commission.activationFlag == 1}">
										<input type="checkbox" class="custom-control-input" checked
											onchange="effectiveChange(this)" id="activationFlag"
											value="1">
									</c:if>
									<c:if
										test="${ actionCommissionInfo.commission.activationFlag == 0}">
										<input type="checkbox" class="custom-control-input"
											onchange="effectiveChange(this)" id="activationFlag">
									</c:if>
									<label class="custom-control-label" for="activationFlag">
										تفعيل العمولة</label> <input type="hidden"
										name="commission.activationFlag" id="activationFlagInput"
										value="${actionCommissionInfo.commission.activationFlag}">
								</div>

							</div>
							<div class="col-md-6">
								<div class="form-group"></div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="effectiveFrom"> تاريخ بدء التفعيل </label>
									<div class="input-group">
										<input type="text" class="form-control drgpicker required"
											required id="effectiveFrom"
											onchange="changeDate('effectiveFrom')"
											value="${actionCommissionInfo.commission.effectiveFrom}"
											name="effectiveFrom" aria-describedby="button-addon2">

										<div class="input-group-append">

											<div title="حذف التاريخ" class="input-group-text clear"
												style="display: block;" id="button-remove-effectiveFrom"
												onclick="clrearDate('effectiveFrom')">
												<span class="fe fe-x fe-16"></span>
											</div>
											<div class="input-group-text" id="button-addon-date">
												<span class="fe fe-calendar fe-16"></span>
											</div>


										</div>
									</div>
								</div>
								<input type="hidden" name="commission.effectiveFrom"
									id="effectiveFromInput">
							</div>


							<%-- 	<div class="col-md-6" id="effectiveToDiv">
								<div class="form-group">
									<label for="effectiveTo">تاريخ إلغاء التفعيل *</label>
									<div class="input-group">
										<input type="text" class="form-control drgpicker"
											value="${actionCommissionInfo.commission.effectiveTo}"
											id="effectiveTo" name="effectiveTo"
											aria-describedby="button-addon2">
										<div class="input-group-append">
											<div class="input-group-text" id="button-addon-date">
												<span class="fe fe-calendar fe-16"></span>
											</div>
										</div>
										<div class="invalid-feedback">هذا الحقل مطلوب</div>
									</div>
								</div>

							</div> --%>

							<div class="col-md-6">
								<div class="form-group">
									<label for="effectiveTo">تاريخ إلغاء التفعيل </label>
									<div class="input-group">
										<input type="text" class="form-control drgpicker required"
											id="effectiveTo" onchange="changeDate('effectiveTo')"
											value="${actionCommissionInfo.commission.effectiveTo}"
											name="effectiveTo" aria-describedby="button-addon2">

										<div class="input-group-append">

											<div title="حذف التاريخ" class="input-group-text clear"
												style="display: block;" id="button-remove-effectiveTo"
												onclick="clrearDate('effectiveTo')">
												<span class="fe fe-x fe-16"></span>
											</div>
											<div class="input-group-text" id="button-addon-date">
												<span class="fe fe-calendar fe-16"></span>
											</div>

										</div>
									</div>
								</div>
								<input type="hidden" name="commission.effectiveTo"
									id="effectiveToInput">
							</div>

							<div class=" col-md-6">
								<div>
									<label for="note">ملاحظة</label>
									<textarea class="form-control" name="commission.note" id="note"
										rows="4">${actionCommissionInfo.commission.note}</textarea>
								</div>

							</div>


							<br></br> <br></br> <br></br> <br></br>
							<c:if test="${actionCommissionInfo.actionCommissions.size() > 0}">

								<div class="form-group col-md-6"></div>

								<div class="form-group col-md-6" style="margin-bottom: 2.5rem;">

									<h5 style="color: #d1a923">العمليات المرتبطة بالعمولة</h5>

								</div>
								<!-- <div class="form-group col-md-6"></div> -->

								<div class="col-md-12" id="addActionDiv"
									style="padding-bottom: 20px;">
									<table class="table datatables" id="addActionTable">
										<thead>
											<tr>

												<th>اسم العملية باللغة العربية</th>
												<th>اسم العملية باللغة الثانوية</th>
												<th>الحالة</th>
												<th>تفعيل العملية</th>

												<th>
													<div class="custom-control custom-checkbox ">

														<input type="checkbox"
															class="custom-control-input form-control"
															id="activationFlagAll"
															onchange="activateAll(this.checked)"> <label
															class="custom-control-label" for="activationFlagAll">تفعيل
															الكل</label>
													</div> <!-- <div class="form-group col-md-4"
									style="text-align: left; align-content: center">
									<div class="custom-control custom-switch">

										<input type="checkbox" class="custom-control-input"
											onchange="activateAll(this.checked)" id="activationFlagAll"
											value="1"> <label class="custom-control-label"
											for="activationFlagAll">تفعيل الكل</label>
									</div>

								</div> -->
												</th>

											</tr>
										</thead>
										<tbody>
											<c:forEach varStatus="status" var="actionCommissionsList"
												items="${actionCommissionInfo.actionCommissions}">

												<div id="div_${actionCommissionsList.action.ID}">

													<input type="hidden"
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
													<td><div class="custom-control custom-switch"
															style="margin-right: 75px;">
															<c:if
																test="${actionCommissionsList.activationFlag == null || actionCommissionsList.activationFlag == 1}">
																<input type="checkbox"
																	data-id="${actionCommissionsList.action.ID}"
																	class="custom-control-input activationFlag" checked
																	onchange="setactivationFlagValue(this,${actionCommissionsList.action.ID})"
																	id="actionCommissionActivationFlag_${actionCommissionsList.action.ID}"
																	value="1">
															</c:if>
															<c:if
																test="${ actionCommissionsList.activationFlag == 0}">
																<input type="checkbox"
																	data-id="${actionCommissionsList.action.ID}"
																	class="custom-control-input activationFlag"
																	onchange="setactivationFlagValue(this,${actionCommissionsList.action.ID})"
																	id="actionCommissionActivationFlag_${actionCommissionsList.action.ID}">
															</c:if>
															<label class="custom-control-label"
																for="actionCommissionActivationFlag_${actionCommissionsList.action.ID}">
															</label> <input type="hidden"
																name="actionCommissionsActivationFlag[]"
																id="actionCommissionActivationFlagInput_${actionCommissionsList.action.ID}"
																value="${actionCommissionsList.activationFlag}">
														</div></td>

													<td></td>

												</tr>

											</c:forEach>
										</tbody>
									</table>

								</div>

							</c:if>


							<div class="actions clearfix">
								<ul role="menu" aria-label="Pagination">

									<li aria-hidden="false" aria-disabled="false"><button
											type="submit" class="btn mb-2 btn-primary"
											style="margin-top: 4.5rem;">حفظ</button></li>
								</ul>
							</div>

						</div>

					</form>







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
			$('.input-percent').mask("#0%", {
				reverse : true
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
				window
						.addEventListener(
								'load',
								function() {
									// Fetch all the forms we want to apply custom Bootstrap validation styles to
									var forms = document
											.getElementsByClassName('needs-validation');
									// Loop over them and prevent submission
									var validation = Array.prototype.filter
											.call(
													forms,
													function(form) {
														form
																.addEventListener(
																		'submit',
																		function(
																				event) {

																			if (form
																					.checkValidity() === false) {
																				event
																						.preventDefault();
																				event
																						.stopPropagation();
																			}

																			form.classList
																					.add('was-validated');

																		},
																		false);
													});
								}, false);
			})();
		</script>


		<!-- <script>
  function setCurrentDate(inputId) {
    const currentDate = new Date();
    const formattedDate = currentDate.toISOString().split('/')[0];
    $('#'+inputId).val(formattedDate);
    changeDate(inputId);
    
  }

 

  // Other functions like changeDate and clearDate go here
</script> -->
		<script>
			function setRequired(id){
				document.getElementById(id).setAttribute('required', '');
			}
			
			function removeRequired(id){
				document.getElementById(id).removeAttribute('required');
			}
			function enabled(id){
				document.getElementById(id).disabled = false;
				document.getElementById("button-remove-"+id).style.display = "block";
			}
			function disabled(id){
				document.getElementById(id).disabled = true;
				document.getElementById("button-remove-"+id).style.display = "none";
			}
			
			
		</script>
		
				<script>
		function activateAll(activate) {
		    // Assuming 'activate' is true if activating, false otherwise
		    const checkboxes = document.querySelectorAll('.activationFlag');
		    checkboxes.forEach((checkbox) => {
		        checkbox.checked = activate;
		       // alert(checkbox.getAttribute('data-id'));
		        var id = checkbox.getAttribute('data-id');
		        if(activate)
		        $("#actionCommissionActivationFlagInput_"+id).val('1')
		        if(!activate)
			        $("#actionCommissionActivationFlagInput_"+id).val('0')

		 
		    });
		}
	
		function setactivationFlagValue(elem,id){
		  	 if (elem.checked) {
			        $("#actionCommissionActivationFlagInput_"+id).val('1')
			}
			else{
		        $("#actionCommissionActivationFlagInput_"+id).val('0')
		    	 
			}  
		  
		
		}
		
		function disableEnableAll(enable) {
		    // Assuming 'activate' is true if activating, false otherwise
		   var inputElementAll = document.getElementById('activationFlagAll'); 

		    if(enable && inputElementAll != null)
		    	document.getElementById('activationFlagAll').disabled = false;
		   
		    else if(!enable && inputElementAll !=null )
		    	document.getElementById('activationFlagAll').disabled = true;
		    
		    const checkboxes = document.querySelectorAll('.activationFlag');
		   
		    checkboxes.forEach((checkbox) => {
		        
		       // alert(checkbox.getAttribute('data-id'));
		        var id = checkbox.getAttribute('data-id');
		        if(enable){
		        //	document.getElementById("activationFlagAll").checked= true;
		        	//checkbox.checked = true;
		        	document.getElementById("actionCommissionActivationFlag_"+id).disabled = false;
			    //    $("#actionCommissionActivationFlagInput_"+id).val('1')
		        }
		        else{
		        //	document.getElementById("activationFlagAll").checked= false;

		        	//checkbox.checked = false;
		        	document.getElementById("actionCommissionActivationFlag_"+id).disabled = true;
		        	 $("#actionCommissionActivationFlagInput_"+id).val('0')
		        }
			       

		 
		    });
		}
		</script>
		<script>
  function setCurrentDate(inputId) {
    const currentDate = new Date();
    // Extract year, month, and day from the ISO string
    const isoString = currentDate.toISOString().split('T')[0];
    const [year, month, day] = isoString.split('-');
    
    // Adjust month indexing and pad day and month with leading zeros if necessary
    const formattedMonth = String(Number(month)).padStart(2, '0'); // Add 1 to month and pad with zero if needed
    const formattedDay = day.padStart(2, '0'); // Pad day with zero if needed
    
    // Concatenate components with slashes
  //  const formattedDate = ${formattedMonth}/${formattedDay}/${year};
    const formattedDate = year+'/'+formattedMonth+'/'+formattedDay;

    
    $('#'+inputId).val(formattedDate);
    changeDate(inputId);
    }

  // Other functions like changeDate and clearDate go here
</script>
		<script>
		
		var commissionId = '${actionCommissionInfo.commission.id}';
		var effectiveFrom = document.getElementById('effectiveFrom');
		var remove_effectiveFrom = document.getElementById('button-remove-effectiveFrom');
		var remove_effectiveTo = document.getElementById('button-remove-effectiveTo');

		var effectiveTo = document.getElementById('effectiveTo');
		var activationFlag = '${actionCommissionInfo.commission.activationFlag}';
		var commissEffectiveTo = '${actionCommissionInfo.commission.effectiveTo}';
		var commissEffectiveFrom = '${actionCommissionInfo.commission.effectiveFrom}';

		var isEnableFlag = '${actionCommissionInfo.commission.isEnableFlag}';

		if (activationFlag == '' || activationFlag == 1) {

			$('#activationFlagInput').val("1");
		//	disableEnableAll(true);
		} else {
		//	disableEnableAll(false);
			$('#activationFlagInput').val("0");
			disabled('effectiveFrom');
			disabled('effectiveTo');
		//	disableEnableAll(false);
			//effectiveFrom.disabled = true;
			//effectiveTo.disabled = true;
			//remove_effectiveTo.disabled = true;
			//remove_effectiveFrom.disabled = true;
		}
		
		
		
		
		//create commission
		if(commissionId == ""){
			clrearDate("effectiveTo");
			
	//		changeDate("effectiveFrom");
		}//edit
		else{
			if(commissEffectiveTo == "")
				clrearDate("effectiveTo");
			if(commissEffectiveFrom == "")
				clrearDate("effectiveFrom");
			
			if(isEnableFlag == 1){
				//effectiveFrom.disabled = true;
				//remove_effectiveFrom.disabled = true;
				disabled('effectiveFrom');

			}
			
		}
		</script>
		<!-- <script>
		function percentFlagChange(elem){
			 var commission_value = document.getElementById('commission_value'); 
			if (elem.value == 0){
				alert(false)
				commission_value.classList.remove("input-percent");
				
			}
			else{
				alert(true)
				commission_value.classList.add("input-percent");
			}
		}
		</script> -->
		<script>
		function effectiveChange(elem){
			if (elem.checked == false){
				activateAll(false);
			//	disableEnableAll(false);
				 var inputElementAll = document.getElementById('activationFlagAll'); 
				 
				 if(inputElementAll != null)
					 inputElementAll.checked = false;
				 
					if(commissionId == ""){
						removeRequired("effectiveFrom");
						//effectiveFrom.disabled = true;
						//effectiveTo.disabled = true;
						//remove_effectiveFrom.disabled = true;
						//remove_effectiveTo.disabled = true;
						disabled('effectiveFrom');
						disabled('effectiveTo');
						clrearDate("effectiveTo");
						clrearDate("effectiveFrom");
	
					}//edit
					else{
						if(isEnableFlag == 0){
							removeRequired("effectiveFrom");
							//effectiveFrom.disabled = true;
							//effectiveTo.disabled = true;
							//remove_effectiveFrom.disabled = true;
							//remove_effectiveTo.disabled = true;
							disabled('effectiveFrom');
							disabled('effectiveTo');
							clrearDate("effectiveTo");
							clrearDate("effectiveFrom");
						}else{
							setRequired("effectiveTo");
							 setCurrentDate('effectiveTo');
							// effectiveTo.disabled = true;
							// remove_effectiveTo.disabled = true;
							 disabled('effectiveFrom');
								disabled('effectiveTo');
						}
					}
					
					$('#activationFlagInput').val("0");
			}else{
				//disableEnableAll(true);

					if(commissionId == ""){
					setRequired("effectiveFrom");
					enabled('effectiveFrom');
					enabled('effectiveTo');
					//effectiveFrom.disabled = false;
				//	effectiveTo.disabled = false;
					//remove_effectiveFrom.disabled = false;
					//remove_effectiveTo.disabled = false;
					}else{
						if(isEnableFlag == 0){
							setRequired("effectiveFrom");
							enabled('effectiveFrom');
							enabled('effectiveTo');
							clrearDate('effectiveFrom');
							clrearDate('effectiveTo');
						//	effectiveFrom.disabled = false;
						//	effectiveTo.disabled = false;
						//	remove_effectiveFrom.disabled = false;
							//remove_effectiveTo.disabled = false;
						}else{
							removeRequired("effectiveTo");
							clrearDate('effectiveTo');
							enabled('effectiveTo');
							// effectiveTo.disabled = false;
							//	remove_effectiveTo.disabled = false;
						}
					}
					$('#activationFlagInput').val("1");
			}
			//create commission
			
		}
		</script>



		<!-- <script>
			$('#effectiveFromInput').val($('#effectiveFrom').val());
			var inputElement = document.getElementById('effectiveFrom');
			var activationFlag = '${actionCommissionInfo.commission.activationFlag}';
			var isEnableFlag = '${actionCommissionInfo.commission.isEnableFlag}';
			var effectiveTo = '${actionCommissionInfo.commission.effectiveTo}';
			var inputElementeffectiveTo = document.getElementById('effectiveTo');

			 
		if(isEnableFlag == 1 || isEnableFlag == "" ){
			document.getElementById('effectiveTo').disabled = false;
		}
		else if(isEnableFlag == 0){
			document.getElementById('effectiveTo').disabled = true;
		}
		if(effectiveTo == "")
		{
			$('#effectiveTo').val("");
		}
		
		
	 	 if(isEnableFlag == 1 ){
	 		//document.getElementById('effectiveFrom').setAttribute('readonly', 'true');
	 	//	$('#effectiveFromInput').val($('#effectiveFrom').val());
			document.getElementById('effectiveFrom').disabled = true;
		} 
		  
	
			
			function disabledInput() {
		//		inputElement.value = '';
				inputElement.removeAttribute('required');
			

				//inputElement.disabled = true;
				$('#activationFlagInput').val("0");
			//	$('#isEnableFlagInput').val("0");
			}
			function enableInput() {
				inputElement.setAttribute('required', '');

				//inputElement.disabled = false;
				$('#activationFlagInput').val("1");
				
				/* if(isEnableFlag == 0 && $('#activationFlagInput').val() == 1){
					inputElementeffectiveTo.removeAttribute('readonly');
				} */

			}

			if (activationFlag == '' || activationFlag == 1) {

				enableInput();
			} else {

				disabledInput();
			}
			
			
			if(isEnableFlag == 0 && $('#activationFlagInput').val() == 1){
				inputElementeffectiveTo.removeAttribute('readonly');
			}
			function changeDate(elem) {
			//	inputElement = document.getElementById('effectiveFrom');

				if (elem.checked == false) {
					 
					disabledInput();
					 activateAll(false);
					 var inputElementAll = document.getElementById('activationFlagAll');
					 var activationFlagInput = document.getElementById("activationFlagInput").value;

					 
					 if(inputElementAll != null)
					 inputElementAll.checked = false;
					 if(isEnableFlag == 1)
						document.getElementById('effectiveTo').setAttribute('required', '');

					

				} else {
					enableInput();
					 document.getElementById('effectiveTo').removeAttribute('required');

				}

			}
			
			function setactivationFlagValue(elem,id){
			  	 if (elem.checked) {
				        $("#actionCommissionActivationFlagInput_"+id).val('1')
				}
				else{
			        $("#actionCommissionActivationFlagInput_"+id).val('0')
			    	 
				}  
			  
			
			}
			
			
		
			
			function activateAll(activate) {
			    // Assuming 'activate' is true if activating, false otherwise
			    const checkboxes = document.querySelectorAll('.activationFlag');
			    checkboxes.forEach((checkbox) => {
			        checkbox.checked = activate;
			       // alert(checkbox.getAttribute('data-id'));
			        var id = checkbox.getAttribute('data-id');
			        if(activate)
			        $("#actionCommissionActivationFlagInput_"+id).val('1')
			        if(!activate)
				        $("#actionCommissionActivationFlagInput_"+id).val('0')

			 
			    });
			}


		</script> -->
		<script>
	
				$("#form").submit(
						function(e) {
							let actionCommissionIdArr = document
									.getElementsByName('actionCommissionIdArr[]');
							let actionCommissionsActivationFlag = document
							.getElementsByName('actionCommissionsActivationFlag[]');
							if($('#addActionTable tbody tr.addrow').length >0)
							for (let i = 0; i < actionCommissionIdArr.length; i++) {
								var element1 = document.createElement("input");
								element1.type = "hidden";
								element1.value = actionCommissionIdArr[i].value;
								element1.name = "actionCommissions[" + i + "].id";
								document.getElementById("form")
										.appendChild(element1);
								
								var element2 = document.createElement("input");
								element2.type = "hidden";
								element2.value = actionCommissionsActivationFlag[i].value;
								element2.name = "actionCommissions[" + i + "].activationFlag";
								document.getElementById("form")
										.appendChild(element2);
							}
							/* var from = $('#effectiveFrom').val();
							var to = $('#effectiveTo').val();
							alert(from)
							element3.type = "hidden";
							element3.value = from;
							element3.name = "commission.effectiveFrom";
							document.getElementById("form")
									.appendChild(element3);
							element4.type = "hidden";
							element4.value = to;
							element4.name = "commission.effectiveTo";
							document.getElementById("form")
									.appendChild(element4); */
							
						//	e.preventDefault();
								//	alert($('#effectiveFromInput').val())

						});
			
			</script>