
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
							class="mr-md-3 mr-2">العمولات</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>استعراض
								العمولات </span></a></li>
				</ol>
			</nav>
		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="row justify-content-center">
		<div class="col-12 ">
			<div class="row mt-3">
				<div class="col-md-10">
					<a href="<c:url value='/commission/create' />">
						<button type="button" class="btn mt-1 mb-0 btn-outline-primary"
							href="<c:url value='/commission/create' />">
							إضافة عمولة <i class="fe fe-plus-circle" style=""></i>
						</button>
					</a>
				</div>
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
			<div class="panel panel-default">

				<br>
				<div class="card shadow">

					<div class="card-body">

						<div class="col-md-12">
							<div id="nonIndiv" style="display: block">

								<div class="row ">

									<div class="col-6">
										<div class="input-group mb-3">
											<div class="input-group-prepend">
												<span class="input-group-text" id="basic-addon1">اسم
													العمولة باللغة العربية</span>
											</div>
											<input type="text" class="form-control" placeholder=""
												value="${nameA}" name="nameA" aria-label="Username"
												id="nameA" aria-describedby="basic-addon1">
										</div>

									</div>

									<div class="col">
										<button onclick="showHideElement()"
											type="button" class="btn mb-2 btn-secondary">
											<span id="icon_test" class="fe fe-chevrons-down fe-16"></span>
										</button>
									</div>

									<div class="col-2">

										<button type="button" class="btn mb-2 btn-primary"
											onclick="searchCommission()">&nbsp &nbsp بحث &nbsp
											&nbsp</button>
									</div>


								</div>

								<!-- non customer individual search criteria  -->

								<div class="container-div row" id="ActionSearchDiv">
									<div class="col-md-6 ">
										<div class="input-group mb-3 trans">
											<div class="input-group-prepend">
												<span class="input-group-text ">اسم العمولة باللغة
													الثانوية</span>
											</div>
											<input type="text" class="form-control" placeholder=""
												name="nameB" aria-label="Username" value="${nameB}"
												id="nameB" aria-describedby="basic-addon1">

										</div>
									</div>

									<div class="col-md-6 ">
										<div class="input-group mb-3 trans">
											<div class="input-group-prepend">
												<span class="input-group-text ">نوع العمولة</span>
											</div>
											<select class="form-control select2"
												id="IndCommissionTypeList" name=IndCommissionTypeList>
												<option value="-1" selected>اختيار نوع العمولة</option>
												<optgroup>
													<c:forEach var="ind" items="${IndCommissionTypeList}">
														<c:if test="${indCommissionType == ind.id }">
															<option nameB="${ind.nameB}" value="${ind.id}" selected>${ind.nameA}</option>
														</c:if>
														<c:if test="${indCommissionType != ind.id }">
															<option nameB="${ind.nameB}" value="${ind.id}">${ind.nameA}</option>
														</c:if>
													</c:forEach>
												</optgroup>

											</select>
										</div>
									</div>





									<div class=" col-md-6">
										<p class="mb-2">العمولة بالنسبة المئوية</p>
										<c:if
											test="${ precentageFlag == 1 }">

											<div class=" custom-radio form-check-inline">
												<input value="1" type="radio" id="precentageFlag1" checked
													name="precentageFlag" class="custom-control-input precentageFlagClass"
													value="1"> <label class="custom-control-label"
													for="precentageFlag1">نعم </label>
											</div>
											<div class=" custom-radio form-check-inline">
												<input value="0" type="radio" id="precentageFlag2"
													name="precentageFlag" class="custom-control-input precentageFlagClass"
													value="0"> <label class="custom-control-label"
													for="precentageFlag2"> لا </label>
											</div>
											<div class=" custom-radio form-check-inline">
												<input value="-1" type="radio" id="precentageFlag3"
													name="precentageFlag" class="custom-control-input precentageFlagClass"
													value="-1"> <label class="custom-control-label"
													for="precentageFlag3"> حيادي </label>
											</div>
										
										</c:if>
										<c:if
											test="${ precentageFlag == 0 }">

											<div class=" custom-radio form-check-inline">
												<input value="1" type="radio" id="precentageFlag1"
													name="precentageFlag" class="custom-control-input precentageFlagClass"
													value="1"> <label class="custom-control-label"
													for="precentageFlag1">نعم </label>
											</div>
											<div class=" custom-radio form-check-inline">
												<input value="0" type="radio" id="precentageFlag2" checked
													name="precentageFlag" class="custom-control-input precentageFlagClass"
													value="0"> <label class="custom-control-label"
													for="precentageFlag2"> لا </label>
											</div>
											<div class=" custom-radio form-check-inline">
												<input value="-1" type="radio" id="precentageFlag3"
													name="precentageFlag" class="custom-control-input precentageFlagClass"
													value="-1"> <label class="custom-control-label"
													for="precentageFlag3"> حيادي </label>
											</div>
										</c:if>
										<c:if
											test="${ precentageFlag == -1 || precentageFlag == null}">

											<div class=" custom-radio form-check-inline">
												<input value="1" type="radio" id="precentageFlag1"
													name="precentageFlag" class="custom-control-input precentageFlagClass"
													value="1"> <label class="custom-control-label"
													for="precentageFlag1">نعم </label>
											</div>
											<div class=" custom-radio form-check-inline">
												<input value="0" type="radio" id="precentageFlag2"
													name="precentageFlag" class="custom-control-input precentageFlagClass"
													value="0"> <label class="custom-control-label"
													for="precentageFlag2"> لا </label>
											</div>
											<div class=" custom-radio form-check-inline">
												<input value="-1" type="radio" id="precentageFlag3" checked
													name="precentageFlag" class="custom-control-input precentageFlagClass"
													value="-1"> <label class="custom-control-label"
													for="precentageFlag3"> حيادي </label>
											</div>
										</c:if>
											<input type="hidden"
										name="precentageFlag" id="precentageFlag"
										value="${precentageFlag}">
									</div>
									<div class=" col-md-6">
										<p class="mb-2">فعالة</p>
										<c:if
											test="${ isEnableFlag == 1}">

											<div class=" custom-radio form-check-inline">
												<input value="1" type="radio" id="isEnableFlag1" checked
													name="isEnableFlag" class="custom-control-input isEnableFlagClass" value="1">
												<label class="custom-control-label" for="isEnableFlag1">نعم
												</label>
											</div>
											<div class=" custom-radio form-check-inline">
												<input value="0" type="radio" id="isEnableFlag2"
													name="isEnableFlag" class="custom-control-input isEnableFlagClass" value="0">
												<label class="custom-control-label" for="isEnableFlag2">
													لا </label>
											</div>
											<div class=" custom-radio form-check-inline">
												<input value="-1" type="radio" id="isEnableFlag3" 
													name="isEnableFlag" class="custom-control-input isEnableFlagClass" value="-1">
												<label class="custom-control-label" for="isEnableFlag3">
													حيادي </label>
											</div>
										</c:if>
											<c:if
											test="${ isEnableFlag == 0}">

											<div class=" custom-radio form-check-inline">
												<input value="1" type="radio" id="isEnableFlag1"
													name="isEnableFlag" class="custom-control-input isEnableFlagClass" value="1">
												<label class="custom-control-label" for="isEnableFlag1">نعم
												</label>
											</div>
											<div class=" custom-radio form-check-inline">
												<input value="0" type="radio" id="isEnableFlag2" checked
													name="isEnableFlag" class="custom-control-input isEnableFlagClass" value="0">
												<label class="custom-control-label" for="isEnableFlag2">
													لا </label>
											</div>
											<div class=" custom-radio form-check-inline">
												<input value="-1" type="radio" id="isEnableFlag3"  
													name="isEnableFlag" class="custom-control-input isEnableFlagClass" value="-1">
												<label class="custom-control-label" for="isEnableFlag3">
													حيادي </label>
											</div>
										</c:if>
											<c:if
											test="${ isEnableFlag == null || isEnableFlag == -1 }">

											<div class=" custom-radio form-check-inline">
												<input value="1" type="radio" id="isEnableFlag1"
													name="isEnableFlag" class="custom-control-input isEnableFlagClass" value="1">
												<label class="custom-control-label" for="isEnableFlag1">نعم
												</label>
											</div>
											<div class=" custom-radio form-check-inline">
												<input value="0" type="radio" id="isEnableFlag2"
													name="isEnableFlag" class="custom-control-input isEnableFlagClass" value="0">
												<label class="custom-control-label" for="isEnableFlag2">
													لا </label>
											</div>
											<div class=" custom-radio form-check-inline">
												<input value="-1" type="radio" id="isEnableFlag3" checked
													name="isEnableFlag" class="custom-control-input isEnableFlagClass" value="-1">
												<label class="custom-control-label" for="isEnableFlag3">
													حيادي </label>
											</div>
										</c:if>
											<input type="hidden"
										name="isEnableFlag" id="isEnableFlag"
										value="${isEnableFlag}">
									</div>

								</div>



							</div>
						</div>
						<!-- non customer individual search criteria  -->

						<div id="nonIndiv" style="display: block">



							<!-- non customer individual search criteria  -->



							<div class="row my-4">
								<!-- Small table -->
								<div class="col-md-12">
											<!-- table -->
											<table class="table datatables" id="dataTable-1">
												<thead>
													<tr>
														<!-- <th>#</th> -->
														<th>اسم العمولة</th>
														<th>اسم العمولة باللغة الثانوية</th>
														<th>القيمة</th>
														<th>الحالة</th>
														<th>عمليات العمولة</th>
														<th>العمليات</th>

													</tr>
												</thead>
												<tbody>
													<c:forEach varStatus="status" var="commissionList"
														items="${commissions}">



														<tr id="row_${status.index}">
															<%-- 	<td>${commissionList.id}</td> --%>
															<td style="padding-right: 0.6rem;">${commissionList.nameA}</td>
															<td>${commissionList.nameB}</td>
															<td>${commissionList.value}</td>
															<c:if test="${commissionList.isEnableFlag == 0 }">
																<td><span class="dot dot-lg bg-danger mr-1"></span>
																	 غير فعالة </td>
															</c:if>
															<c:if test="${commissionList.isEnableFlag == 1 }">
																<td><span class="dot dot-lg bg-success mr-2"></span>
																		&nbsp فعالة &nbsp</td>
															</c:if>
															<td><a
																href='${pageContext.request.contextPath}/commission/actions-commission?id=${commissionList.id} '>العمليات</a></td>
															<td>
																<%-- 	<i data-id="delete${status.index}"
																onclick="callDangerAlert('key','رسالة تأكيد','متأكد من عملية حذف العمولة { ${commissionList.nameA}}',
												'/commission/delete?id=${commissionList.id}')"
																class=" fe fe-delete icon-delete"></i> --%>
																<%--  <i
																data-id="edit_${status.index}"
																onclick="window.location.href='${pageContext.request.contextPath}/commission/details-delete?id=${commissionList.id} '"
																class=" fe fe-delete icon-delete"></i>  --%>
																<i
																data-id="edit_${status.index}"
																onclick="window.location.href='${pageContext.request.contextPath}/commission/create?id=${commissionList.id} '"
																class=" fe fe-edit icon-edit">&nbsp </i><i
																data-id="details${status.index}"
																onclick="window.location.href='${pageContext.request.contextPath}/commission/details?id=${commissionList.id} '"
																class=" fe fe-info icon-info"></i>
															</td>

														</tr>

													</c:forEach>
												</tbody>
											</table>

								</div>

								<!-- simple table -->
							</div>

						</div>

					</div>
				</div>
				<jsp:include page="/WEB-INF/jsp/layout/pagination.jsp">
					<jsp:param name="controller_url" value="/commission/index" />

				</jsp:include>

			</div>


			<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
			<script>
				$(document).ready(function() {

					$('#commission-elements').addClass("show");
					$('#Commission').addClass("active-color");
					$('#commissionIndex').addClass("active-color");

				});
			</script>

	
			<script>
				function showHideElement() {

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
			<script>
			var na = "${nameA}"
				var nb = "${nameB}";
				var ef = "${isEnableFlag}";
				var pf = "${precentageFlag}";
				var ic = "${indCommissionType}";
				if(na != "" || nb!="" || ef!="" || pf!="" || ic !=""){
					
					showHideElement();
				}
				
				var li = "${pageInfo.totalElements}";
				var t = (na != "" || nb!="" || ef!="" || pf!="" || ic !="");
				
				if (li == 0 && t) {
					callConfirmAlert("x","لا يوجد عمولة","الرجاء التحقق من صحة المعلومات")
				//	document.getElementById("addNonCust").style.display = 'block';
				}
			$('.isEnableFlagClass').on('change', function(e){
				var val = $(this).attr('value');
				
				$('#isEnableFlag').val(val);
			});
			
			$('.precentageFlagClass').on('change', function(e){
				var val = $(this).attr('value');
				$('#precentageFlag').val(val);
			});
			function searchCommission(){
			//	alert($('#isEnableFlag').val() + $('#precentageFlag').val());
				var nameA = document.getElementById("nameA").value;
				var nameB = document.getElementById("nameB").value;
				var isEnableFlag = document.getElementById("isEnableFlag").value;
				var precentageFlag = document.getElementById("precentageFlag").value;
				var IndCommissionTypeList = document.getElementById("IndCommissionTypeList");
				if(isEnableFlag == "")
					isEnableFlag = -1;
				if(precentageFlag == "")
					precentageFlag = -1;
		    	var IndCommissionTypeId = IndCommissionTypeList.options[IndCommissionTypeList.selectedIndex].value;
		    	window.location.href = "${pageContext.request.contextPath }/commission/index?nameA="+nameA+"&nameB="+nameB+"&precentageFlag="+precentageFlag+"&isEnableFlag="+isEnableFlag+"&indCommissionType="+IndCommissionTypeId;	
			}
			</script>