
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
						href="<c:url value='/currencySegments/index' />"><span
							class="mr-md-3 mr-2">إدارة الفوائد</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase  "
						href="<c:url value='/currencySegments/index' />"><span
							class="mr-md-3 mr-2">شرائح العملات</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
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
					<a href="<c:url value='/currencySegments/create' />">
						<button type="button" class="btn mt-1 mb-0 btn-outline-primary"
							href="<c:url value='/interest/create' />">
							إضافة شريحة <i class="fe fe-plus-circle" style=""></i>
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
														<!--  <th>نوع الفائدة</th>-->
														<th>عملة الشريحة</th>
														<th>الحد الأدنى</th>
														<th>الحد الأعلى</th>
														<th>العمليات</th>


													</tr>
												</thead>
												<tbody>

													<c:forEach varStatus="status" var="varuserList"
														items="${currencySegmentsList}">



														<tr>
															<td>${varuserList.id}</td>
															<!-- 	<td>${varuserList.interestType.nameA}</td>-->
															<td>${varuserList.currency.nameA}</td>
															<td style="direction: ltr"><span  class="input-money">${varuserList.fromSeg}</span>  ${varuserList.currency.iso}</td>
															<td style="direction: ltr"><span  class="input-money"> ${varuserList.toSeg}</span> ${varuserList.currency.iso}</td>
														
													


															<td><i id="delete_${status.index}"
																data-id="${status.index}"
																onclick="window.location.href='${pageContext.request.contextPath}/currencySegments/delete?id=${varuserList.id} '"
																class=" fe fe-delete icon-delete"></i> &nbsp&nbsp&nbsp <i
																id="edit_${status.index}" data-id="${status.index}"
																onclick="window.location.href='${pageContext.request.contextPath}/currencySegments/update?id=${varuserList.id} '"
																class=" fe fe-edit icon-edit"> </i> &nbsp&nbsp<i
																id="edit_${status.index}" data-id="${status.index}"
																onclick="window.location.href='${pageContext.request.contextPath}/currencySegments/details?id=${varuserList.id} '"
																class=" fe fe-info icon-info"> </i></td>

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
					<jsp:param name="controller_url" value="/currencySegments/index" />

				</jsp:include>
			</div>


			<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
			<script>
				$(document).ready(
						function() {

							$('#interest-management-elements').addClass("show");
							$('#interest-management').addClass("active-color");
							$('#currency-segments-index').addClass("active-color");

						});
			</script>