
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
								التعديلات</span></a></li>

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
					<strong> استعراض سجل التعديلات </strong>
				</div>
				<div class="card-body">

					<div class="row">
	<input id="oldObject" name="oldObject" type="hidden" class="form-control "
							value="${modifyLog.oldObject}">
							<input id="newObject" name="newObject" type="hidden" class="form-control "
							value="${modifyLog.newObject}">
						<div class="form-group col-md-7 row">
							<div class="form-group col-md-4 detail-label">رقم العملية في سجل العمليات:</div>
							<div class="col-md-6">${modifyLog.systemLogId.id }</div>
						</div>
	<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">اسم العملية :
							</div>
							<div class="col-md-6">${modifyLog.systemLogId.actionId.action_name_ar }</div>
						</div>
						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">الفرع:</div>
							<div class="col-md-6">${modifyLog.systemLogId.branchId.nameA }</div>
						</div>
						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">المستخدم :</div>
							<div class="col-md-6">${modifyLog.insertBy.username}</div>
						</div>
						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">تاريخ العملية
								:</div>
							<div class="col-md-6">${modifyLog.insertDate}</div>
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
	
						
						<div class="card shadow">
							<div class="card-body">
		<table class="table datatables" id="dataTable-2">
												<thead>
													<tr>
														
														<th>المفتاح</th>
														<th>القيمة قبل التعديل</th>
														<th>القيمة بعد التعديل</th>
													

													</tr>
												</thead>
									 <tbody id="tableBody">
                                     </tbody>
											</table>

				</div>
</div>
		<%-- 			<hr>
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

					</div> --%>
			<%-- 		<hr>
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

					</div> --%>

					<div style="direction: ltr; display: flex">
						<a href="<c:url value='/ModifyLog/index' />">
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
				$('#modifylog-index').addClass("active-color");
				
				
			});
			</script>
			
		<script>
		 var newObject = document.getElementById('newObject').value;
		 var oldObject = document.getElementById('oldObject').value;
		  let json1 = ${modifyLog.newObject};
		  let json2 = ${modifyLog.oldObject};
	       

         function compareJsonObjects(obj1, obj2) {
             let allKeys = [...new Set([...Object.keys(obj1), ...Object.keys(obj2)])];
             
             return allKeys.map(key => ({
                 key,
                 value1: obj1[key],
                 value2: obj2[key]
             }));
         }
         // Compare JSON objects
         let comparison = compareJsonObjects(json1, json2);
         const tbody = document.getElementById('tableBody');
         comparison.forEach(item => {
             let row = document.createElement('tr');
             
             let keyCell = document.createElement('td');
             keyCell.textContent = item.key;

             let value1Cell = document.createElement('td');
            
            
             if(item.value1 == '[object Object]')
            	{ if( item.value1.ID==null)
            		 value1Cell.textContent = item.value1.id;
            	else
            		 value1Cell.textContent = item.value1.ID;
        
            	 }
   
             else if(item.value1 !== undefined )
            	 value1Cell.textContent = item.value1;
       
             else
            	 value1Cell.textContent = 'N/A';
             
             let value2Cell = document.createElement('td');
        
             if(item.value2 == '[object Object]')
            	 value2Cell.textContent = item.value2.id;
        
             else if(item.value2 !== undefined )
            	 value2Cell.textContent = item.value2;
           
             else
            	 value2Cell.textContent = 'N/A';
             
          
             if (value1Cell.textContent !== value2Cell.textContent) {
            	 row.style.backgroundColor = '#12e56614';
            	
            	}
      
             row.appendChild(keyCell);
             row.appendChild(value1Cell);
             row.appendChild(value2Cell);

             tbody.appendChild(row);
         });
			$('#dataTable-2').DataTable({
				autoWidth : true,
				"lengthMenu" : [ [ 50, 100, 150, -1 ], [ 50, 100, 150, "All" ] ]
			});
			$('#dataTable-2_length').parent().remove();
			$('#dataTable-2_paginate').parent().remove();


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