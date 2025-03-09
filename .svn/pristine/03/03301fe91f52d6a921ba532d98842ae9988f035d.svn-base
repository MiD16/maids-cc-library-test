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
						href="<c:url value='/dateUnits/index' />"><span
							class="mr-md-3 mr-2">إدارة الفترات</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase  "
						href="<c:url value='/dateUnits/index' />"><span
							class="mr-md-3 mr-2">استعراض وحدات التاريخ</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>

					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>
								<c:if test="${ dateUnit.id==null}">
							إضافة وحدة تاريخ 
							</c:if> <c:if test="${ dateUnit.id!=null}">
							تعديل وحدة التاريخ 
							</c:if>
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
			<p class="card-text"></p>
			<div class="card shadow">
				<div class="card-header">
					<c:if test="${ dateUnit.id==null}">
						<strong class="card-title"> إضافة وحدة تاريخ </strong>
					</c:if>
					<c:if test="${ dateUnit.id!=null}">
						<strong> تعديل وحدة التاريخ -<span style="color: #d1a923">
								${dateUnit.nameA }/${dateUnit.nameB } </span>
						</strong>
					</c:if>
				</div>
				<div class="card-body">
					<!-- non customer individual search criteria  -->
					<form class="needs-validation" novalidate method="post"
						<c:if test="${ dateUnit.id!=null}">
						action="${pageContext.request.contextPath}/dateUnits/update/save"
							</c:if>
						<c:if test="${ dateUnit.id==null}">
						action="${pageContext.request.contextPath}/dateUnits/create/save"
							</c:if>
						modelAttribute="dateUnit">
						<input id="id" name="id" type="hidden" class="form-control "
							value="${dateUnit.id}"> <input id="isDeleted"
							name="isDeleted" type="hidden" class="form-control "
							value="${dateUnit.isDeleted}">
<input id="id" name="id" type="hidden" class="form-control "
							value="${dateUnit.id}">
							 <input id="isEnabledFlag"
							name="isEnabledFlag" type="hidden" class="form-control "
							value="${dateUnit.isEnabledFlag}">

						<div class="row">
							<div class="form-group  col-md-6">
								<label for="nameA">الاسم باللغة الأساسية *</label> <input
									id="nameA" name="nameA" type="text"
									class="form-control " required value="${dateUnit.nameA}">
								<div class="invalid-feedback">هذا الحقل مطلوب</div>
							</div>
						
							<div class="form-group  col-md-6">
								<label for="nameB">الاسم باللغة الثانوية *</label> <input
									id="nameB" name="nameB" type="text"
									class="form-control " required value="${dateUnit.nameB}">
								<div class="invalid-feedback">هذا الحقل مطلوب</div>
							</div>
							
							<div class="form-group  col-md-6">
								<label for="note">ملاحظات</label>
								<textarea class="form-control" name="note" id="note" rows="4">${dateUnit.note}</textarea>
							</div>
						</div>
						<div style="direction: ltr; display: flex">
							<button class="btn btn-primary" type="submit"
								style="margin-top: 5px">حفظ</button>
						</div>
					</form>
				</div>

			</div>
		</div>







		<div class="clear"></div>
	</div>
	<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
	<script>
	$(document).ready(
			function() {
				$('#periods-management-elements').addClass("show");
				$('#periods-management').addClass("active-color");
				$('#date-units-index').addClass("active-color");
			});

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
			window.addEventListener('load',
					function() {
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