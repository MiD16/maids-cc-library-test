
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
							class="mr-md-3 mr-2">المستخدمون</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>إستعراض
								المستخدمون </span></a></li>
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
					<a href="<c:url value='/user/create' />">
						<button type="button" class="btn mt-1 mb-0 btn-outline-primary"
							href="<c:url value='/user/create' />">
							إضافة مستخدم <i class="fe fe-plus-circle" style=""></i>
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
														<th>الاسم</th>
														<th>اسم المستخدم</th>
														<th>الحالة</th>
														<th>الأدوار</th>
														<th>الصلاحيات</th>
														<th>العمليات</th>

													</tr>
												</thead>
												<tbody>
													<c:forEach varStatus="status" var="varuserList"
														items="${userList}">



														<tr id="row_${status.index}">
															<td>${varuserList.ID}</td>
															<td>${varuserList.fullname}</td>
															<td>${varuserList.username}</td>
															<td><c:if test="${varuserList.lockUser == 1}">
																	<div style="color: red">مقفول</div>
																</c:if> <c:if test="${varuserList.lockUser == 0}">
																	<div style="color: #28a745">فعال</div>
																</c:if></td>
															<td>
																<div>

																	<a id='delete_${status.index}'
																		href="<c:url value="/UserRole/index?id=${varuserList.ID}" />">
																		<i class="ti-eye"></i> أدوار المستخدم
																	</a>
																</div>
															</td>
															<td>
																<div>

																	<a
																		href="<c:url value="/UserAction/index?id=${varuserList.ID}" />">
																		<i class="ti-eye"></i> صلاحيات المستخدم
																	</a>
																</div>
															</td>
															<td>


																<div>

																	<i id="delete_${status.index}"
																		data-id="${status.index}"
																		onclick="window.location.href='${pageContext.request.contextPath}/user/details?id=${varuserList.ID} '"
																		class=" fe fe-info icon-info tooltip"> </i>
																</div> <c:if test="${varuserList.lockUser == 0}">
																	<i id="delete1_${status.index}"
																		data-id="${status.index}"
																		onclick="callDangerAlert('lock','رسالة تأكيد','متأكد من قفل الحساب ',
												'/user/lockToggle?id=${varuserList.ID}')"
																		class=" fe fe-unlock icon-unlock"></i>
																</c:if> <c:if test="${varuserList.lockUser == 1}">
																	<i id="delete1_${status.index}"
																		data-id="${status.index}"
																		onclick="callDangerAlert('lock','رسالة تأكيد','متأكد من تفعيل الحساب ',
												'/user/unlockToggle?id=${varuserList.ID}')"
																		class=" fe fe-lock icon-lock"></i>
																</c:if>&nbsp&nbsp&nbsp <i
																id="delete1_${status.index}" data-id="${status.index}"
																onclick="callDangerAlert('key','رسالة تأكيد','متأكد من عملية تهيئة كلمة المرور إلى  Password',
												'/user/resetpassword?id=${varuserList.ID}')"
																class=" fe fe-key icon-key"></i> &nbsp&nbsp&nbsp<i id="delete_${status.index}"
																data-id="${status.index}"
																onclick="callDangerAlert('delete','رسالة تأكيد','متأكد من حذف  المستخدم ',
												'/user/delete?id=${varuserList.ID}')"
																class=" fe fe-delete icon-delete"></i>  &nbsp&nbsp&nbsp <i
																id="edit_${status.index}" data-id="${status.index}"
																onclick="window.location.href='${pageContext.request.contextPath}/user/create?id=${varuserList.ID} '"
																class=" fe fe-edit icon-edit"> </i>
																	<i 
															data-id="${status.index}"
															onclick="window.location.href='${pageContext.request.contextPath}/user/details?id=${varuserList.ID} '"
															class=" fe fe-info icon-info"></i>	
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
					<jsp:param name="controller_url" value="/user/index" />

				</jsp:include>
			</div>


			<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
			<script>
			$(document).ready(function() {

				$('#user-management-elements').addClass("show");
				$('#user-management').addClass("active-color");
				$('#user-index').addClass("active-color");
				
				
			});
			</script>