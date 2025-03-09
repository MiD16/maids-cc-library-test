
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
						class="black-text inactive text-uppercase  " href="#"><span
							class="mr-md-3 mr-2"> الصلاحيات</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>استعراض  صلاحية
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
				<div class="col-md-10">
				
				</div>
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
					 
				<strong class="card-title"> استعراض  صلاحية -   <span style="color: #d1a923">
							${action.action_name_ar}.</span>    </strong>
							
					
					
				
				</div>
				<div class="card-body">


					<!-- non customer individual search criteria  -->

					<div id="nonIndiv" style="display: block">

			<form:form method="post" 
					name="formCreate"
						action="${pageContext.request.contextPath}/action/edit"
					modelAttribute="action">
							<input type="hidden" value="${action.ID}" name="ID">
			
				<input type="hidden" value="${role.ID}" name="role_id">
			
							<input type="hidden" value="${action.indCatigoryModule.id}"
								name="indCatigoryModule">
							<input type="hidden" value="${action.indCreditDebitCatigory.id}"
								name="indCreditDebitCatigory">
							<input type="hidden" value="${action.description}"
								name="description">
							<input type="hidden" value="${action.subpoenaReqFlag}"
								name="subpoenaReqFlag">
							<input type="hidden" value="${action.isTransactionFlag}"
								name="isTransactionFlag">
							<input type="hidden" value="${action.afterflag}" name="afterflag">
							<input type="hidden" value="${action.period.id}" name="period">

			
											
										
											
					<div class="wizard clearfix row">
						
						<div class="col-md-6">
											<div class="form-group">
													
												<label for="action_name_ar"> اسم الصلاحية باللغة العربية *</label>
											
												<input readonly id="action_name_ar" name="action_name_ar"
													type="text" class="form-control " required
													value="${action.action_name_ar}">
											</div>	</div>
											
											<div class="col-md-6">
											<div class="form-group">
													
												<label for="action_name_en"> اسم الصلاحية  باللغة الثانوية *</label>
											
												<input readonly id="action_name_en" name="action_name_en"
													type="text" class="form-control " readonly
													value="${action.action_name_en}">
											</div>	</div>		
																					
			
					
					</div>
					
					</form:form>

						<!-- non customer individual search criteria  -->


			

					</div>
	<div style="direction: ltr; display: flex">
						<a href="<c:url value='/action/index' />">
							<button class="btn btn-primary" type="submit"
								style="margin-top: 5px">&nbsp&nbsp&nbsp&nbspتم&nbsp&nbsp&nbsp&nbsp</button>
						</a>
					</div>
				</div>
			</div>
			
			

	<div class="clear"></div>
</div>
<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
<script>
$('#dataTable-1').DataTable({
	autoWidth : true,
	"lengthMenu" : [ [ 8, 32, 64, -1 ], [ 8, 32, 64, "All" ] ]
});

$('.drgpicker').daterangepicker({
	singleDatePicker : true,
	timePicker : false,
	showDropdowns : true,
	locale : {
		format : 'YYYY/MM/DD'
	}
});


</script>

<script>
			$(document).ready(function() {

				$('#action-management-elements').addClass("show");
				$('#action-management').addClass("active-color");
				$('#action-index').addClass("active-color");
				
				
			});
			</script>