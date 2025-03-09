
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>
<%@include file="/WEB-INF/jsp/layout/header.jsp"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div class=".container-nav    ">
	<div class="row " style="border-bottom: 1px solid #e9ecef;">
		<div class="col-auto col-md-10  ">
			<nav aria-label="breadcrumb " class="second ">
				<ol class="breadcrumb indigo lighten-6 first  px-md-4"
					style="background-color: #ffffff00">
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase  "
						href="<c:url value='/periods/index' />"><span
							class="mr-md-3 mr-2">إدارة الفترات</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase  "
						href="<c:url value='/dateUnits/index' />"><span
							class="mr-md-3 mr-2">استعراض وحدات التاريخ</span></a><i
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
					<a href="<c:url value='/dateUnits/create' />">
						<button type="button" class="btn mt-1 mb-0 btn-outline-primary"
							href="<c:url value='/dateUnits/create' />">
							إضافة وحدة تاريخ <i class="fe fe-plus-circle" style=""></i>
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
														<th>ملاحظات</th>
														<th>العمليات</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach varStatus="status" var="varuserList"
														items="${dateUnitsList}">
														<tr>
															<td>${varuserList.id}</td>
															<td>${varuserList.nameA}</td>
															<td>${varuserList.nameB}</td>

															<c:if test="${varuserList.note!=null}">



																<td
																	onclick="callConfirmAlert('info','ملاحظات حول وحدة التاريخ'
																	,'${varuserList.note}')"
																	class="overflow-text-td">${varuserList.note}</td>

															</c:if>

															<c:if test="${varuserList.note==null}">
																<td
																	onclick="callConfirmAlert('info','ملاحظات حول وحدة التاريخ'
																	,'لا يوجد')"
																	class="overflow-text-td">--</td>
															</c:if>


															<td><i id="delete_${status.index}"
																data-id="${status.index}"
																onclick="callDangerAlert('delete','تأكيد الحذف','متأكد من حذف  وحدة التاريخ ',
												'/dateUnits/save/delete?id=${varuserList.id}')"
																class=" fe fe-delete icon-delete"></i> &nbsp&nbsp&nbsp <i
																id="edit_${status.index}" data-id="${status.index}"
																onclick="window.location.href='${pageContext.request.contextPath}/dateUnits/update?id=${varuserList.id} '"
																class=" fe fe-edit icon-edit"> </i></td>
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
					<jsp:param name="controller_url" value="/dateUnits/index" />
				</jsp:include>
			</div>
			<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
			<script>
				$(document).ready(function() {
					$('#periods-management-elements').addClass("show");
					$('#periods-management').addClass("active-color");
					$('#date-units-index').addClass("active-color");
				});
			</script>