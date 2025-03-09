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
<li class="breadcrumb-item"><a href="<c:url value="/report/index"/>">التقارير
				</a></li>
		<li class="breadcrumb-item"><a href="<c:url value="#"/>">&nbsp
				تقرير حول العمليات </a></li>
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

		<c:if test="${opList.isEmpty() }">
			<center style="padding: 0px">
				<img src="<c:url value="/assets/images/box2.gif"/>" alt="gov_logo"
					class="col-sm-3 col-lg-3 col-md-3"
					style="margin-top: 0px; margin-left: 50px; height: 400px; width: 400px;" />
				<div
					style="color: #818181; margin-top: 0px; font-size: 23px; margin-left: 45px;">
					لا يوجد بيانات لعرضها !!</div>
			</center>
		</c:if>
		<c:if test="${!opList.isEmpty() }">
			<div class="row">
				<div class="card col-sm-12 col-md-12 col-lg-12">

					<div class="card-body">

						<h4 class="card-title">العمليات</h4>


						<div class="table-responsive">
							<table class="table  table-striped" id ="datatable1">
								<thead>
									<tr>
										<th class="border-top-0 ">#</th>
										<th class="border-top-0 ">العنوان</th>
										<th class="border-top-0 " style="min-width: 8vw;">نوع العملية</th>
										<th class="border-top-0" style="min-width: 9vw;">الجهة</th>
										<th class="border-top-0">المدينة</th>
										<th class="border-top-0">رقم العملية</th>
										<th class="border-top-0" style="min-width: 8vw;">مكان الجلسة</th>
										<th class="border-top-0" style="min-width: 9vw;">توقيت الجلسة</th>
										<th class="border-top-0" style="min-width: 8vw;">صنف العملية</th>
										<th class="border-top-0" style="min-width: 9vw;">تاريخ الإنتهاء</th>
										<th class="border-top-0" style="min-width: 9vw;">الرسوم النهائية</th>
										<th class="border-top-0" style="min-width: 9vw;">التأمينات الأولية</th>
										<th class="border-top-0" style="min-width: 9.5vw;">التأمينات المؤقتة</th>
										<th class="border-top-0" style="min-width: 9vw;">مدة إنجاز التعهد</th>



										<th class="border-top-0" style="min-width: 10vw;">قيمة دفتر الشروط</th>
										<th class="border-top-0" style="min-width: 13vw;">مدة إلتزام العارض بعرضه</th>
										<th class="border-top-0" style="min-width: 16vw;">مدة إلتزام العارض الفائز بعرضه</th>
										<th class="border-top-0" style="min-width: 8vw;">وصف العملية</th>
										<th class="border-top-0" style="min-width: 8vw;">طريقة التقديم</th>

										<th class="border-top-0" style="min-width: 13vw;">إعلان طلب عرض داخلي</th>
										<th class="border-top-0" style="min-width: 15vw;">دفتر الشروط الحقوقية والمالية</th>
										<th class="border-top-0" style="min-width: 12vw;">دفتر الشروط الفنية</th>

										

									</tr>
								</thead>
								<tbody>
									<c:forEach var="op" items="${opList}">
										<tr>
											<td>${op.id}</td>

	<td>
											
										${op.name}
											
											</td>


										
											<td>${op.operationType.nameArabic}</td>
											<td>${op.govEntity.name}</td>
											<td>${op.city.nameArabic}</td>
											<td>${op.operationNumber}</td>
											<c:if
												test="${!op.operationType.nameArabic.equals('طلب عروض') }">
												<td>${op.place}</td>
												<td>${op.time}</td>
											</c:if>


											<c:if
												test="${op.operationType.nameArabic.equals('طلب عروض') }">
												<td>--</td>
												<td>--</td>
											</c:if>

											<td>${op.operationCategory.nameArabic}</td>
											<td>${op.endDate}</td>
											<td>${op.finalFee}</td>
											<td>${op.primaryInsurances}
												${op.currencyPrimary.nameArabic}</td>

											<td>${op.temporaryInsurances}
												${op.currencytemporary.nameArabic}</td>
											<td>${op.completionPeriod}</td>
											<td>${op.specificationSheetPrice}
												${op.currency.nameArabic}</td>



											<td>${op.commitmentPeriod}</td>

											<td>${op.winnerCommitmentPeriod}</td>




											<td>
											
											
											<c:if test="${op.description==null }">
											 <i class="btn fa fa-eye" title="تفاصيل"
												style="font-size: 20px; color: #26619C"
												onclick="infoAlert('وصف المشروع','لايوجد وصف للمشروع','تم')"></i>
												</c:if>
												
												 <c:if test="${op.description!=null }">
												  <i class="btn fa fa-eye" title="تفاصيل"
												style="font-size: 20px; color: #26619C"
												onclick="infoAlert('وصف المشروع','${op.description}','تم')"></i>
												 
												</c:if>
												
												</td>



											<td>
											
											
											<c:if test="${op.submissionProcess==null }">
													<i class="btn fa fa-eye" title="تفاصيل"
														style="font-size: 20px; color: #26619C"
														onclick="infoAlert('طريقة التقديم','لم يتم وضع طريقة للتقديم','تم')"></i>

												</c:if> <c:if test="${op.submissionProcess!=null }">
													<i class="btn fa fa-eye" title="تفاصيل"
														style="font-size: 20px; color: #26619C"
														onclick="infoAlert('طريقة التقديم','${op.submissionProcess}','تم')"></i>

												</c:if></td>



											<td><a
												href="<c:url value="${op.annoncingRequesDocumentt.path }" />"
												download> <i class="btn fa fa-download" title="تنزيل"
													style="font-size: 20px; color: #26619C"></i>


											</a></td>

											<td><a
												href="<c:url value="${op.finncialSheetDocument.path }" />"
												download> <i class="btn fa fa-download" title="تنزيل"
													style="font-size: 20px; color: #26619C"></i>


											</a></td>

											<c:if
												test="${op.operationType.nameArabic.equals('طلب عروض') }">
												<td><a
													href="<c:url value="${op.technicalSheetDocument.path}" />"
													download> <i class="btn fa fa-download" title="تنزيل"
														style="font-size: 20px; color: #26619C"></i>


												</a></td>
											</c:if>

											<c:if
												test="${!op.operationType.nameArabic.equals('طلب عروض') }">
												<td><a> <i class="btn fa fa-download" title="تنزيل"
														style="font-size: 20px; color: #616161"></i>


												</a></td>
											</c:if>
											
											
										</tr>

									</c:forEach>

								</tbody>
							</table>
						</div>
					</div>
				</div>

			</div>
		</c:if>

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
</div>
<!-- ============================================================== -->
<!-- End Page wrapper  -->
<!-- ============================================================== -->
<div class="clear"></div>

</div>
<script>
	
</script>
<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
<script type="text/javascript">
	$(document).ready(function() {
		$('#reportDivID').addClass("active");
		const date2=formatDate(new Date()) ;


			    document.title="تقرير حول العمليات"+" ( " + date2 +" )";
	});


	function padTo2Digits(num) {
		  return num.toString().padStart(2, '0');
		}

	function formatDate(date) {
		  return [
		    date.getFullYear(),
		    padTo2Digits(date.getMonth() + 1),
		    padTo2Digits(date.getDate()),
		  ].join('-');
		}
</script>

