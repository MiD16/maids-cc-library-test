
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
							class="mr-md-3 mr-2"> الأدوار</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
						<c:if test='${role.ID==0}'>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>إضافة دور
								 </span></a></li>
								 </c:if>
								 	<c:if test='${role.ID!=0}'>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>تعديل الدور 
								 </span></a></li>
								 </c:if>
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
					 	<c:if test='${role.ID==0}'>
				<strong class="card-title"> إضافة دور   </strong>
								 </c:if>
					 	<c:if test='${role.ID!=0}'>
				<strong class="card-title">تعديل دور  -   <span style="color: #d1a923">
							${role.role_name_a}.</span>   </strong>
								 </c:if>
					
				
				</div>
				<div class="card-body">


					<!-- non customer individual search criteria  -->

					<div id="nonIndiv" style="display: block">


					
						<form id="form" class="needs-validation" novalidate method="post"
						modelAttribute="role"
							action="${pageContext.request.contextPath}/role/save">
								
											
												<input  id="id" name="ID"
													type="hidden" class="form-control " 
													value="${role.ID}">
											
					<div class="wizard clearfix row">
							<div class="col-md-6">
											<div class="form-group">
													
												<label for="role_name_a"> اسم الدور  *</label>
											
												<input  id="role_name_a" name="role_name_a"
													type="text" class="form-control " required
													value="${role.role_name_a}">
														<div class="invalid-feedback">هذا الحقل مطلوب</div>
											</div></div>
						<div class="col-md-6">
											<div class="form-group">
													
												<label for="role_name_e"> اسم الدور باللغة الثانوية *</label>
											
												<input  id="role_name_e" name="role_name_e"
													type="text" class="form-control " required
													value="${role.role_name_b}">
														<div class="invalid-feedback">هذا الحقل مطلوب</div>
											</div>	</div>
											
												<div class="col-md-6">
											<div class="form-group">
													
												<label for="description_a"> الوصف *</label>
											
												<input  id="description_a" name="description_a"
													type="text" class="form-control " required
													value="${role.description_a}">
														<div class="invalid-feedback">هذا الحقل مطلوب</div>
											</div>	</div>
											
														<div class="col-md-6">
											<div class="form-group">
													
												<label for="description_b">  الوصف باللغة الثانوية *</label>
											
												<input  id="description_b" name="description_b"
													type="text" class="form-control " required
													value="${role.description_b}">
														<div class="invalid-feedback">هذا الحقل مطلوب</div>
											</div>	</div>
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
							
							
				
	
						
						<div class="actions clearfix">
								<ul role="menu" aria-label="Pagination">
								
									<li aria-hidden="false" aria-disabled="false"><button
											type="submit" class="btn mb-2 btn-primary">حفظ</button>
									<%-- 		 	<c:if test='${role.ID!=0}'>
				
								
													<li class="" aria-disabled="false"><a
										href="<c:url value='/roleaction/index?id=${role.ID}' />"
										role="menuitem">تعديل صلاحيات الدور</a></li> </c:if> --%>
								</ul>
							</div>
					
					</div>
					
					</form>

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
/* function toggleEnabled(checkbox) {
    var isEnabledInput = document.getElementById('is_enabledInput');
    isEnabledInput.value = checkbox.checked ? '1' : '0';
}
 */
$('.drgpicker').daterangepicker({
	singleDatePicker : true,
	timePicker : false,
	showDropdowns : true,
	locale : {
		format : 'YYYY/MM/DD'
	}
});
(function() {
	'use strict';
	window.addEventListener('load', function() {
		// Fetch all the forms we want to apply custom Bootstrap validation styles to
		var forms = document
				.getElementsByClassName('needs-validation');
		// Loop over them and prevent submission
		var validation = Array.prototype.filter.call(forms,
				function(form) {
					form.addEventListener('submit', function(
							event) {
						
					
						if (form.checkValidity() === false) {
							event.preventDefault();
							event.stopPropagation();
						}
						
						form.classList.add('was-validated');
						
					
						
						
					}, false);
				});
	}, false);
})();

</script>

<script>
			$(document).ready(function() {

				$('#role-management-elements').addClass("show");
				$('#role-management').addClass("active-color");
				$('#role-index').addClass("active-color");
				
				
			});
			</script>
