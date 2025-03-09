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
	
	<c:if test="${fromHolidays==1 }">
				
				<ol class="breadcrumb indigo lighten-6 first  px-md-4"
					style="background-color: #ffffff00">
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase  " href="<c:url value='/holidays/index?fromHolidays=${fromHolidays }' />"><span
							class="mr-md-3 mr-2">إدارة العطل</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase " href="<c:url value='/holidays/index?fromHolidays=${fromHolidays }' />"><span>إستعراض
								 ايام العطل </span></a></li>
								 
								 <li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>
								 تفاصيل العطلة  </span></a></li>
				</ol>
				
				</c:if>
			<c:if test="${fromHolidays==0}">
		
			<ol class="breadcrumb indigo lighten-6 first  px-md-4"
					style="background-color: #ffffff00">
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase  " href="<c:url value='/indHolidays/index' />"><span
							class="mr-md-3 mr-2">إدارة العطل</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase " href="<c:url value='/indHolidays/index' />"><span>إستعراض
								 العطل الثابتة </span></a></li>
					
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase " href="<c:url value='/holidays/index/byIndholiday?indId=${holidays.indHolidays.id}' />"><span>إستعراض
								أيام العطل </span></a></li>			 
				 <li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>
								 تفاصيل العطلة  </span></a></li>
				</ol>
		
		</c:if>		
				
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
					<strong>  تفاصل العطلة -<span style="color: #d1a923">
							${holidays.nameA }</span>
					</strong>
				</div>
				<div class="card-body">

					<div class="row">
<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">تاريخ العطلة:</div>
							<div class="col-md-6">${holidays.holidayDate}</div>
						</div>
						
						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">يوم العطلة:</div>
							<div class="col-md-6">${holidays.holidayDay}</div>
						</div>
<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">الاسم باللغة الأساسية :</div>
							<div class="col-md-6">${holidays.nameA }</div>
						</div>
						
						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">الاسم باللغة الثانوية :</div>
							<div class="col-md-6">${holidays.nameB }</div>
						</div>
					



						


						<div class="form-group col-md-6 row">
							<div class="form-group col-md-4 detail-label">ملاحظات  :</div>
							<div class="col-md-6">
								<c:if test="${holidays.note!=''}">
							${holidays.note }
							
							
							</c:if>
								<c:if test="${holidays.note==null}">
							--
							
							
							</c:if>


							</div>
						</div>
						
						
							
					</div>
					
					



<div style="direction: ltr;display: flex">
<c:if test="${fromHolidays==0}">
					<a href="<c:url value='/holidays/index/byIndholiday?indId=${holidays.indHolidays.id}' />">

</c:if>

<c:if test="${fromHolidays==1}">
					<a href="<c:url value='/holidays/index?fromHolidays=${fromHolidays }' />">

</c:if>
					<button class="btn btn-primary" type="submit" style="margin-top: 5px" >&nbsp&nbsp&nbsp&nbspتم&nbsp&nbsp&nbsp&nbsp</button>
					</a>
					</div>

					
					
					
				</div>
				<!-- .card-body -->
			</div>

			<!-- end section -->

			<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>
			<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>



			<script>
				$(document).ready(function() {
					if(${fromHolidays==1})
					{
						$('#holidays-management-elements').addClass("show");
						$('#holidays-management').addClass("active-color");
						$('#holidays-index').addClass("active-color");
					}
				
					
					else
						{
						$('#holidays-management-elements').addClass("show");
						$('#holidays-management').addClass("active-color");
						$('#ind-holidays-index').addClass("active-color");
						}
				});

			
				//alert(dateString)
			</script>