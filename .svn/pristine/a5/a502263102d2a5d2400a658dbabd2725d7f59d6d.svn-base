
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

				<c:if test="${fromHolidays==1 }">

					<ol class="breadcrumb indigo lighten-6 first  px-md-4"
						style="background-color: #ffffff00">
						<li class="breadcrumb-item font-weight-bold"><a
							class="black-text inactive text-uppercase  "
							href="<c:url value='/holidays/index?fromHolidays=1' />"><span
								class="mr-md-3 mr-2">إدارة العطل</span></a><i
							class="fe fe-angle-double-right " aria-hidden="true"></i></li>
						<li class="breadcrumb-item font-weight-bold"><a
							class="black-text inactive text-uppercase "
							href="<c:url value='/holidays/index?fromHolidays=1' />"><span>إستعراض
									أيام العطل </span></a></li>

						<li class="breadcrumb-item font-weight-bold"><a
							class="black-text active text-uppercase " href="#"><span>إستعراض
									الفروع التي تخضع للعطلة </span></a></li>
					</ol>
				</c:if>

				<c:if test="${fromHolidays==0 }">
					<ol class="breadcrumb indigo lighten-6 first  px-md-4"
						style="background-color: #ffffff00">
						<li class="breadcrumb-item font-weight-bold"><a
							class="black-text inactive text-uppercase  "
							href="<c:url value='/indHolidays/index' />"><span
								class="mr-md-3 mr-2">إدارة العطل</span></a><i
							class="fe fe-angle-double-right " aria-hidden="true"></i></li>
						<li class="breadcrumb-item font-weight-bold"><a
							class="black-text inactive text-uppercase "
							href="<c:url value='/indHolidays/index' />"><span>إستعراض
									العطل الثابتة </span></a></li>

						<li class="breadcrumb-item font-weight-bold"><a
							class="black-text inactive text-uppercase "
							href="<c:url value='/holidays/index/byIndholiday?indId=${holidays.indHolidays.id}' />"><span>إستعراض
									أيام العطل </span></a></li>
						<li class="breadcrumb-item font-weight-bold"><a
							class="black-text active text-uppercase " href="#"><span>
									استعراض الفروع التي تخضع للعطلة </span></a></li>
					</ol>
				</c:if>

			</nav>
		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="row justify-content-center">
		<div class="col-12 ">

			<c:set var="currentDate" value="<%=new java.util.Date()%>" />
			<fmt:parseDate value="${holidays.holidayDate}" pattern="yyyy-MM-dd"
				var="parseDateHoliday" />
			<form class="needs-validation" novalidate method="post"
				name="branchHoliday"
				action="${pageContext.request.contextPath}/branchHoliday/save?fromHolidays=${fromHolidays }">
				<div class="row mt-3">

					<div class="col-md-10">
					
					<c:choose>
									<c:when test="${currentDate gt parseDateHoliday}">

										<p class="cannot-add-text">&nbsp&nbspلا يمكنك إضافة فرع جديد يخضع للعطلة لإن التاريخ الحالي تجاوز تاريخ العطلة</p>
									</c:when>

									<c:otherwise>
									<div class=row>

							<div class="col-md-6">

							
										<div class="form-group">


											<input type="hidden" name="holiday" id="holiday"
												value="${holidayId }"> <label for="upper_level_id">إضافة
												فرع يخضع للعطلة *</label> <select required name="branch"
												class="form-control select2" id="branch" name="branch">

												<option value="" hidden>إختر الفرع</option>
												
													<option style="background: #fff" value="-1">
														كل الأفرع</option>
												<c:forEach var="branch" items="${branchList}">

													<option style="background: #fff" value="${branch.id}">
														${branch.nameA}</option>

												</c:forEach>


											</select>
											<div class="invalid-feedback">هذا الحقل مطلوب</div>


										</div>




								

							</div>

							<div class="col-md-6">
								<button style="margin: 28px" type="submit" value="submit"
									class="btn mb-2 btn-primary" style="width: 80px">إضافة</button>
							</div>


						</div>
									</c:otherwise>
									</c:choose>
					
						
					</div>

					<div class="col-md-2"
						style="text-align: left; align-content: center">

						<span class="date"> <%@ taglib prefix="fmt"
								uri="http://java.sun.com/jsp/jstl/fmt"%>
							<jsp:useBean id="now" class="java.util.Date" /> <fmt:formatDate
								value="${now}" pattern="yyyy-MM-dd" />
						</span>
					</div>
				</div>
			</form>
			<p class="card-text"></p>
			<div class="panel panel-default">

				<div class="card shadow">

					<div class="card-body">


						<!-- non customer individual search criteria  -->

						<div id="nonIndiv" style="display: block">



							<!-- non customer individual search criteria  -->



							<div class="row my-4">
								<!-- Small table -->
								<div class="col-md-12">
									<div class="card shadow">
										<div class="card-body">
											<!-- table -->
											<table class="table datatables" id="dataTable-1">
												<thead>
													<tr>
														<th>#</th>
														<th>اسم الفرع</th>

														<th>نوع الفرع</th>
														<th>البلد</th>
														<th>المحافظة</th>
														<th>حذف الفرع</th>


													</tr>
												</thead>
												<tbody>

													<c:forEach varStatus="status" var="varuserList"
														items="${branchHolidayList}">

														<%-- Compare dates --%>
														<fmt:parseDate value="${varuserList.holiday.holidayDate}"
															pattern="yyyy-MM-dd" var="parsedDate" />

														<tr>
															<td>${varuserList.id}</td>
															<td>${varuserList.branch.nameA}</td>

															<td>${varuserList.branch.indBranchType.nameA}</td>

															<td>${varuserList.branch.city_id.nameA}</td>
															<td>${varuserList.branch.country_id.nameA}</td>


															<td><c:choose>
																	<c:when test="${currentDate gt parsedDate}">

																		<i id="delete_${status.index}"
																			data-id="${status.index}"
																			onclick="callDangerAlertWithoutUrl('x',
																				'لا يمكنك الحذف',
																				'تاريخ العطلة تجاوز التاريخ الحالي')"
																			class=" fe fe-delete icon-delete"
																			style="color: #c3c3c3"></i>
																	</c:when>

																	<c:otherwise>
																		<i id="delete_${status.index}"
																			data-id="${status.index}"
																			onclick="callDangerAlert('delete','تأكيد الحذف'
																,'متأكد من حذف  العطلة للفرع',
												'/branchHoliday/save/delete?id=${varuserList.id}&fromHolidays=${fromHolidays }')"
																			class=" fe fe-delete icon-delete"></i>
																	</c:otherwise>
																</c:choose></td>

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

					</div>
				</div>
				<jsp:include page="/WEB-INF/jsp/layout/pagination.jsp">
					<jsp:param name="controller_url" value="/branchHoliday/index" />

				</jsp:include>
			</div>


			<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
			<script>
			
				$(document)
						.ready(
								function() {

									if(${fromHolidays==1})
									{
										$('#holidays-management-elements').addClass("show");
										$('#holidays-management').addClass("active-color");
										$('#holidays-index').addClass("active-color");
									}
								
									
									else
										{
										$('#holidays-management-elements').addClass("show");
										$('#holidays-management').addClass("active-color");
										$('#ind-holidays-index').addClass("active-color");
										}
							
						
								});

			
				

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
			</script>