
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
						href="<c:url value='/indHolidays/index' />"><span
							class="mr-md-3 mr-2">إدارة العطل</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase "
						href="<c:url value='/indHolidays/index' />"><span>إستعراض
								العطل الثابتة </span></a></li>

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
				<div class="col-md-10 "></div>
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
														<th>الوصف</th>
														<th>التاريخ</th>
														<th>اليوم</th>
														<th>فروع العطلة</th>
														<th>تفعيل/إلغاء تفعيل</th>
														<th>العمليات</th>


													</tr>
												</thead>
												<tbody>

													<c:forEach varStatus="status" var="varuserList"
														items="${holidaysList}">

														<c:set var="currentDate" value="<%=new java.util.Date()%>" />
														<fmt:parseDate value="${varuserList.holidayDate}"
															pattern="yyyy-MM-dd" var="parsedDate" />

														<tr>
															<td>${varuserList.id}</td>
															<td>${varuserList.nameA}</td>
															<td>${varuserList.holidayDate}</td>

															<td>${varuserList.holidayDay}</td>
															<td><a
																href="<c:url value='/branchHoliday/index?holidayId=${varuserList.id}&fromHolidays=0' />"
																style="text-decoration: underline"> استعراض الفروع </a></td>

															<td>

																<div class="custom-control custom-switch"
																	style="margin-right: 65px;">
																	<c:if test="${varuserList.isEnableFlag==0}">






																		<input type="checkbox" class="custom-control-input"
																			id="switch_${varuserList.id}"
																			<c:choose>
  <c:when test="${currentDate gt parsedDate}">
  
onchange="disableChange(this)"  
        </c:when>
   
        <c:otherwise>
			onchange="checktoggle(this,${varuserList.id},${varuserList.indHolidays.isEnableFlag})"
      
        </c:otherwise>
        </c:choose>>
																	</c:if>
																	<c:if test="${varuserList.isEnableFlag==1}">
																		<input type="checkbox" class="custom-control-input"
																			id="switch_${varuserList.id}" checked
																			<c:choose>
  <c:when test="${currentDate gt parsedDate}">
  
onchange="disableChange(this)"  
        </c:when>
   
        <c:otherwise>
onchange="checktoggle(this,${varuserList.id},${varuserList.indHolidays.isEnableFlag})"      
        </c:otherwise>
        </c:choose>>
																	</c:if>
																	<label class="custom-control-label"
																		for="switch_${varuserList.id}"></label>
																</div>
															</td>

															<td>&nbsp&nbsp<i id="details_${status.index}"
																data-id="${status.index}"
																onclick="window.location.href='${pageContext.request.contextPath}/holidays/details?id=${varuserList.id}&fromHolidays=0'"
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
									$('#ind-holidays-index').addClass(
											"active-color");


							
								});

				function checktoggle(elem, id, isEnable) {
					if (elem.checked == false)
						window.location.href = "${pageContext.request.contextPath}/holidays/toggle?id="
								+ id + "&fromHolidays=0&enable=0";

					else {
						if (isEnable == 0) {
							const swalWithBootstrapButtons = Swal
									.mixin({
										customClass : {
											confirmButton : 'btn btn-primary-red confirm-swal',
											cancelButton : 'btn  cancel-swal',
										},
										buttonsStyling : false
									});

							swalWithBootstrapButtons
									.fire({
										icon : 'question',
										title : 'لا يمكنك التفعيل',
										text : 'العطلة الثابتة المرتبط بها هذا اليوم غير مفعلة .. لذلك لا يمكنك تفعيل يوم العطلة',
										iconHtml : '<i class="fe fe-x" style="color:#c60606 ; font-size:50px" ></i>',
										confirmButtonText : 'تم',
										allowOutsideClick : false,
										showCloseButton : false,
										allowOutsideClick : true,
										didOpen : function() {
											Swal.getConfirmButton().blur()
										},
									})
							elem.checked = false;
						} else {
							window.location.href = "${pageContext.request.contextPath}/holidays/toggle?id="
									+ id + "&fromHolidays=0&enable=1";
						}

					}
					//	 window.location.href='${pageContext.request.contextPath}/holidays/toggle?id=${varuserList.id} '"
				}

				function disableChange(elem) {

					event.stopPropagation();
					callDangerAlertWithoutUrl('x', 'لا يمكنك تغير حالة العطلة',
							'تاريخ العطلة تجاوز التاريخ الحالي');
					elem.checked = !elem.checked

				}
			</script>