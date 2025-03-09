
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
							class="mr-md-3 mr-2"> الضرائب</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>استعراض معلومات  ضريبة
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
			
					<strong class="card-title">  استعراض  معلومات ضريبة -   <span style="color: #d1a923">
							${tax.nameA}.</span>  </strong>
					
				
				</div>
				<div class="card-body">


					<!-- non customer individual search criteria  -->

					<div id="nonIndiv" style="display: block">

						<form id="form" class="needs-validation" novalidate method="post"
						modelAttribute="tax"
							action="${pageContext.request.contextPath}/tax/save">
								
											
												<input  id="id" name="ID"
													type="hidden" class="form-control " 
													value="${tax.ID}">
											
					<div class="wizard clearfix row">
							<div class="col-md-6">
											<div class="form-group">
													
												<label for="nameA"> اسم الضريبة   *</label>
											
												<input  id="nameA" name="nameA" readonly
													type="text" class="form-control " required
													value="${tax.nameA}">
														<div class="invalid-feedback">هذا الحقل مطلوب</div>
											</div></div>
						<div class="col-md-6">
											<div class="form-group">
													
												<label for="nameB"> اسم الضريبة  باللغة الثانوية *</label>
											
												<input  id="nameB" name="nameB" readonly
													type="text" class="form-control " required
													value="${tax.nameB}">
														<div class="invalid-feedback">هذا الحقل مطلوب</div>
											</div>	</div>
											
												<div class="col-md-6">
											<div class="form-group">
													
												<label for="amount"> المبلغ *</label>
											
												<input  id="amount" name="amount" readonly
													type="text" class="form-control " required
													value="${tax.amount}">
														<div class="invalid-feedback">هذا الحقل مطلوب</div>
											</div>	</div>
											
																				<div class="col-md-6">
								<div class="form-group">
									<label for="currency_id">   نوع العملة  *</label> <select disabled
										class="form-control select2" id="currency_id" name="currency_id">
										<optgroup label="الوحدة التي تنتمي لها الصلاحية ">

											<c:forEach var="ind" items="${accCurrencyList}">
												<c:if test="${ tax.currency_id.id==ind.id}">
													<option value="${ind.id}" selected>${ind.nameA}</option>
												</c:if>
												<c:if test="${tax.currency_id.id!=ind.id}">
													<option value="${ind.id}">${ind.nameA}</option>
												</c:if>


											</c:forEach>
										</optgroup>

									</select>

								</div>
							</div>
<%-- 																		         <div class="form-group col-md-6"
								id="is_enabledDiv">
								<p class="mb-2">
								 فعال    </p>
								 	<c:if
													test="${role.is_enabled==1 ||role.is_enabled==null}">
														<div class=" custom-radio form-check-inline">
									<input value="0" type="radio"
										id="is_enabled2"
										name="is_enabled"
										class="custom-control-input"> <label
										class="custom-control-label"
										for="is_enabled2"> لا  </label>
								</div>
								<div class=" custom-radio form-check-inline">
									<input value="1" type="radio" id="is_enabled"
										name="is_enabled"
										class="custom-control-input" checked > <label
										class="custom-control-label"
										for="is_enabled">نعم </label>
								</div>

							

</c:if>
								 	<c:if
													test="${role.is_enabled==0 }">
													
														<div class=" custom-radio form-check-inline">
									<input value="0" type="radio"
										id="is_enabled2"
										name="is_enabled"
										class="custom-control-input" checked> <label
										class="custom-control-label"
										for="is_enabled2"> لا  </label>
								</div>
								<div class=" custom-radio form-check-inline">
									<input value="1" type="radio" id="is_enabled"
										name="is_enabled"
										class="custom-control-input"  > <label
										class="custom-control-label"
										for="is_enabled">نعم </label>
								</div>
								
								

							

</c:if>
							</div>	 --%>
					
						<%-- 		<div class="form-group col-md-6" style="align-content: center">
								<div class="custom-control custom-switch">
									<c:if
										test="${role.is_enabled==1 ||role.is_enabled==null}">
										<input type="checkbox" class="custom-control-input" checked
											onchange="toggleEnabled(this)"  id="is_enabled" value="1">
									</c:if>
									<c:if
										test="${  role.is_enabled==0}">
										<input type="checkbox" class="custom-control-input"
											onchange="toggleEnabled(this)"  id="is_enabled">
									</c:if>
									<label class="custom-control-label" for="is_enabled">
										تفعيل الدور</label> <input type="text"
										name="is_enabled" id="is_enabledInput"
										value="${role.is_enabled}">
								</div>

							</div> --%>
							
							
				
	
						
		
					
					</div>
					
					</form>

						<!-- non customer individual search criteria  -->


			

					</div>
	<div style="direction: ltr; display: flex">
						<a href="<c:url value='/tax/index' />">
							<button class="btn btn-primary" type="submit"
								style="margin-top: 5px">&nbsp&nbsp&nbsp&nbspتم&nbsp&nbsp&nbsp&nbsp</button>
						</a>
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

				$('#tax-management-elements').addClass("show");
				$('#tax-management').addClass("active-color");
				$('#tax-index').addClass("active-color");
				
				
			});
			</script>
