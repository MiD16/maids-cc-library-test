
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
							class="mr-md-3 mr-2">المستخدمون</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>استعراض
								أدوار المستخدم </span></a></li>
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
					<div class="card-body">
				
					<form:form method="post" name="formCreate"
						action="${pageContext.request.contextPath}/UserRole/create"
					>
<div class=row>

						<div class="col-md-6">
							<div class="form-group">


												<input type="hidden" name="user_id" id="user_id" value="${user.ID }">
											
											
								<label for="upper_level_id">إضافة دور لمستخدم   
									 ${user.fullname}</label> <select name="role_id" class="form-control select2" id="upper_level_id"
									name="upper_level_id">
									<optgroup label=" ">

										<c:forEach var="role" items="${userRoleOppositeList}">
									
													<option style="background: #fff" value="${role.role_id}" >
										${role.role_name_a}</option>
										
										</c:forEach>
									</optgroup>

								</select>

							</div>
						</div>
						
							<div class="col-md-6" >
						<button style="margin:28px" type="submit" value="submit" class="btn mb-2 btn-primary"
							style="width: 80px">إضافة</button>
					</div>
						
			</div>
			
					</form:form>
					
					</div>
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
			<div class="panel panel-default">

				<br>
				<div class="card shadow">

					<div class="card-body">


						<!-- non customer individual search criteria  -->

						<div id="nonIndiv" style="display: block">



							<!-- non customer individual search criteria  -->



							<div class="row my-4">
								<!-- Small table -->
								<div class="col-md-12">
									<div class="card shadow">
										<div class="card-body">
											<!-- table -->
											<table class="table datatables" id="dataTable-1">
												<thead>
													<tr>
													
											<th scope="col">  اسم الدور باللغة الأساسية</th>
											<th scope="col">الاسم الدور باللغة الثانوية </th>
											<th>العمليات</th>

													</tr>
												</thead>
												<tbody>
													<c:forEach var="userrole" items="${userroleList}">



															<tr>
										
											<td>${userrole.role.role_name_a}</td>

											<td>${userrole.role.role_name_e}</td>
											
										<td >
													
														
													
															<i 
															data-id="${status.index}"
															onclick="callDangerAlert('delete','رسالة تأكيد','متأكد من حذف  الدور من المستخدم مع الصلاحيات المرتبطة به ',
												'/UserRole/delete?id=${userrole.ID}')"
																		class=" fe fe-delete icon-delete"></i>
														
															
													
															
															</td>
											
											
										

										</tr>

													</c:forEach>
												</tbody>
											</table>

										</div>

									</div>
								</div>

								<!-- simple table -->
							</div>

						</div>

					</div>
				</div>
			</div>


			<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
		<script>
			$(document).ready(function() {

				$('#user-management-elements').addClass("show");
				$('#user-management').addClass("active-color");
				$('#user-index').addClass("active-color");
				
				
			});
			</script>
			