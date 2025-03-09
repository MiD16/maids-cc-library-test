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
							class="mr-md-3 mr-2">الضرائب</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>استعراض الضرائب
								</span></a></li>
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
					<a href="<c:url value='/tax/create' />">
						<button type="button" class="btn mt-1 mb-0 btn-outline-primary"
							href="<c:url value='/tax/create' />">
							إضافة  ضريبة <i class="fe fe-plus-circle" style=""></i>
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
													
													<th>اسم الضريبة  </th>
													<th> المبلغ </th>
									 				<th> العملة </th>
										     		
													
													<th>العمليات</th>
												
												</tr>
											</thead>
											<tbody>					<c:forEach varStatus="status" var="vartaxList"
													items="${taxList}">

												

													<tr id="row_${status.index}">
                                                      
														<td>${vartaxList.nameA}</td>
														
															<td>${vartaxList.amount}</td>
																<td>${vartaxList.currency_id.nameA}</td>
										
									
														<td >
										
																<i id="delete_${status.index}"
															data-id="${status.index}"
															
															onclick="callDangerAlert('delete','رسالة تأكيد','متأكد من حذف  الضريبة ',
												'/tax/delete?id=${vartaxList.ID} ')"
															
															class=" fe fe-delete icon-delete"></i>		&nbsp&nbsp&nbsp 
															<i id="edit_${status.index}"
															data-id="${status.index}"
															onclick="window.location.href='${pageContext.request.contextPath}/tax/create?id=${vartaxList.ID} '"
															class=" fe fe-edit icon-edit">
															
															
															</i>	&nbsp&nbsp&nbsp 
														<i 
															data-id="${status.index}"
															onclick="window.location.href='${pageContext.request.contextPath}/tax/details?id=${vartaxList.ID} '"
															class=" fe fe-info icon-info"></i>	
														
														
														
													</td>

													</tr>

												</c:forEach></tbody>
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
		 		 <jsp:param name="controller_url" value="/tax/index" />
			   
			   </jsp:include>
</div>


<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
<script>
function toggleEnabled(checkbox) {
    var isEnabledInput = document.getElementById('is_enabledInput');
    isEnabledInput.value = checkbox.checked ? '1' : '0';
}
</script>

<script>
			$(document).ready(function() {

				$('#tax-management-elements').addClass("show");
				$('#tax-management').addClass("active-color");
				$('#tax-index').addClass("active-color");
				
				
			});
			</script>
