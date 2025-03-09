
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
							class="mr-md-3 mr-2">العمليات</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>استعراض العمليات 
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
<div class="card-body">	
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
													
													<th>اسم العملية   </th>
													<th>اسم العملية باللغة الثانوية  </th>
												
													<th>وحدة العملية</th>
														<th>نوع  العملية</th>
													<th>العمليات</th>
												
												</tr>
											</thead>
											<tbody>					<c:forEach varStatus="status" var="varactionList"
													items="${actionList}">

												

													<tr id="row_${status.index}">
                                                      
														<td>${varactionList.action_name_ar}</td>
														<td>${varactionList.action_name_en}</td>
														<td>${varactionList.indCatigoryModule.nameA}</td>
															<td>${varactionList.indCreditDebitCatigory.nameA}</td>
														
													
														<td >
													
															<i 
															data-id="${status.index}"
															onclick="window.location.href='${pageContext.request.contextPath}/operation/edit?id=${varactionList.ID} '"
															class=" fe fe-edit icon-edit"></i>	
													
														    <i 
															data-id="${status.index}"
															onclick="window.location.href='${pageContext.request.contextPath}/operation/details?id=${varactionList.ID} '"
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
			</div>
				 <jsp:include page="/WEB-INF/jsp/layout/pagination.jsp">  
		 		 <jsp:param name="controller_url" value="/operation/index" />
			   
			   </jsp:include>	

</div>

<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
<script>
</script>
 <script>
			$(document).ready(function() {

				$('#operation-management-elements').addClass("show");
				$('#operation-management').addClass("active-color");
				$('#operation-index').addClass("active-color");
				
				
			});
			</script>