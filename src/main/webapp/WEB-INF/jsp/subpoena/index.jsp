
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
							class="mr-md-3 mr-2"> طلبات الاستدعاء</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>استعراض
								 طلبات الاستدعاء </span></a></li>
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
					<a href="<c:url value='/subpoena/create' />">
						<button type="button" class="btn mt-1 mb-0 btn-outline-primary"
							href="<c:url value='/subpoenas/create' />">
							إضافة طلب استدعاء <i class="fe fe-plus-circle" style=""></i>
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
														<th>الاسم باللغة الأساسية</th>
														<th>الاسم باللغة الثانوية</th>
														<th>الحالة</th>
														<th>تفعيل/إلغاء تفعيل</th>
														<th>العمليات</th>


													</tr>
												</thead>
												<tbody>

													<c:forEach varStatus="status" var="varuserList"
														items="${subpoenList}">



														<tr>
															<td>${varuserList.id}</td>
															<td>${varuserList.nameA}</td>
															<td>${varuserList.nameB}</td>
																<td><c:if test="${varuserList.isEnableFlag == 0 }">
																	<span class="dot dot-lg bg-danger mr-1"></span>
																	 غير فعالة
																		</span>
																</c:if> <c:if test="${varuserList.isEnableFlag == 1 }">
																	<span class="dot dot-lg bg-success mr-2"></span>
																		&nbsp فعالة &nbsp</span>
																</c:if></td>
															<td>
															
															<div class="custom-control custom-switch"
																	style="margin-right: 55px;">
																	<c:if test="${varuserList.isEnableFlag==0}">
																		<input type="checkbox" class="custom-control-input"
																			id="switch_${varuserList.id}"
																	onclick="window.location.href='${pageContext.request.contextPath}/subpoena/toggle?id=${varuserList.id}&enable=1'">
																			
																	</c:if>
																	<c:if test="${varuserList.isEnableFlag==1}">
																		<input type="checkbox" class="custom-control-input"
																			id="switch_${varuserList.id}" checked
																	onclick="window.location.href='${pageContext.request.contextPath}/subpoena/toggle?id=${varuserList.id}&enable=0'">


																	</c:if>
																	<label class="custom-control-label"
																		for="switch_${varuserList.id}"></label>
																</div>
															</td>

														
															<td>

																
																 <i id="delete_${status.index}"
																data-id="${status.index}"
																onclick="window.location.href='${pageContext.request.contextPath}/subpoena/delete?id=${varuserList.id} '"
																class=" fe fe-delete icon-delete"></i> &nbsp&nbsp&nbsp 
																
																<i
																id="edit_${status.index}" data-id="${status.index}"
																onclick="window.location.href='${pageContext.request.contextPath}/subpoena/create?id=${varuserList.id} '"
																class=" fe fe-edit icon-edit"> </i>
																
																&nbsp&nbsp<i
																id="edit_${status.index}" data-id="${status.index}"
																onclick="window.location.href='${pageContext.request.contextPath}/subpoena/details?id=${varuserList.id} '"
																class=" fe fe-info icon-info"> </i>
															</td>

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
					<jsp:param name="controller_url" value="/subpoena/index" />

				</jsp:include>
			</div>


			<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
			<script>
				
				
				$(document).ready(function() {

					$('#subpoena-request-details-management-elements').addClass("show");
					$('#subpoena-request-details-management').addClass("active-color");
					$('#subpoena-request-details-index').addClass("active-color");
					
					
				});
				
			</script>