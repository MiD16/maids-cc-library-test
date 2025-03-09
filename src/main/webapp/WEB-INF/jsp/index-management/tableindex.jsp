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
					<li class="breadcrumb-item font-weight-bold "><a
						class="black-text inactive text-uppercase  "
						href="<c:url value='/HomeIndex/index' />"><span
							class="mr-md-3 mr-2">إدارة فهارس النظام</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase"
						href="<c:url value='/HomeIndex/index' />"><span
							class="mr-md-3 mr-2">استعراض الفهارس </span></a><i
						class="fe fe-angle-double-right text-uppercase "
						aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span
							class="mr-md-3 mr-2">استعراض قيم الفهرس </span></a></li>
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
					<strong> استعراض الفهارس - ${tableNameArabic}</strong>
				</div>
				<div class="card-body">
					<div class="row">
						<div class="form-group col-md-6">

							<button type="button" id="addRow"
								onclick="addIndexValue('${tableId}')"
								class="btn mt-1 mb-0 btn-outline-primary">
								إضافة قيم للفهرس <i class="fe fe-plus-circle" style=""></i>
							</button>

						</div>
						<div class="card col-sm-12 col-md-12 col-lg-12">

							<div class="card-body">
								<h4 class="card-title"></h4>

								<!-- <h6 class="card-subtitle">جداول النظام <code>.table</code></h6> -->
								<div class="table-responsive">
									<table class="table  table-striped" id="dataTable-3">
										<thead>
											<tr>
												<th>#</th>
												<th>اسم الفهرس باللغة الأساسية</th>
												<th>اسم الفهرس باللغة الثانوية</th>
												<th>العمليات</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="systable" items="${sysTable}">
												<tr>
													<td>${systable.id}</td>
													<c:if
														test="${tableId ne 'CUSTOMER_SITUATION'  && tableId ne 'CUSTOMER_STAGE'}">
														<td>${systable.nameA}</td>
														<td>${systable.nameB}</td>
													</c:if>
													<c:if
														test="${tableId eq 'CUSTOMER_SITUATION'  || tableId eq 'CUSTOMER_STAGE'}">
														<td>${systable.descriptionA}</td>
														<td>${systable.descriptionB}</td>
													</c:if>

													<td>
														<div class="row">
															<a
																href="<c:url value='/HomeIndex/create?tableId=${tableId}&elementId=${systable.id }' />">
																<i class="fe fe-edit icon-edit"></i>

															</a>

															<%-- <a
														href="<c:url value='/HomeConfiguration/delete?tableId=${tableId}&elementId=${systable.id }'  />">
															<i class="fe fe-delete icon-delete"
															></i></a> --%>
															&nbsp&nbsp&nbsp&nbsp&nbsp

															<li type="button" class="fe fe-delete icon-delete"
																data-toggle="modal" data-target="#id_${systable.id}_id"
																data-whatever="@mdo"></li>
															<div class="modal fade" id="id_${systable.id}_id"
																tabindex="-1" role="dialog"
																aria-labelledby="varyModalLabel" aria-hidden="true">
																<div class="modal-dialog" role="document"
																	style="max-width: 500px">
																	<div class="modal-content">
																		<div class="modal-header">
																			<h5 class="modal-title" id="varyModalLabel">عملية
																				الحذف</h5>
																			<button type="button" class="close"
																				data-dismiss="modal" aria-label="Close">
																				<span aria-hidden="true">&times;</span>
																			</button>
																		</div>
																		<div class="modal-body">
																			<div class="row">
																				<div class="col-10">
																					<div class="form-group mb-3">
																						<h7>هل أنت متأكد من عملية الحذف؟</h7>
																						<div class="form-group col-md-12" align="left">
																							<a
																								href="<c:url value='/HomeIndex/delete?tableId=${tableId}&elementId=${systable.id }'  />">
																								<button class="btn mb-2 btn-danger"
																									type="button" id="addIndex">&nbsp
																									&nbsp حذف &nbsp &nbsp</button>
																							</a>

																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</div>
															
															&nbsp&nbsp&nbsp&nbsp&nbsp
															<a
																href="<c:url value='/HomeIndex/details?id=${systable.id}&tableId=${tableId }' />">
																<i class="fe fe-eye"></i>

															</a>



														</div>
													</td>
												</tr>

											</c:forEach>

										</tbody>
									</table>
								</div>
							</div>
						</div>

						<div class="form-group col-md-12" align="left">


							<a href="<c:url value='/HomeIndex/index' />">
								<button class="btn btn-primary" type="button" id="addIndex">&nbsp
									&nbsp رجوع &nbsp &nbsp</button>
							</a>

						</div>

					</div>
				</div>
				<!-- .card-body -->
			</div>

			<!-- end section -->

			<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>
			<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
			<script>
            $('#dataTable-3').DataTable(
                    {
                                    autoWidth : true,
                                    "lengthMenu" : [ [ 8, 32, 64, -1 ],
                                                                    [ 8, 32, 64, "All" ] ]
                    });

				$(document).ready(function() {

					$('#adminManagement-elements').addClass("show");
					$('#adminManagement').addClass("active-color");
					$('#adminIndex').addClass("active-color");

				});
				$('.input-money').mask("#.##0,00", {
					reverse : true
				});
				
				$('#dataTable-2').DataTable({
					autoWidth : true,
					"lengthMenu" : [ [ 5, 32, 64, -1 ], [ 5, 32, 64, "All" ] ]
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

				function addIndexValue(tableId) {

					var url = "${pageContext.request.contextPath }/HomeIndex/create?tableId="
							+ tableId;

					if (tableId == 'SUBPOENA_REQUEST')
						url += "&indexId=${indexId}";

					window.location.href = url;

				}
			</script>