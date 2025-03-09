<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/layout/header.jsp"%>
<%@include file="/WEB-INF/jsp/layout/left-sidebar.jsp"%>
<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>


<div>&nbsp</div>
<div class="d-flex align-items-center"
	style="background-color: #dfe2e5a8; margin-right: 17.4%">
	<ol class="breadcrumb"
		style="background-color: #e4e8ec; margin-top: 5px; margin-right: 8.5%; height: 3vh">
		<li class="breadcrumb-item"><a
			href="<c:url value="/notifi/index"/>">كافة الاشعارات</a></li>
		<li class="breadcrumb-item"><a
			href="<c:url value="/op/details?id=${op.id}&redirect=0"/>">&nbsp
				تخصيص الاشعارات </a></li>


	</ol>
</div>
<div class="page-wrapper">
	<!-- ============================================================== -->
	<!-- Bread crumb and right sidebar toggle -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- Bread crumb and right sidebar toggle -->
	<!-- ============================================================== -->

	<!-- ============================================================== -->
	<!-- End Bread crumb and right sidebar toggle -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- Container fluid  -->
	<!-- ============================================================== -->
	<div class="container-fluid">

		<!-- ============================================================== -->
		<!-- Start Page Content -->
		<!-- ============================================================== -->
		<div class="row">
			<div class="card col-sm-12 col-md-12 col-lg-12">
				<form:form method="post"
					action="${pageContext.request.contextPath}/customNoti/save"
					enctype="multipart/form-data">

					<div class=" form-group  row" style="margin-top: 5vh">
						<label class="form-label col-sm-2 col-md-2 col-lg-2" >الجهات
							الحكومية</label>
						<div class="col-sm-6 col-md-6 col-lg-6">

							<select id="govEntities" name="govEntities"
								class="form-control js-example-basic-multiple" dir="rtl"
								size="4" multiple="multiple">
								<c:forEach var="gov" items="${govList}">
									<c:if test="${nameGov.indexOf(gov.name)!=-1}">
										<option selected value="${gov.name}">${gov.name}</option>
									</c:if>
									<c:if test="${nameGov.indexOf(gov.name)==-1 }">
										<option value="${gov.name}">${gov.name}</option>
									</c:if>
								</c:forEach>

							</select>


						</div>
						<div class="invalid-feedback">الرجاء إدخال رقم</div>
						<div class="valid-feedback"></div>


					</div>

				
					<div class=" form-group  row">
						<label class="form-label col-sm-2 col-md-2 col-lg-2">تصنيف
							العمليات</label>
						<div class="col-sm-6 col-md-6 col-lg-6">

							<select  id="operationCategories"
								name="operationCategories"
								class="form-control js-example-basic-multiple" dir="rtl"
								size="4" multiple="multiple">
							
								<c:forEach var="categories" items="${operationCategories}">



									<c:if
										test="${nameCategoriesList.indexOf(categories.nameEnglish)!=-1 }">
										<option selected value="${categories.nameEnglish}">${categories.nameArabic}</option>
									</c:if>
									<c:if
										test="${nameCategoriesList.indexOf(categories.nameEnglish)==-1 }">
										<option value="${categories.nameEnglish}">${categories.nameArabic}</option>
									</c:if>
								</c:forEach>
							</select>


						</div>
						<div class="invalid-feedback">الرجاء إدخال رقم</div>
						<div class="valid-feedback"></div>


					</div>
						<div class=" form-group  row">
						<label class="form-label col-sm-2 col-md-2 col-lg-2">انواع
							العمليات</label>
						<div class="col-sm-6 col-md-6 col-lg-6">

							<select id="operationTypes" name="operationTypes"
								class="form-control js-example-basic-multiple" dir="rtl"
								size="4" multiple="multiple">
								<c:forEach var="type" items="${operationTypes}">
									<c:if test="${nameTypesList.indexOf(type.nameEnglish)!=-1 }">
										<option selected value="${type.nameEnglish}">${type.nameArabic}</option>
									</c:if>
									<c:if test="${nameTypesList.indexOf(type.nameEnglish)==-1 }">
										<option value="${type.nameEnglish}">${type.nameArabic}</option>
									</c:if>
								</c:forEach>
							</select>


						</div>
						<div class="invalid-feedback">الرجاء إدخال رقم</div>
						<div class="valid-feedback"></div>


					</div>
											<sec:authorize access="hasPermission('customize','update')">
					<div class=" form-group  row" style="margin-top: 2%">
						<label class="form-label col-sm-2 col-md-2 col-lg-2"> </label>
						<div class="col-sm-6 col-md-6 col-lg-6">


							<div class="form-group">
								<button type="submit" value="submit"
									class="btn blue-btn btn-primary" style="width: 75px">تخصيص</button>
							</div>

						</div>
					</div>
</sec:authorize>


				</form:form>

			</div>

		</div>








	</div>
	<!-- ============================================================== -->
	<!-- End Container fluid  -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- footer -->
	<!-- ============================================================== -->
	<!--<footer class="footer"> © 2021 Material Pro Admin by <a href="https://www.wrappixel.com/">wrappixel.com </a>
            </footer>-->
	<!-- ============================================================== -->
	<!-- End footer -->
	<!-- ============================================================== -->

	<!-- ============================================================== -->
	<!-- End Page wrapper  -->
	<!-- ============================================================== -->
	<div class="clear"></div>
	<script type="text/javascript">

$(document).ready( function(){
	
	 $('#NotiDivID').addClass("active");
	 
	});
	

</script>
	<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>

	<script type="text/javascript">


		function selectAll(selectTag) {

			 for (var i = 0; i < selectTag.options.length; i++) { 
				 selectTag.options[i].selected = true; 
				 alert(selectTag)
	        }
			 
			/*if (selectTag.value == "الكل") {
				

				selectTag.options[0].selected = false;
				$('#operationCategories option').prop('selected', true);
			}*/
		}
	</script>