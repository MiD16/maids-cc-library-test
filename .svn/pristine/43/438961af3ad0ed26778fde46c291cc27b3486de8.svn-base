
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
						class="black-text active text-uppercase " href="#"><span>استعراض
								العطل الثابتة </span></a></li>
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
					<a href="<c:url value='/indHolidays/create' />">
						<button type="button" class="btn mt-1 mb-0 btn-outline-primary"
							href="<c:url value='/subpoenas/create' />">
							إضافة عطلة ثابتة <i class="fe fe-plus-circle" style=""></i>
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
														<th>الوصف</th>
														<th>التاريخ</th>


														<th>أيام العطل</th>
														<th>الحالة</th>
														<th>تفعيل/إلغاء تفعيل</th>
														<th>العمليات</th>


													</tr>
												</thead>
												<tbody>

													<c:forEach varStatus="status" var="varuserList"
														items="${indHolidaysList}">



														<tr>
															<td>${varuserList.id}</td>
															<td>${varuserList.nameA}</td>
															<td>${varuserList.indMonth.nameA}/${varuserList.holidayDay}</td>


														

														
															<td><a href="<c:url value='/holidays/index/byIndholiday?indId=${varuserList.id}' />" style="text-decoration: underline">
																	استعراض أيام العطل </a></td>
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
																	style="margin-right: 65px;">
																	<c:if test="${varuserList.isEnableFlag==0}">
																		<input type="checkbox" class="custom-control-input"
																			id="switch_${varuserList.id}"
																			onchange="confirm(this,${varuserList.isGeneratedDays},${varuserList.id})">


																	</c:if>
																	<c:if test="${varuserList.isEnableFlag==1}">
																		<input type="checkbox" class="custom-control-input"
																			id="switch_${varuserList.id}" checked
																			onchange="confirm(this,${varuserList.isGeneratedDays},${varuserList.id})">


																	</c:if>
																	<label class="custom-control-label"
																		for="switch_${varuserList.id}"></label>
																</div>
															</td>

															<td>
																<c:if test="${varuserList.isGeneratedDays==1}">
															
																	 <i
																id="delete_${status.index}" data-id="${status.index}"
onclick="callConfirmAlert('x','لا يمكنك الحذف','يوجد أيام عطل مرتبطة بهذه العطلة ')"																class=" fe fe-delete icon-delete" style="color:#c3c3c3"></i> 
																	&nbsp&nbsp&nbsp <i
																id="edit_${status.index}" data-id="${status.index}"
																onclick="callConfirmAlert('edit','لا يمكنك التعديل','يوجد أيام عطل مرتبطة بهذه العطلة ')"
																class=" fe fe-edit icon-edit" style="color:#c3c3c3"> </i>
															
															
																</c:if>
																
																
																<c:if test="${varuserList.isGeneratedDays==0}">
																	 <i
																id="delete_${status.index}" data-id="${status.index}"
																onclick="window.location.href='${pageContext.request.contextPath}/indHolidays/delete?id=${varuserList.id} '"
																class=" fe fe-delete icon-delete" ></i> 
																	&nbsp&nbsp&nbsp <i
																id="edit_${status.index}" data-id="${status.index}"
																onclick="window.location.href='${pageContext.request.contextPath}/indHolidays/create?id=${varuserList.id} '"
																class=" fe fe-edit icon-edit"> </i>
																</c:if>
															
																 &nbsp&nbsp<i
																id="info_${status.index}" data-id="${status.index}"
																onclick="window.location.href='${pageContext.request.contextPath}/indHolidays/details?id=${varuserList.id} '"
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
					<jsp:param name="controller_url" value="/indHolidays/index" />

				</jsp:include>
			</div>


			<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
			<script>

				
				
				$(document).ready(function() {

					$('#holidays-management-elements').addClass("show");
					$('#holidays-management').addClass("active-color");
					$('#ind-holidays-index').addClass("active-color");
					

					
					
				});
				
				
				function confirm(elem,isGeneratedDays,id)
				{
			
					if(elem.checked==true && isGeneratedDays==0)
						{
						const swalWithBootstrapButtons = Swal.mixin({
							  customClass: {
							    confirmButton: 'btn btn-primary-red confirm-swal',
							    cancelButton: 'btn  cancel-swal',
							  },
							  buttonsStyling: false
							});

						swalWithBootstrapButtons.fire({
							icon : 'question',
							title : 'تحذير',
							text : 'في حال تفعيل العطلة وتم توليد أيام عطل خاصة بها لن يعد بإمكانك التعديل عليها',
							  iconHtml: '<i class="fe fe-x" style="color:#c60606 ; font-size:50px" ></i>',
							  confirmButtonText: 'تم',
					  		  allowOutsideClick: false,
							  showCloseButton: false,
							  cancelButtonText: "تراجع",
							  showCancelButton: true,
							  allowOutsideClick: true,
							  didOpen: function () {
								    Swal.getConfirmButton().blur()
								  },
						}).then((result) => {
							  if (result.isConfirmed) {
								  window.location.href = "${pageContext.request.contextPath }/indHolidays/toggle?id="+id+"&enable=1";
								  } 
							  else  {
								elem.checked=!elem.checked;
									  }
								});
					
						
						
						}
					
					
					else if(elem.checked==true  )
						{
						  window.location.href = "${pageContext.request.contextPath }/indHolidays/toggle?id="+id+"&enable=1";

						}
					
					
					else if(elem.checked==false)
					{
						const swalWithBootstrapButtons = Swal.mixin({
							  customClass: {
							    confirmButton: 'btn btn-primary-red confirm-swal',
							    cancelButton: 'btn  cancel-swal',
							  },
							  buttonsStyling: false
							});

						swalWithBootstrapButtons.fire({
							icon : 'question',
							title : 'تحذير',
							text : 'في حال إلغاء تفعيل العطلة ويوجد ايام عطلة مرتبطة بها  سيتم إلغاء تفعيلها أيضاً',
							  iconHtml: '<i class="fe fe-x" style="color:#c60606 ; font-size:50px" ></i>',
							  confirmButtonText: 'تم',
					  		  allowOutsideClick: false,
							  showCloseButton: false,
							  cancelButtonText: "تراجع",
							  showCancelButton: true,
							  allowOutsideClick: true,
							  didOpen: function () {
								    Swal.getConfirmButton().blur()
								  },
						}).then((result) => {
							  if (result.isConfirmed) {
								  window.location.href = "${pageContext.request.contextPath }/indHolidays/toggle?id="+id+"&enable=0";
								  } 
							  else  {
								elem.checked=!elem.checked;
									  }
								});

					}
					
					
				
				}
			</script>