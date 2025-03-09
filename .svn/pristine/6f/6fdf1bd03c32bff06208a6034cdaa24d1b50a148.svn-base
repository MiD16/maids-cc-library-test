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
						href="<c:url value='/nonCustCompany/index' />"><span
							class="mr-md-3 mr-2">إدارة فهارس النظام</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase"
						href="<c:url value='/nonCustCompany/index' />"><span
							class="mr-md-3 mr-2">استعراض الفهارس</span></a><i
						class="fe fe-angle-double-right text-uppercase "
						aria-hidden="true"></i></li>
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
					<strong> استعراض الفهارس </strong>
				</div>
				
				
				
				<div class="card-body">
					<div class="row my-4">
						<!-- Small table -->
						<div class="col-md-12">
							<div class="card shadow">
								<div class="card-body">
									<!-- table -->
									<table class="table datatables" id="dataTable-2">
										<thead>
											<tr>
												<th>#</th>
												<th>اسم الفهرس</th>
												<th>العمليات</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="systable" items="${allConfigurations}">
												<tr>
												<td>${systable.id}</td>
													<td>${systable.nameA}</td>

													<td><a
														href="<c:url value='/HomeConfiguration/tableindex?tableId=${systable.nameB}' />">
															<i class="fe fe-info  icon-info" title="تفاصيل"></i>

													</a></td>
												</tr>

											</c:forEach>

										</tbody>
									</table>

								</div>

							</div>
						</div>

						<!-- simple table -->
					</div>
				</div>
				<!-- .card-body -->
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
				$('#dataTable-2').DataTable({
					autoWidth : true,
					"lengthMenu" : [ [ 8, 32, 64, -1 ], [ 8, 32, 64, "All" ] ]
				});
				$('.input-money').mask("#.##0,00", {
					reverse : true
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
			</script>