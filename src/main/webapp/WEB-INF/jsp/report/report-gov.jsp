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
		<li class="breadcrumb-item"><a
			href="<c:url value="#"/>">&nbsp 
				 تقرير حول الجهات الحكومية </a></li>
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
			<div class="col-sm-10 col-md-10 col-lg-10"></div>

			<a href="<c:url value='/gov/create?isMinistry=${isMinistry }'  />">
				<c:if test="${isMinistry == 0 }">
				<div class="  operation-type add-btn " title=" إضافة جهة حكومية جديدة ">
				+ إضافة</div>
				</c:if>
			<c:if test="${isMinistry == 1 }">
				<div class="  operation-type add-btn " title=" إضافة  وزارة  جديدة ">
				+ إضافة</div>
				</c:if>
				

			</a>
		</div>
		 	<c:if test="${govList.isEmpty() }">
						<center style="padding: 0px">
							<img src="<c:url value="/assets/images/box2.gif"/>" alt="gov_logo"
								class="col-sm-3 col-lg-3 col-md-3"
								style="margin-top: 0px; margin-left: 50px; height: 400px; width: 400px;" />
							<div
								style="color: #818181; margin-top: 0px; font-size: 23px; margin-left: 45px;">
								لا يوجد بيانات لعرضها !!</div>
						</center>
	    	</c:if>
	    <c:if test="${!govList.isEmpty() }">
		<div class="row">
			<div class="card col-sm-12 col-md-12 col-lg-12">

				<div class="card-body">
				<c:if test="${isMinistry == 0 }">
				<h4 class="card-title">الجهات الحكومية</h4>
				</c:if>
				
				<c:if test="${isMinistry == 1 }">
				<h4 class="card-title"> الوزارات</h4>
				</c:if>
					
					<!-- <h6 class="card-subtitle">استعراض الجهات الحكومية <code>.table</code></h6> -->
					<div class="table-responsive">
						<table class="table  table-striped" id="datatable1">
							<thead>
								<tr>
									<th class="border-top-0 ">#</th>
									<th class="border-top-0 ">الشعار</th>
									<th class="border-top-0">الاسم</th>
									<th class="border-top-0">الترميز</th>
									<th class="border-top-0">المحافظة</th>
									<c:if test="${isMinistry == 0 }">
										<th class="border-top-0">الوزارة</th>
									</c:if>
									

									<th class="border-top-0">التفاصيل</th>
								
									


								</tr>
							</thead>
							<tbody>
								<c:forEach var="gov" items="${govList}">
									<tr>
										<td>${gov.id}</td>
										
										<div class="popup">
       								    <!-- top bar -->
        								<div class="top-bar">
        								<p class="image-name">img1.png</p>
        							
            								<p class="close-btn" >
                                            	<i class="btn fa fa-times-circle" title="إغلاق" style="font-size:140%;color:#d50000"></i>
											</p>
        								</div>
        								<!-- image -->
        								<img src="<c:url value="#"/>"  class="large-image" alt="">       
								    </div>
								  
								    
								    
										  <td><img alt="logo" class="image" 
											src="<c:url value="${gov.imagePath}" />" width="50"
											height="50px" ></td>

										<td>${gov.name}</td>
										<td>${gov.encode}</td>
										<td>${gov.city.nameArabic}</td>
										<c:if test="${isMinistry == 0 }">
											<td>${gov.ministry.name}</td>
										</c:if>
										
									
										
										
										
										
										<td>
										<i class="btn fa fa-eye" title="تفاصيل" style="font-size: 20px; color: #26619C" onclick="infoAlert('التفاصيل','${gov.info}','تم')"></i>
										</td>
										
									


										



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
		document.title="تقرير الجهات الحكومية"+" ( " + date2 +" )";
	
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

