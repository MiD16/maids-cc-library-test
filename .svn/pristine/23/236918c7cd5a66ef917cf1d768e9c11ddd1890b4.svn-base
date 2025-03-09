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
						href="<c:url value='/interestRateSegment/index' />"><span
							class="mr-md-3 mr-2">إدارة الفوائد</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase  "
						href="<c:url value='/interestRateSegment/index' />"><span
							class="mr-md-3 mr-2"> نسب فوائد شرائح العملات</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>

					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>
								<c:if test="${ interestRateSegment.id==null}">
							إضافة شريحة نسبة  فائدة 
							</c:if> <c:if test="${ interestRateSegment.id!=null}">
							تعديل شريحة نسبة الفائدة 
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
					<c:if test="${ interestRateSegment.id==null}">
						<strong class="card-title"> إضافة نسبة فائدة </strong>
					</c:if>
					<c:if test="${ interestRateSegment.id!=null}">


						<strong> تعديل نسبة الفائدة <span style="color: #d1a923">
						</span>
						</strong>
					</c:if>
				</div>
				<div class="card-body">


					<!-- non customer individual search criteria  -->


					<form class="needs-validation" novalidate method="post" id="form"
						name="form"
						<c:if test="${ interestRateSegment.id!=null}">
						action="${pageContext.request.contextPath}/interestRateSegment/update/save"
							</c:if>
						<c:if test="${ interestRateSegment.id==null}">
						action="${pageContext.request.contextPath}/interestRateSegment/create/save"
							</c:if>
						modelAttribute="interestRateSegment">


						<input id="id" name="id" type="hidden" class="form-control "
							value="${interestRateSegment.id}"> <input id="isDeleted"
							name="isDeleted" type="hidden" class="form-control "
							value="${interestRateSegment.isDeleted}">

						<div class="row">

							<div class="form-group col-md-6">
								<label for="interestRate"> نسبة الفائدة *</label> <select
									required class="form-control select2" id="interestRate"
									name="interestRate">
									<option value="" hidden>إختر نسبة الفائدة</option>

									<c:forEach var="ind" items="${interestRateList}">
										<c:if
											test="${interestRateSegment.id!=null && interestRateSegment.interestRate.id==ind.id}">
											<option selected value="${ind.id}"> ${ind.interest.descriptionA}/${ind.currency.nameA}/%${ind.rateValue}</option>
										</c:if>
										<c:if
											test="${interestRateSegment.id==null || interestRateSegment.interestRate.id!=ind.id}">
											<option value="${ind.id}"> ${ind.interest.descriptionA}/${ind.currency.nameA}/%${ind.rateValue} </option>
										</c:if>
									</c:forEach>


								</select>
								<div class="invalid-feedback">هذا الحقل مطلوب</div>


							</div>



							<div class="form-group col-md-6">
								<label for="currencySegments"> شريحة العملة *</label> <select
									required class="form-control select2" id="currencySegments"
									name="currencySegments">
									<option value="" hidden>إختر شريحة العملة</option>

									<c:forEach var="ind" items="${currencySegmentsList}">
										<c:if
											test="${interestRateSegment.id!=null && interestRateSegment.currencySegments.id==ind.id}">
											<option selected value="${ind.id}">${ind.currency.iso} <span
													class="input-money">${ind.toSeg}</span> إلى
												${ind.currency.iso} <span class="input-money">${ind.fromSeg}
												</span> من

											</option>
										</c:if>
										<c:if
											test="${interestRateSegment.id==null || interestRateSegment.currencySegments.id!=ind.id}">
											<option value="${ind.id}">${ind.currency.iso} <span
													class="input-money">${ind.toSeg}</span> إلى
												${ind.currency.iso} <span class="input-money">${ind.fromSeg}
												</span> من

											</option>
										</c:if>
									</c:forEach>


								</select>
								<div class="invalid-feedback">هذا الحقل مطلوب</div>


							</div>



							<div class="form-group col-md-6">
								<label for="rate">نسبة الفائدة *</label> <input id="rate"
									name="rate" type="text" class="form-control  input-percent"
									value="${interestRateSegment.rate}" required>

								<div class="invalid-feedback">هذا الحقل مطلوب</div>
							</div>






							<div class="form-group  col-md-6">
								<label for="note">ملاحظات</label>
								<textarea class="form-control" name="note" id="note" rows="4">${interestRateSegment.note}</textarea>

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
		$('.input-percent').mask("#0%", {
			reverse : true
		});
		$(document).ready(function() {

			$('#interest-management-elements').addClass("show");
			$('#interest-management').addClass("active-color");
			$('#interest-rate-segments-index').addClass("active-color");

		});

		(function() {
			'use strict';
			window
					.addEventListener(
							'load',
							function() {
								// Fetch all the forms we want to apply custom Bootstrap validation styles to
								var forms = document
										.getElementsByClassName('needs-validation');
								// Loop over them and prevent submission
								var validation = Array.prototype.filter
										.call(
												forms,
												function(form) {
													form
															.addEventListener(
																	'submit',
																	function(
																			event) {

																		if (form
																				.checkValidity() === false) {
																			event
																					.preventDefault();
																			event
																					.stopPropagation();
																		} else {
																			document.forms["form"]["rate"].value = document.forms["form"]["rate"].value
																					.replace(
																							'%',
																							'');

																		}

																		form.classList
																				.add('was-validated');

																	}, false);
												});
							}, false);
		})();
	</script>