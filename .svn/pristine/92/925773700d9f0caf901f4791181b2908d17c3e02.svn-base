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
						href="<c:url value='/subpoena/index' />"><span
							class="mr-md-3 mr-2"> طلبات الاستدعاء</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase  "
						href="<c:url value='/subpoena/index' />"><span
							class="mr-md-3 mr-2">استعراض طلبات الاستدعاء</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>

					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>
								 حذف تفاصيل طلب الاستدعاء </span></a></li>
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
					<strong>  حذف تفاصيل الطلب -<span style="color: #d1a923">
							${subpoenaRequestDetails.nameA }</span>
					</strong>
				</div>
				<div class="card-body">

					<div class="row">

<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">الاسم باللغة الأساسية :</div>
							<div class="col-md-6">${subpoenaRequestDetails.nameA }</div>
						</div>
						
						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">الاسم باللغة الثانوية :</div>
							<div class="col-md-6">${subpoenaRequestDetails.nameB }</div>
						</div>
						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">نوع طلب الاستدعاء &nbsp :</div>
							<div class="col-md-6">${subpoenaRequestDetails.subpoenaRequest.indSubpoenaRequest.nameA }</div>
						</div>

						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">طلب الاستدعاء &nbsp &nbsp &nbsp :</div>
							<div class="col-md-6">${subpoenaRequestDetails.subpoenaRequest.nameA }</div>
						</div>


						


						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">المقدمة  :</div>
							<div class="col-md-6">
								<c:if test="${subpoenaRequestDetails.intro!=''}">
							${subpoenaRequestDetails.intro }
							
							
							</c:if>
								<c:if test="${subpoenaRequestDetails.intro==null}">
							--
							
							
							</c:if>


							</div>
						</div>
						
						
							<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label" >البيان   :   </div>
							<div class="col-md-6">
								<c:if test="${subpoenaRequestDetails.content!=''}">
							${subpoenaRequestDetails.content }
							
							
							</c:if>
								<c:if test="${subpoenaRequestDetails.content==null}">
							--
							
							
							</c:if>


							</div>
						</div>
					</div>
					<hr>
					<h6 class="card-text" style="color: #d1a923">ميزات الطلب :</h6>
					<div class="row">


						<div class="form-group col-md-6">
							<label for="residentFlag" class="detail-label">يحتاج الى رقم حساب العميل </label>
							<div
								class="custom-control custom-checkbox form-control no-border">
								<c:if test="${subpoenaRequestDetails.accountNumFlag==1}">
									<input disabled type="checkbox" value="1" checked
										class="custom-control-input form-control"
										id="accountNumFlag" name="accountNumFlag">
								</c:if>
								<c:if test="${ subpoenaRequestDetails.accountNumFlag==0}">
									<input disabled type="checkbox" value="1"
										class="custom-control-input form-control"
										id="accountNumFlag" name="accountNumFlag">
								</c:if>

								<label class="custom-control-label" for="accountNumFlag">
									الطلب يحتاج الى رقم حساب العميل ام لا </label>
							</div>
						</div>


						<div class="form-group col-md-6">
							<label for="residentFlag" class="detail-label">يحتاج الى الفرع  </label>
							<div
								class="custom-control custom-checkbox form-control no-border">
								<c:if test="${subpoenaRequestDetails.branchFlag==1}">
									<input disabled type="checkbox" value="1" checked
										class="custom-control-input form-control"
										id="branchFlag" name="branchFlag">
								</c:if>
								<c:if test="${ subpoenaRequestDetails.branchFlag==0}">
									<input disabled type="checkbox" value="1"
										class="custom-control-input form-control"
										id="branchFlag" name="branchFlag">
								</c:if>

								<label class="custom-control-label" for="branchFlag">
									الطلب يحتاج الى الفرع ام لا </label>
							</div>
						</div>


						<div class="form-group col-md-6">
							<label for="residentFlag" class="detail-label">يحتاج الى العميل </label>
							<div
								class="custom-control custom-checkbox form-control no-border">
								<c:if test="${subpoenaRequestDetails.customerFlag==1}">
									<input disabled type="checkbox" value="1" checked
										class="custom-control-input form-control"
										id="customerFlag" name="customerFlag">
								</c:if>
								<c:if test="${ subpoenaRequestDetails.customerFlag==0}">
									<input disabled type="checkbox" value="1"
										class="custom-control-input form-control"
										id="customerFlag" name="customerFlag">
								</c:if>

								<label class="custom-control-label" for="customerFlag">
									الطلب يحتاج الى العميل ام لا </label>
							</div>
						</div>


					</div>


					


<div style="direction: ltr;display: flex">
				
					<button onclick="callDangerAlert('delete','تأكيد الحذف','متأكد من حذف  تفاصيل طلب الاستدعاء ',
												'/subpoena/save/delete?id=${subpoenaRequestDetails.id}')" class="btn btn-primary-red" type="submit" style="margin-top: 5px" >&nbsp&nbsp&nbsp&nbsp حذف &nbsp&nbsp&nbsp&nbsp</button>
					
					</div>

					
					
					
				</div>
				<!-- .card-body -->
			</div>

			<!-- end section -->

			<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>
			<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>



			<script>
				$(document).ready(function() {
					$('#subpoena-request-details-management-elements').addClass("show");
					$('#subpoena-request-details-management').addClass("active-color");
					$('#subpoena-request-details-index').addClass("active-color");

				});

			
				//alert(dateString)
			</script>