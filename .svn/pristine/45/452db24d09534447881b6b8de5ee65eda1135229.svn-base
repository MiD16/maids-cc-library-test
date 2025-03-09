<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/layout/header.jsp"%>
<%@include file="/WEB-INF/jsp/layout/left-sidebar.jsp"%>
<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>

 <style>
  .testcolor{
 
   -webkit-print-color-adjust: exact; 
   }
   body{
  -webkit-print-color-adjust:exact !important;
  print-color-adjust:exact !important;
}
 </style>
<div>&nbsp</div>
<div class="d-flex align-items-center"
	style="background-color: #dfe2e5a8; margin-right: 17.4%">
	<ol class="breadcrumb"
		style="background-color: #e4e8ec; margin-top: 5px; margin-right: 8.5%; height: 3vh">
<li class="breadcrumb-item"><a href="<c:url value="/report/index"/>">التقارير
				</a></li>
		<li class="breadcrumb-item"><a href="<c:url value="#"/>">&nbsp
				تقرير حول العارضين </a></li>
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

		<c:if test="${contractorList.isEmpty() }">
			<center style="padding: 0px">
				<img src="<c:url value="/assets/images/box2.gif"/>" alt="gov_logo"
					class="col-sm-3 col-lg-3 col-md-3"
					style="margin-top: 0px; margin-left: 50px; height: 400px; width: 400px;" />
				<div
					style="color: #818181; margin-top: 0px; font-size: 23px; margin-left: 45px;">
					لا يوجد بيانات لعرضها !!</div>
			</center>
		</c:if>
		<c:if test="${!contractorList.isEmpty() }">
			<div class="row">
				<div class="card col-sm-12 col-md-12 col-lg-12">

					<div class="card-body">

						<h4 class="card-title">العارضون</h4>


						<div class="table-responsive">
							<table class="table  table-striped" id="datatable1">
								<thead>
									<tr class="testcolor">
										<th class="border-top-0 ">#</th>
										<th class="border-top-0 ">السجل التجاري</th>
										<th class="border-top-0 " style="min-width: 8vw;">المحافظة</th>
										<th class="border-top-0" style="min-width: 12vw;">تاريخ بداية السجل</th>
										<th class="border-top-0" style="min-width: 12vw;">تاريخ انتهاء السجل</th>

										<th class="border-top-0" style="min-width: 12vw;">تاريخ التسجيل على المنصة</th>
										<th class="border-top-0">نوع الشركة</th>
										<th class="border-top-0" style="min-width: 8vw;">اسم الشركة</th>
										<th class="border-top-0" style="min-width: 9vw;">الفرع الأساسي</th>
										<th class="border-top-0" style="min-width: 8vw;">الفروع</th>
										<th class="border-top-0" style="min-width: 9vw;">اسم المفوض</th>
										<th class="border-top-0" style="min-width: 13vw;">المسمى الوظيفي للمفوض</th>
										<th class="border-top-0" style="min-width: 9vw;">الرقم الوطني</th>
										<th class="border-top-0" style="min-width: 9.5vw;">رقم الهاتف</th>
										<th class="border-top-0" style="min-width: 9vw;">رقم الموبايل</th>







									</tr>
								</thead>
								<tbody>
									<c:forEach var="contractor" items="${contractorList}">
										<tr class="testcolor">
											<td>${contractor.id}</td>



											<td>${contractor.commercialRecord}</td>


											<td>${contractor.city.nameArabic}</td>



											<td>${contractor.startCompanyDate}</td>
											<td>${contractor.endCompanyDate}</td>
											<td>${contractor.registrationDate}</td>

											<td><c:if test="${contractor.companyType==null}">
											--</c:if> ${contractor.companyType.name}</td>
											<td><c:if test="${contractor.companyName==null}">
											--</c:if> ${contractor.companyName}</td>

											<td><c:if test="${contractor.companyMainBranch==null}">
											--</c:if> ${contractor.companyMainBranch}</td>

											<td>
											<c:if test="${contractor.companyBranches==null}">
														<i class="btn fa fa-eye" title="تفاصيل"
												style="font-size: 20px; color: #26619C"
												onclick="infoAlert('فروع الشركة ','لا يوجد فروع للشركة','تم')"></i>
											
											</c:if>
											
											<c:if test="${contractor.companyBranches!=null}">
												<i class="btn fa fa-eye" title="تفاصيل"
												style="font-size: 20px; color: #26619C"
												onclick="infoAlert('فروع الشركة ','${contractor.companyBranches}','تم')"></i>
											

</c:if>
											
								
											</td>


											<td>${contractor.user.first_name}
												${contractor.user.father_name} ${contractor.user.last_name}</td>
											<td><c:if test="${contractor.jobTitle==null}">
											--</c:if> ${contractor.jobTitle}</td>
											<td><c:if test="${contractor.nationalNumber==null}">
											--</c:if> ${contractor.nationalNumber}</td>

											<td><c:if test="${contractor.phoneNumber==null}">
											--</c:if> ${contractor.phoneNumber}</td>
											<td><c:if test="${contractor.user.mobile==null}">
											--</c:if> ${contractor.user.mobile}</td>












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
		const date2=formatDate(new Date()) ;
		
	//	alert(date2.getFullYear());
		//alert(Date.now().toDateString());
		document.title="تقرير حول العارضين"+" ( " + date2 +" )";
		$('#reportDivID').addClass("active");
		


	  
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
<script type="text/javascript">
window.onbeforeunload = function(e) {
	  var dialogText = 'are you sure?';
	  e.returnValue = dialogText;
	  return dialogText;
	};
</script>
