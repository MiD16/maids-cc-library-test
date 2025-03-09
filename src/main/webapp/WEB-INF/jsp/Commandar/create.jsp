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
						class="black-text inactive text-uppercase  "
						href="<c:url value='/periods/index' />"><span
							class="mr-md-3 mr-2">العمليات </span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase  "
						href="<c:url value='/periods/index' />"><span
							class="mr-md-3 mr-2">الآمرين بالعملية </span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>

					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>
								إضافة آمر بالعملية </span></a></li>
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
				<div class="card-header"></div>
				<div class="card-body">
					<form class="needs-validation" novalidate method="post" id="form"
						action="${pageContext.request.contextPath}/Commandar/save"
						modelAttribute="operationForm">

						<div class="row">

							<div class="form-group col-md-6">
								<div class="form-group">
									<label for="commandersearch">البحث عن الآمر بالعملية </label>
									<div class="input-group">
										<input type="text" readonly class="form-control "
											data-toggle="modal" data-target="#varyModal"
											id="commandersearch" aria-describedby="button-addon2"
											value="${user.customer_cif}">
										<div class="input-group-append">
											<div class="input-group-text" id="button-addon-date">
												<span class="fe fe-search fe-16"></span>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-group col-md-6" style="margin-top: 3rem">
								<div align="left">
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

													<div id="nonIndiv" style="display: block">

														<div class="row ">

															<div class="col-6">
																<div class="input-group mb-3">
																	<div class="input-group-prepend">
																		<span class="input-group-text" id="basic-addon1">رقم
																			الوثيقة</span>
																	</div>
																	<input type="text" class="form-control" placeholder=""
																		name="nationalNumber" aria-label="Username"
																		id="nationalNumber" aria-describedby="basic-addon1">
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
																	onclick="searchNonCustomerIndiv(0)">&nbsp
																	&nbsp بحث &nbsp &nbsp</button>
															</div>


														</div>

														<!-- non customer individual search criteria  -->

														<div class="container-div row"
															id="customerIndividualSearchDiv">
															<div class="col-md-6 ">
																<div class="input-group mb-3 trans">
																	<div class="input-group-prepend">
																		<span class="input-group-text ">الأسم الأول
																			باللغة الأساسية</span>
																	</div>
																	<input type="text" class="form-control" placeholder=""
																		value="${firstNameA }" name="firstNameA"
																		aria-label="Username" id="firstNameA"
																		aria-describedby="basic-addon1">
																</div>
															</div>

															<div class="col-md-6 ">
																<div class="input-group mb-3 trans">
																	<div class="input-group-prepend">
																		<span class="input-group-text ">الأسم الأول
																			باللغة الثانوية</span>
																	</div>
																	<input type="text" class="form-control" placeholder=""
																		value="${firstNameB}" name="firstNameB"
																		aria-label="Username" id="firstNameB"
																		aria-describedby="basic-addon1">
																</div>

															</div>

															<div class="col-md-6">
																<div class="input-group mb-3 trans">
																	<div class="input-group-prepend">
																		<span class="input-group-text" id="basic-addon1">اسم
																			&nbsp الأب باللغة الأساسية</span>
																	</div>
																	<input type="text" class="form-control" placeholder=""
																		name="fatherNameA" aria-label="Username"
																		id="fatherNameA" value="${fatherNameA }"
																		aria-describedby="basic-addon1">
																</div>
															</div>

															<div class="col-md-6">
																<div class="input-group mb-3 trans">
																	<div class="input-group-prepend">
																		<span class="input-group-text" id="basic-addon1">ا
																			سم الأب باللغة الثانوية &nbsp</span>
																	</div>
																	<input type="text" class="form-control" placeholder=""
																		name="fatherNameB" aria-label="Username"
																		id="fatherNameB" value="${fatherNameB}"
																		aria-describedby="basic-addon1">
																</div>
															</div>

															<div class="col-md-6 ">
																<div class="input-group mb-3 trans">
																	<div class="input-group-prepend">
																		<span class="input-group-text ">النسبة باللغة
																			الأساسية &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</i>
																		</span>
																	</div>
																	<input type="text" class="form-control" placeholder=""
																		name="lastNameA" aria-label="Username" id="lastNameA"
																		value="${lastNameA }" aria-describedby="basic-addon1">
																</div>
															</div>

															<div class="col-md-6 ">
																<div class="input-group mb-3 trans">
																	<div class="input-group-prepend">
																		<span class="input-group-text ">النسبة باللغة
																			الثانوية &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</i>
																		</span>
																	</div>
																	<input type="text" class="form-control" placeholder=""
																		name="lastNameB" aria-label="Username" id="lastNameB"
																		value="${lastNameB }" aria-describedby="basic-addon1">
																</div>
															</div>

															<div class="col-md-6">
																<div class="input-group mb-3 trans">
																	<div class="input-group-prepend">
																		<span class="input-group-text" id="basic-addon1">&nbsp&nbspاسم
																			الأم باللغة الأساسية&nbsp</span>
																	</div>
																	<input type="text" class="form-control" placeholder=""
																		name="motherNameA" aria-label="Username"
																		id="motherNameA" value="${ motherNameA}"
																		aria-describedby="basic-addon1">
																</div>
															</div>

															<div class="col-md-6">
																<div class="input-group mb-3 trans">
																	<div class="input-group-prepend">
																		<span class="input-group-text" id="basic-addon1">&nbsp&nbsp&nbspاسم
																			الأم باللغة الثانوية&nbsp</span>
																	</div>
																	<input type="text" class="form-control" placeholder=""
																		name="motherNameB" aria-label="Username"
																		id="motherNameB" value="${ motherNameB}"
																		aria-describedby="basic-addon1">
																</div>
															</div>

														</div>

														<div class="row my-4">
															<!-- Small table -->
															<div class="col-md-12">
																<!-- table -->
																<table class="table datatables" id="dataTable-1">
																	<thead>
																		<tr>
																			<th>اسم المتعامل</th>
																			<th>اسم الأب</th>
																			<th>النسبة</th>
																			<th>رقم الملف</th>
																			<th>العمليات</th>
																		</tr>
																	</thead>
																</table>

															</div>

															<!-- simple table -->
														</div>

														<nav aria-label="Page navigation example" id="show">
															<ul class="pagination justify-content-center"
																id="pagination-links1">

															</ul>
														</nav>


													</div>

												</div>

											</div>
										</div>
									</div>


								</div>
							</div>


							<div class="col-md-12">
								<table class="table datatables" id="dataTable-5">
									<thead>
										<tr>
											<th>الاسم الكامل باللغة الأساسية</th>
											<th>الاسم الكامل باللغة الثانوية</th>
											<th>الرقم الوطني</th>
											<th>رقم الملف</th>
											<th>العمليات </th>
										</tr>
									</thead>

									<tbody>
										<c:forEach varStatus="status" var="var"
											items="${commandersList}">
											<div id="divf_${status.index}">
												<input type="hidden" id="id_${status.index}"
													name="commandars[${status.index}].id" value="${var.id}">
												<input type="hidden" id="systemLogId_${status.index}"
													name="commandars[${status.index}].systemLogId"
													value="${var.systemLogId.id}"> <input type="hidden"
													id="nonCustomerId_${status.index}"
													name="commandars[${status.index}].nonCustomerId"
													value="${var.nonCustomerId}"> <input type="hidden"
													id="filenumber_${status.index}"
													name="commandars[${status.index}].filenumber"
													value="${var.filenumber}"> <input type="hidden"
													id="fullName_ar_${status.index}"
													name="commandars[${status.index}].fullName_ar"
													value="${var.fullName_ar}"> <input type="hidden"
													id="fullName_en_${status.index}"
													name="commandars[${status.index}].fullName_en"
													value="${var.fullName_en}"> <input type="hidden"
													id="memberType_${status.index}"
													name="commandars[${status.index}].national_number"
													value="${var.national_number}">

											</div>

											<tr class="addrow" id="rowf_${status.index}">
												<td>${var.fullName_ar}</td>
												<td>${var.fullName_en}</td>
												<td>${var.national_number}</td>
												<td>${var.filenumber}</td>
												<td><i id="deletef_${status.index}"
															data-id="${status.index}"
															class="delete-family fe fe-delete icon-delete"></i></td>
											</tr>

										</c:forEach>
									</tbody>
								</table>

							</div>


						</div>
						<div style="direction: ltr; display: flex">
							<button class="btn btn-primary" type="submit"
								style="margin-top: 5px">حفظ</button>
						</div>
					</form>
				</div>

			</div>
		</div>
		<div class="clear"></div>
	</div>
	<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
	<script>
	
		/* $(document).ready(function() {
			$('#periods-management-elements').addClass("show");
			$('#periods-management').addClass("active-color");
			$('#periods-index').addClass("active-color");
		}); */

		$('#dataTable-5').DataTable({
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

		function showHideCustIndivSearchDivElement() {

			var container = $('#customerIndividualSearchDiv');

			if (!container.hasClass('active')) {
				container.addClass('show').outerWidth();
				container.addClass('active');
				document.getElementById("icon_test").classList
						.remove('fe-chevrons-down');
				document.getElementById("icon_test").classList
						.add('fe-chevrons-up');

			} else {
				container.removeClass('active').one(
						'transitionend',
						function() {
							container.removeClass('show');

							document.getElementById("icon_test").classList
									.remove('fe-chevrons-up');
							document.getElementById("icon_test").classList
									.add('fe-chevrons-down');
						});
			}

		}

		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
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

		function searchNonCustomerIndiv(page) {

			var nationalNumber = document.getElementById("nationalNumber").value;
			var firstNameA = document.getElementById("firstNameA").value;
			var fatherNameA = document.getElementById("fatherNameA").value;
			var lastNameA = document.getElementById("lastNameA").value;
			var motherNameA = document.getElementById("motherNameA").value;

			var firstNameB = document.getElementById("firstNameB").value;
			var fatherNameB = document.getElementById("fatherNameB").value;
			var lastNameB = document.getElementById("lastNameB").value;
			var motherNameB = document.getElementById("motherNameB").value;
			//	alert("nationalNumber " + nationalNumber + "firstNameA: " + firstNameA + "fatherNameA: " + fatherNameA + "lastNameA: " + lastNameA + "firstNameB: " + firstNameB + "fatherNameB: " + fatherNameB + "lastNameB: " + lastNameB)
			if (nationalNumber == "" && firstNameA == "" && fatherNameA == ""
					&& lastNameA == "" && motherNameA == "" && firstNameB == ""
					&& fatherNameB == "" && lastNameB == ""
					&& motherNameB == "") {
				//alert("@@@@")
				callConfirmAlert("search", "لا يمكن إجراء عملية البحث",
						"الرجاء إدخال قيمة واحدة على الأقل")
			} else {
				//alert("@@@@11")
				//console.log("nationalNumber " + nationalNumber + "firstNameA: " + firstNameA + "fatherNameA: " + fatherNameA + "lastNameA: " + lastNameA + "firstNameB: " + firstNameB + "fatherNameB: " + fatherNameB + "lastNameB: " + lastNameB)
				var t = $('#dataTable-1').DataTable();
				$
						.ajax({
							type : "GET",
							headers : {
								Accept : "application/json; charset=utf-8",
								"Content-Type" : "application/json; charset=utf-8"
							},
							//contentType : "application/json",
							url : '${pageContext.request.contextPath }'

							+ '/rest/searchResIndiv',
							data : {
								nationalNumber : nationalNumber,
								firstNameA : firstNameA,
								fatherNameA : fatherNameA,
								lastNameA : lastNameA,
								motherNameA : motherNameA,
								//motherLastNameA : motherLastNameA,
								firstNameB : firstNameB,
								fatherNameB : fatherNameB,
								lastNameB : lastNameB,
								motherNameB : motherNameB,
								//motherLastNameB : motherLastNameB,
								page : page,
								size : 2
							},
							dataType : "json",
							cache : false,
							timeout : 600000,
							success : function(response) {
								//console.log(response)
								t.rows().remove().draw();
								response.content
										.forEach(function(item) {

											var op = '<i class="fe fe-plus-circle" onclick="addCommandar(\''
													+ item.firstNameA
													+ '\',\''
													+ item.fatherNameA
													+ '\',\''
													+ item.lastNameA
													+ '\',\''
													+ item.firstNameB
													+ '\',\''
													+ ' '
													+ item.fatherNameB
													+ '\',\''
													+ ' '
													+ item.lastNameB
													+ '\',\''
													+ +' '
													+ item.nationalNumber
													+ '\',\''
													+ item.fileNumber
													+ '\',\''
													+ item.id
													+ '\')" data-dismiss="modal"></i>';
											t.row
													.add(
															[
																	item.firstNameA,
																	item.fatherNameA,
																	item.lastNameA,
																	item.fileNumber,
																	op ]).draw(
															false);
										});

								// Update pageInfo values
								var pageInfo = response.pageInfo;
								// Update pagination links
								updatePaginationLinks(pageInfo);
								if (response.content == "")
									callConfirmAlert("x",
											"المتعامل الابتدائي غير موجود",
											"الرجاء التحقق من صحة المعلومات")
							},

							error : function(e) {
								alert("error");

							}
						});
			}

		}

		function updatePaginationLinks(pageInfo) {
			document.getElementById("pagination-links1").innerHTML = "";

			// Previous Button
			if (!pageInfo.hasPrevious) {
				document.getElementById("pagination-links1").innerHTML += '<li class="page-item disabled"><a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a></li>';
			} else {
				document.getElementById("pagination-links1").innerHTML += '<li class="page-item"><a class="page-link" href="#" onclick="searchNonCustomerIndiv('
						+ (pageInfo.currentPage - 1) + ')">Previous</a></li>';
			}

			// Current Page
			document.getElementById("pagination-links1").innerHTML += '<li class="page-item active" aria-current="page"><a class="page-link" href="#">'
					+ (pageInfo.currentPage + 1) + '</a></li>';

			// Next Page
			if (pageInfo.hasNext) {

				document.getElementById("pagination-links1").innerHTML += '<li class="page-item"><a class="page-link" href="#" onclick="searchNonCustomerIndiv('
						+ (pageInfo.currentPage + 1) + ')">Next</a></li>';
			} else {
				document.getElementById("pagination-links1").innerHTML += '<li class="page-item disabled"><a class="page-link" href="#" tabindex="-1" aria-disabled="true">Next</a></li>';
			}
		}

		var counter_indexf = "${commandarSize}";
		var tempRowf = -1;

		function addCommandar(firstNameA, fatherNameA, lastNameA, firstNameB,
				fatherNameB, lastNameB, nationalNumber, fileNumber,
				nonCustomerId) {

			if (tempRowf == -1) {

				var element1 = document.createElement("div");

				var inner = '<input type="hidden" id="national_number_'+counter_indexf+'" name="commandars['+counter_indexf+'].national_number" value ="'+ nationalNumber+'">';

				inner += '<input type="hidden" id="fullName_en_'+counter_indexf+'" name="commandars['+counter_indexf+'].fullName_en" value ="'+ firstNameB+ ' ' + fatherNameB+ ' '+lastNameB+'"> ';
				inner += '<input type="hidden" id="fullName_ar_'+counter_indexf+'" name="commandars['+counter_indexf+'].fullName_ar" value ="'+ firstNameA+ ' ' + fatherNameA+ ' '+lastNameA+'"> ';
				inner += '<input type="hidden" id="filenumber_'+counter_indexf+'" name="commandars['+counter_indexf+'].filenumber" value ="'+ fileNumber+'"> ';
				inner += '<input type="hidden" id="nonCustomerId_'+counter_indexf+'" name="commandars['+counter_indexf+'].nonCustomerId" value ="'+ nonCustomerId+'"> ';

				element1.innerHTML = inner;

				element1.setAttribute('id', 'divf_' + counter_indexf);

				document.getElementById("form").appendChild(element1);

				element1.setAttribute('id', 'divf_' + counter_indexf);

				var newRaw = $('#dataTable-5').DataTable().row
						.add(
								[
										firstNameA + ' ' + fatherNameA + ' '
												+ lastNameA,
										firstNameB + ' ' + fatherNameB + ' '
												+ lastNameB,
										nationalNumber,
										fileNumber,
										'<i id="deletef_'+counter_indexf+'" data-id="'+counter_indexf+'" class="fe fe-delete icon-delete"></i>' ])
						.draw(false);
				$(newRaw.node()).attr('class', 'addrow');
				$(newRaw.node()).attr('id', 'rowf_' + counter_indexf);

				$("#deletef_" + counter_indexf).click(
						function(e) {

							var data_id = $(this).attr("data-id");
							$("#divf_" + data_id).remove();
							var rowtodelete = document.getElementById('rowf_'
									+ data_id);
							$('#dataTable-5').DataTable().rows(rowtodelete)
									.remove().draw(false);
						});
				counter_indexf++;

			} else {

				var rowtodelete = document.getElementById("rowf_" + tempRowf);
				$('#dataTable-5')
						.DataTable()
						.row(rowtodelete)
						.data(
								[

										firstNameA + ' ' + fatherNameA + ' '
												+ lastNameA,
										firstNameB + ' ' + fatherNameB + ' '
												+ lastNameB,
										nationalNumber,
										fileNumber,
										'<i id="deletef_'+counter_indexf+'" data-id="'+counter_indexf+'" class="fe fe-delete icon-delete"></i>' ])
						.draw(false);

				$("#deletef_" + tempRowf)
						.click(
								function(e) {

									var data_id = $(this).attr("data-id");
									if (tempRowf == data_id) {
										tempRowf = -1;
										document.getElementById("addRowf").innerHTML = "إضافة فرد جديد <i class='fe fe-plus-circle' style='''></i>";
									}
									$("#divf_" + data_id).remove();

									var rowtodelete = document
											.getElementById('rowf_' + data_id);
									$('#dataTable-5').DataTable().rows(
											rowtodelete).remove().draw(false);

								});

				tempRowf = -1;
			}

		}

		$(".delete-family").click(
				function(e) {
					callConfirmAlert("x",
							"لا يمكن حذف آمر بالعملية موجود مسبقا   ", "")

					/* var data_id = $(this).attr("data-id");

								
					$("#divf_" + data_id).remove();
								var rowtodelete = document
										.getElementById('rowf_' + data_id);
								$('#dataTable-5').DataTable().rows(rowtodelete).remove()
										.draw(false); */
				});
	</script>