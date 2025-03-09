<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/layout/header.jsp"%>

<style>
.select2 {
	width: 100% !important
}
</style>
<div class=".container-nav    ">
	<div class="row " style="border-bottom: 1px solid #e9ecef;">
		<div class="col-auto col-md-10  ">
			<nav aria-alabel="breadcrumb " class="second ">
				<ol class="breadcrumb indigo lighten-6 first  px-md-4"
					style="background-color: #ffffff00">
						<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase  "
						href="<c:url value='/currencySegments/index' />"><span
							class="mr-md-3 mr-2">إدارة الفوائد</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase  "
						href="<c:url value='/currencySegments/index' />"><span
							class="mr-md-3 mr-2">شرائح العملات</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>

					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>
							تفاصيل الشريحة 
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
				<div class="card-header">
					<strong> تفاصل الشريحة -<span style="color: #d1a923">
							${currencySegment.segDesc }</span>
					</strong>
				</div>
				<div class="card-body">

					<div class="row">

	<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">نوع الفائدة
								&nbsp :</div>
							<div class="col-md-6">${currencySegment.interestType.nameA }</div>
						</div>


						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">عملة الشريحة :</div>
							<div class="col-md-6">${currencySegment.currency.nameA }</div>
						</div>
					
					


	<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">الحد 
								الأدنى :</div>
							<div class="col-md-6"> ${currencySegment.currency.iso } <span  class="input-money"> ${currencySegment.fromSeg}</span> </div>
						</div>

						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label"> الحد
								الأعلى :</div>
							<div class="col-md-6"> ${currencySegment.currency.iso } <span  class="input-money"> ${currencySegment.toSeg}</span></div>
						</div>




<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label"> وصف
								الشريحة :</div>
							<div class="col-md-6"> ${currencySegment.segDesc }</div>
						</div>
					


						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">الملاحظات :</div>
							<div class="col-md-6">
								<c:if test="${currencySegment.note!=''}">
							${currencySegment.note }
							
							
							</c:if>
								<c:if test="${currencySegment.note==null}">
							--
							
							
							</c:if>


							</div>
						</div>
					</div>





<div style="direction: ltr;display: flex">
				<a href="<c:url value='/currencySegments/index' />">
			<button class="btn btn-primary" type="submit"
								style="margin-top: 5px">&nbsp&nbsp&nbsp&nbspتم&nbsp&nbsp&nbsp&nbsp</button>
					</a>
					</div>


				</div>
				<!-- .card-body -->
			</div>

			<!-- end section -->

			<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>
			<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>



			<script>
				$(document).ready(
						function() {

							$('#interest-management-elements').addClass("show");
							$('#interest-management').addClass("active-color");
							$('#currency-segments-index').addClass("active-color");

						});

				//alert(dateString)
			</script>