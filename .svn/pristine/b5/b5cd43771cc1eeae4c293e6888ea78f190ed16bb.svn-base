
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
							class="mr-md-3 mr-2">إدارة العطل</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>إستعراض
								أيام العطل </span></a></li>
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
					<a href="<c:url value='/holidays/create' />">
						<button type="button" class="btn mt-1 mb-0 btn-outline-primary"
							href="<c:url value='/holidays/create' />">
							إضافة يوم عطلة <i class="fe fe-plus-circle" style=""></i>
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

				<p class="card-text">يتم استعراض أيام العطل التي تم إضافتها
					يدوياً</p>
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
														<th>الوصف</th>
														<th>التاريخ</th>
														<th>اليوم</th>
														<th>فروع العطلة</th>
														<th>الحالة</th>
														<th>تفعيل/إلغاء تفعيل</th>
														<th>العمليات</th>


													</tr>
												</thead>
												<tbody>

													<c:forEach varStatus="status" var="varuserList"
														items="${holidaysList}">



														<%-- Compare dates --%>
														<c:set var="currentDate" value="<%=new java.util.Date()%>" />
														<fmt:parseDate value="${varuserList.holidayDate}"
															pattern="yyyy-MM-dd" var="parsedDate" />

														<tr>
															<td>${varuserList.id}</td>
															<td>${varuserList.nameA}</td>
															<td>${varuserList.holidayDate}</td>

															<td>${varuserList.holidayDay}</td>
															<td><a
																href="<c:url value='/branchHoliday/index?holidayId=${varuserList.id}&fromHolidays=1' />"
																style="text-decoration: underline"> استعراض الفروع </a></td>

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
																	style="margin-right: 35px;">
																	<c:if test="${varuserList.isEnableFlag==0}">
																		<input type="checkbox" class="custom-control-input"
																			id="switch_${varuserList.id}"
																			<c:choose>
  <c:when test="${currentDate gt parsedDate}">
  
onclick="disableChange(this)"  
        </c:when>
   
        <c:otherwise>
      	onclick="window.location.href='${pageContext.request.contextPath}/holidays/toggle?id=${varuserList.id}&fromHolidays=1&enable=1'"
      
        </c:otherwise>
        </c:choose>>

																	</c:if>

																	<c:if test="${varuserList.isEnableFlag==1}">
																		<input type="checkbox" class="custom-control-input"
																			id="switch_${varuserList.id}" checked
																			<c:choose>
  <c:when test="${currentDate gt parsedDate}">
  
        	onclick="disableChange(this)"
  
        </c:when>
   
        <c:otherwise>
onclick="window.location.href='${pageContext.request.contextPath}/holidays/toggle?id=${varuserList.id}&fromHolidays=1&enable=0'"      
        </c:otherwise>
        </c:choose>>




																	</c:if>
																	<label class="custom-control-label"
																		for="switch_${varuserList.id}"></label>
																</div>
															</td>
															<td><c:choose>
																	<c:when test="${currentDate gt parsedDate}">

																		<i 
																			onclick="callDangerAlertWithoutUrl('x',
																				'لا يمكنك الحذف',
																				'التاريخ الحالي تجاوز تاريخ العطلة')"
																			class=" fe fe-delete icon-delete"
																			style="color: #c3c3c3"></i> 
																	&nbsp&nbsp&nbsp <i id="edit_${status.index}"
																			data-id="${status.index}"
																			onclick="callDangerAlertWithoutUrl('edit','لا يمكنك التعديل'
																				,'التاريخ الحالي تجاوز تاريخ العطلة')"
																			class=" fe fe-edit icon-edit" style="color: #c3c3c3">
																		</i>&nbsp&nbsp 

																	</c:when>
																	<c:otherwise>
																		<i id="delete_${status.index}"
																			data-id="${status.index}"
																			onclick="window.location.href='${pageContext.request.contextPath}/holidays/delete?id=${varuserList.id} '"
																			class=" fe fe-delete icon-delete"></i> &nbsp&nbsp&nbsp <i
																		
																			onclick="window.location.href='${pageContext.request.contextPath}/holidays/create?id=${varuserList.id} '"
																			class=" fe fe-edit icon-edit"> </i> &nbsp&nbsp        </c:otherwise>
																</c:choose> <i id="details_${status.index}"
																data-id="${status.index}"
																onclick="window.location.href='${pageContext.request.contextPath}/holidays/details?id=${varuserList.id}&fromHolidays=1'"
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
					<jsp:param name="controller_url" value="/holidays/index" />

				</jsp:include>
			</div>


			<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
			<script>
				$(document)
						.ready(
								function() {

									$('#holidays-management-elements')
											.addClass("show");
									$('#holidays-management').addClass(
											"active-color");
									$('#holidays-index').addClass(
											"active-color");

									
								});

				function toggle(elem, id) {
					window.location.href = "${pageContext.request.contextPath }/holidays/toggle?id="
							+ id;

				}

				function disableChange(elem) {

					event.stopPropagation();
					callDangerAlertWithoutUrl('x', 'لا يمكنك تغير حالة العطلة',
							'تاريخ العطلة تجاوز التاريخ الحالي');
					elem.checked = !elem.checked

				}
			</script>