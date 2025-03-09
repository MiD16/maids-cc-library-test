<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/layout/header.jsp"%>


<div class=".container-nav    ">
	<div class="row " style="border-bottom: 1px solid #e9ecef;">
		<div class="col-auto col-md-10  ">
			<nav aria-alabel="breadcrumb " class="second ">
				<ol class="breadcrumb indigo lighten-6 first  px-md-4"
					style="background-color: #ffffff00">
					<li class="breadcrumb-item font-weight-bold "><a
						class="black-text inactive text-uppercase  "
						href="<c:url value='/HomeIndex/index' />"><span
							class="mr-md-3 mr-2">إدارة فهارس النظام</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase"
						href="<c:url value='/HomeIndex/index' />"><span
							class="mr-md-3 mr-2">استعراض الفهارس</span></a><i
						class="fe fe-angle-double-right text-uppercase "
						aria-hidden="true"></i></li>

					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>
						استعراض القيمة المضافة
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
				<div class="col-md-10"></div>
				<div class="col-md-2"
					style="text-align: left; align-content: center">

					<span class="date"> <%@ taglib prefix="fmt"
							uri="http://java.sun.com/jsp/jstl/fmt"%> <jsp:useBean
							id="now" class="java.util.Date" /> <fmt:formatDate
							value="${now}" pattern="yyyy-MM-dd" />
					</span>
				</div>
			</div>

			<!-- .card -->
			<!-- .card -->
			<div class="card my-4">
				<!-- <div class="card-header">
					<strong> فهرس الحالة الاجتماعية </strong>
				</div> -->
				<div class="card-body">
						<form id="addNewIndex"
						
						method="GET" name="addNewIndSocialStatus" modelAttribute="systable">
						<div>
							<div class="row">
												
							
						
								
						
							
											
											
								
								
								
								
							
							
							
							
									<!--  	<c:if test="${tableId ne 'CUSTOMER_STAGE' }">
									<div class="form-group col-md-6">
										<label for="cbCode">الرمز </label> <input type="text"
											value="${sysTable.cbCode}" required name="cbCode" id="cbCode"
											class="form-control">
									</div>


									<div class="form-group col-md-6">
										<label for="placeOrder">ترتيب عرض القيمة</label> <input
											required name="placeOrder" type="text" id="placeOrder"
											onkeypress="return (event.charCode !=8 && event.charCode ==0 || (event.charCode >= 48 && event.charCode <= 57))"
											value="${sysTable.placeOrder}" class="form-control">
									</div></c:if>
-->

									
							
							
							
								
								
								
								<div class="col-md-6">
									<div class="form-group">
										<label for="note">ملاحظات</label>
										<textarea class="form-control" name="note" id="note" readonly
										 rows="4">${sysTable.note}</textarea>
									</div>
								</div>
								

							</div>
						
							
							<div class="row">

							<div class="form-group col-md-12" align="left">
							<a href="<c:url value='/HomeIndex/tableindex?tableId=${tableId}' />">
							<button class="btn btn-primary" type="button"
								
								 id="addIndex">&nbsp
									&nbsp موافق &nbsp &nbsp</button>
							</a>
								
							</div>
						</div>
						</div>
					</form>
				</div>
				<!-- .card-body -->
			</div>
			</div>
			</div>
			</div>
			

			<!-- end section -->

			<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>
			<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
			<script>
				$(document).ready(function() {

					$('#adminManagement-elements').addClass("show");
					$('#adminManagement').addClass("active-color");
					$('#adminIndex').addClass("active-color");

				});
				$('.input-money').mask("#.##0,00", {
					reverse : true
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
				
				$("#example-form").submit(function(e) {
					
					var regex = /[.,\s]/g;
					document.forms["example-form"]["capitalValue"].value = document.forms["example-form"]["capitalValue"].value
							.replace(regex, '');
				});
				
				function validateRequierd(){
		        	var result="true";
		        	if( document.getElementById("nameA").value=="")
		        	{
		        	  	$('label[for="nameA"]').show ()
		        		$('input[id="nameA"]').addClass('error');
		        	  	$('.current').addClass('error');
		        		result=false;
		        	}
		        	if( document.getElementById("nameB").value=="")
		        	{
		        	  	$('label[for="nameB"]').show ()
		        		$('input[id="nameB"]').addClass('error');
		        	  	$('.current').addClass('error');
		        		result=false;
		        	}
		        	/* if( document.getElementById("cbCode").value=="")
		        	{
		        	  	$('label[for="cbCode"]').show ()
		        		$('input[id="cbCode"]').addClass('error');
		        	  	$('.current').addClass('error');
		        		result=false;
		        	} */
		        	if( document.getElementById("isEnabledFlag").value=="")
		        	{
		        	  	$('label[for="isEnabledFlag"]').show ()
		        		$('input[id="isEnabledFlag"]').addClass('error');
		        	  	$('.current').addClass('error');
		        		result=false;
		        	}
		        	/* if( document.getElementById("placeOrder").value=="")
		        	{
		        	  	$('label[for="placeOrder"]').show ()
		        		$('input[id="placeOrder"]').addClass('error');
		        	  	$('.current').addClass('error');
		        		result=false;
		        	} */
		        	
		        	return result;
			  }
				
				
				
			</script>