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
						href="<c:url value='/interestRate/index' />"><span
							class="mr-md-3 mr-2">إدارة الفوائد</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase  "
						href="<c:url value='/interestRate/index' />"><span
							class="mr-md-3 mr-2">نسب الفوائد</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>

					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>
							حذف نسبة الفائدة 
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
					<strong> تفاصل نسبة الفائدة<span style="color: #d1a923">
						</span>
					</strong>
				</div>
				<div class="card-body">

					<div class="row">

	<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label"> الفائدة
								&nbsp :</div>
							<div class="col-md-6">${interestRate.interest.descriptionA }</div>
						</div>


						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">عملة نسبة الفائدة :</div>
							<div class="col-md-6">${interestRate.currency.nameA }</div>
						</div>
					
					


	<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">نسبة 
								الفائدة :</div>
							<div class="col-md-6"> ${interestRate.rateValue } % </div>
						</div>

						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label"> نسبة الجزاء
								 :</div>
							<div class="col-md-6">
							<c:if test="${interestRate.panaltyRate ==null}"> 0</c:if>
							 ${interestRate.panaltyRate} %</div>
						</div>


<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label"> تاريخ
								التطبيق :</div>
							<div class="col-md-6"> ${interestRate.applicationDate }</div>
						</div>
<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label"> فترة
								التطبيق :</div>
							<div class="col-md-6">
							${interestRate.period.accPeriodValue} ${interestRate.period.dateUnitId.nameA}
							
							</div>
						</div>
					

					

						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">الملاحظات :</div>
							<div class="col-md-6">
								<c:if test="${interestRate.note!=''}">
							${interestRate.note }
							
							
							</c:if>
								<c:if test="${interestRate.note==null}">
							--
							
							
							</c:if>


							</div>
						</div>
					</div>





<div style="direction: ltr;display: flex">
					<button onclick="callDangerAlert('delete','تأكيد الحذف','متأكد من حذف  نسبة الفائدة ',
												'/interestRate/save/delete?id=${interestRate.id}')" class="btn btn-primary-red" type="submit" style="margin-top: 5px" >&nbsp&nbsp&nbsp&nbsp حذف &nbsp&nbsp&nbsp&nbsp</button>
					
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