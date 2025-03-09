
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
							class="mr-md-3 mr-2"> العمليات</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>استعراض  عملية
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
						<div class="card shadow">
				<div class="card-header">
					 
				<strong class="card-title"> استعراض  عملية -   <span style="color: #d1a923">
							${action.action_name_ar}.</span>   </strong>
							
					
					
				
				</div>
				<div class="card-body">


					<!-- non customer individual search criteria  -->

					<div id="nonIndiv" style="display: block">

			<form:form method="post" 
					name="formCreate"
						action="${pageContext.request.contextPath}/action/edit"
					modelAttribute="action">
							<input type="hidden" value="${action.ID}" name="ID">
			
				<input type="hidden" value="${role.ID}" name="role_id">
			
			
											
										
											
					<div class="wizard clearfix row">
						
						<div class="col-md-6">
											<div class="form-group">
													
												<label for="action_name_ar"> اسم العملية باللغة العربية *</label>
											
												<input readonly id="action_name_ar" name="action_name_ar"
													type="text" class="form-control " required
													value="${action.action_name_ar}">
											</div>	</div>
											
											<div class="col-md-6">
											<div class="form-group">
													
												<label for="action_name_en"> اسم العملية  باللغة الثانوية *</label>
											
												<input readonly id="action_name_en" name="action_name_en"
													type="text" class="form-control " readonly
													value="${action.action_name_en}">
											</div>	</div>		
																					<div class="col-md-6">
								<div class="form-group">


									<label for="indCatigoryModule">الوحدة التي تنتمي لها العملية *</label> <select disabled
										class="form-control select2" id="indCatigoryModule" name="indCatigoryModule">
										<optgroup label="الوحدة التي تنتمي لها الصلاحية ">

											<c:forEach var="ind" items="${indCatigoryModules}">
												<c:if test="${ action.indCatigoryModule.id==ind.id}">
													<option value="${ind.id}" selected>${ind.nameA}</option>
												</c:if>
												<c:if test="${action.indCatigoryModule.id!=ind.id}">
													<option value="${ind.id}">${ind.nameA}</option>
												</c:if>


											</c:forEach>
										</optgroup>

									</select>

								</div>
							</div>
														
													<div class="col-md-6">
								<div class="form-group">


									<label for="indCreditDebitCatigory">   نوع العملية  *</label> <select disabled
										class="form-control select2" id="indCreditDebitCatigory" name="indCreditDebitCatigory">
										<optgroup label="الوحدة التي تنتمي لها الصلاحية ">

											<c:forEach var="ind" items="${indCreditDebitCatigories}">
												<c:if test="${ action.indCreditDebitCatigory.id==ind.id}">
													<option value="${ind.id}" selected>${ind.nameA}</option>
												</c:if>
												<c:if test="${action.indCreditDebitCatigory.id!=ind.id}">
													<option value="${ind.id}">${ind.nameA}</option>
												</c:if>


											</c:forEach>
										</optgroup>

									</select>

								</div>
							</div>
		                        		<div class="col-md-6">
											<div class="form-group">
													
												<label for="description"> الوصف *</label>
											
												<textarea readonly rows="4" id="description" name="description"
													 class="form-control " required
													>${action.description}</textarea>
											</div>	</div>	
											
											  		<div class="col-md-6">
											<div class="form-group">
													
										
											</div>	</div>	

							<div class="form-group col-md-6" id="subpoenaReqFlagDiv">
								<p class="mb-2">تحتاج لطلب استدعاء</p>
								<c:if test="${action.subpoenaReqFlag==0 ||action.subpoenaReqFlag==null}">
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="subpoenaReqFlag"
											name="subpoenaReqFlag" class="custom-control-input" checked>
										<label class="custom-control-label" for="subpoenaReqFlag">نعم
										</label>
									</div>


								</c:if>
								<c:if test="${action.subpoenaReqFlag==1 }">
								

									<div class=" custom-radio form-check-inline">
										<input value="1" type="radio" id="subpoenaReqFlag2"
											name="subpoenaReqFlag" class="custom-control-input" checked>
										<label class="custom-control-label" for="subpoenaReqFlag2">
											لا </label>
									</div>

								</c:if>
							</div>
						
									<div class="form-group col-md-6" id="isTransactionFlagDiv">
								<p class="mb-2"> ينتج عنها قيود مالية  </p>
								<c:if test="${action.isTransactionFlag==0 ||action.isTransactionFlag==null}">
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="isTransactionFlag"
											name="isTransactionFlag" class="custom-control-input" checked>
										<label class="custom-control-label" for="isTransactionFlag">نعم
										</label>
									</div>

								

								</c:if>
								<c:if test="${action.isTransactionFlag==1 }">
									

									<div class=" custom-radio form-check-inline">
										<input value="1" type="radio" id="isTransactionFlag2"
											name="isTransactionFlag" class="custom-control-input" checked>
										<label class="custom-control-label" for="isTransactionFlag2">
											لا </label>
									</div>

								</c:if>
							</div>
							
							</div>
											
											
												</div>
												<hr>
												<h6 class="card-text" style="color: #d1a923">معلومات فترة استحقاق عملية :</h6>	
													<div class="col-md-6">
											<div class="form-group">
													
										
											</div>
											
											
												</div>
												<div class="row">
									<div class="col-md-6">
								<div class="form-group ">


									<label for="periodList">   فترة استحقاق العملية   *</label> <select disabled
										class="form-control select2" id="periodList" name="period">
										<optgroup label="الوحدة التي تنتمي لها الصلاحية ">

											<c:forEach var="ind" items="${periodList}">
												<c:if test="${ action.period.id==ind.id}">
													<option value="${ind.id}" selected>${ind.accPeriodDescA}</option>
												</c:if>
										


											</c:forEach>
										</optgroup>

									</select>

								</div>
							</div>
										
										<div class="form-group col-md-6" id="afterflagDiv">
								<p class="mb-2"> فترة استحقاق العملية </p>
								<c:if test="${action.afterflag==0 ||action.afterflag==null}">
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="afterflag"
											name="afterflag" class="custom-control-input" checked>
										<label class="custom-control-label" for="afterflag">قبل تاريخ العملية 
										</label>
									</div>

							

								</c:if>
								<c:if test="${action.afterflag==1 }">
								
									<div class=" custom-radio form-check-inline">
										<input value="1" type="radio" id="afterflag2"
											name="afterflag" class="custom-control-input" checked>
										<label class="custom-control-label" for="afterflag2">
											بعد تاريخ العملية </label>
									</div>

								</c:if>
							</div>
			
					</div>
					</div>
					
					</form:form>

						<!-- non customer individual search criteria  -->


			

					</div>

				</div>
			</div>
			
			

	<div class="clear"></div>
</div>
<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
<script>
$('#dataTable-1').DataTable({
	autoWidth : true,
	"lengthMenu" : [ [ 8, 32, 64, -1 ], [ 8, 32, 64, "All" ] ]
});

$('.drgpicker').daterangepicker({
	singleDatePicker : true,
	timePicker : false,
	showDropdowns : true,
	locale : {
		format : 'YYYY/MM/DD'
	}
});


</script>
 <script>
			$(document).ready(function() {

				$('#operation-management-elements').addClass("show");
				$('#operation-management').addClass("active-color");
				$('#operation-index').addClass("active-color");
				
				
			});
			</script>
