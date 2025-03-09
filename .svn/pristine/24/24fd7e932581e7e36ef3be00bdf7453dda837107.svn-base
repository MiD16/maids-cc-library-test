
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
							class="mr-md-3 mr-2"> العمليات</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>

					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>سجل
								العمليات</span></a></li>

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


			<div class="card my-4">
				<div class="card-header">
					<strong> استعراض سجل العمليات </strong>
				</div>
				<div class="card-body">

					<div class="row">

						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">رقم العملية :</div>
							<div class="col-md-6">${systemLog.transNumber }</div>
						</div>

						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">اسم العملية :
							</div>
							<div class="col-md-6">${systemLog.actionId.action_name_ar }</div>
						</div>
						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">الفرع:</div>
							<div class="col-md-6">${systemLog.branchId.nameA }</div>
						</div>

						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">رقم IP
								الحاسوب :</div>
							<div class="col-md-6">${systemLog.terminalIp}</div>
						</div>

						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">الجدول الخاص
								بالعملية :</div>
							<div class="col-md-6">${systemLog.indTable.nameA}</div>
						</div>
						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">الغرض في جدول
								العملية:</div>
							<div class="col-md-6">${systemLog.objectId}</div>
						</div>
						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">رقم العملية
								المالية :</div>
							<div class="col-md-6">${systemLog.jornalMasterId}</div>
						</div>
						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">المستخدم :</div>
							<div class="col-md-6">${systemLog.insertBy.username}</div>
						</div>
						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">تاريخ العملية
								:</div>
							<div class="col-md-6">${systemLog.insertDate}</div>
						</div>
						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">تجاوز وجود
								العميل ضمن القائمة السوداء :</div>
							<div class="col-md-6">
								<c:if test="${systemLog.jornalMasterId ==1}">
						نعم
							
							
							</c:if>
								<c:if test="${systemLog.jornalMasterId!=1}">
						لا
							
							
							</c:if>
							</div>
						</div>


						<%-- 		<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">ملاحظات :</div>
							<div class="col-md-6">
								<c:if test="${systemLog.note!=''}">
							${systemLog.note }
							
							
							</c:if>
								<c:if test="${systemLog.note==null}">
							--
							
							
							</c:if>


							</div>
						</div> --%>



					</div>

					<hr>
					<h6 class="card-text" style="color: #d1a923">الامرين بالعملية
						:</h6>
					<div class="card-body">
						<!-- table -->
						<table class="table datatables" id="dataTable-2">
							<thead>
								<tr>

									<th>رقم تعريف المتعامل الابتدائي</th>
									
									<th>رقم ملف المتعامل الابتدائي</th>
										<th>  الرقم الوطني </th>
									<th>الاسم الكامل باللغة الأساسية</th>
									<th>الاسم الكامل باللغة الثانوية</th>
								
										<th>  </th>


								</tr>
							</thead>
							<tbody>
								<c:forEach varStatus="status" var="commandar"
									items="${commandar}">
									<tr id="row_${status.index}">
										<td>${commandar.id}</td>
										<td>${commandar.filenumber}</td>
										<td>${commandar.national_number}</td>
										<td>${commandar.fullName_ar}</td>
										<td>${commandar.fullName_en}</td>
											
											<th>  </th>
									</tr>
								</c:forEach>
							</tbody>
						</table>

					</div>
					<hr>
					<h6 class="card-text" style="color: #d1a923">تفاصيل إضافية
						للعملية :</h6>
					<div class="card-body">
						<!-- table -->
						<table class="table datatables" id="dataTable-3">
							<thead>
								<tr>

									<th>المفتاح</th>
									
									<th>القيمة</th>
								
								
										<th>  </th>


								</tr>
							</thead>
							<tbody>
								<c:forEach varStatus="status" var="systemLogExtentions"
									items="${systemLogExtentions}">
									<tr id="row_${status.index}">
										<td>${systemLogExtentions.indKeyId.nameA}</td>
										<td>${systemLogExtentions.value}</td>
									
											
											<th>  </th>
									</tr>
								</c:forEach>
							</tbody>
						</table>

					</div>

					<div style="direction: ltr; display: flex">
						<a href="<c:url value='/SystemLog/index' />">
							<button class="btn btn-primary" type="submit"
								style="margin-top: 5px">&nbsp&nbsp&nbsp&nbspتم&nbsp&nbsp&nbsp&nbsp</button>
						</a>
					</div>





					<!-- .card-body -->
				</div>
			</div>



			<div class="clear"></div>
		</div>
		<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
		
	<script>
			$(document).ready(function() {

				$('#systemlog-management-elements').addClass("show");
				$('#systemlog-management').addClass("active-color");
				$('#systemlog-index').addClass("active-color");
				
				
			});
			</script>
			
		<script>
			$('#dataTable-2').DataTable({
				autoWidth : true,
				"lengthMenu" : [ [ 8, 32, 64, -1 ], [ 8, 32, 64, "All" ] ]
			});
			$('#dataTable-3').DataTable({
				autoWidth : true,
				"lengthMenu" : [ [ 8, 32, 64, -1 ], [ 8, 32, 64, "All" ] ]
			});
			/* function toggleEnabled(checkbox) {
			 var isEnabledInput = document.getElementById('is_enabledInput');
			 isEnabledInput.value = checkbox.checked ? '1' : '0';
			 }
			 */
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