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
							class="mr-md-3 mr-2"> المستخدمون</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text active text-uppercase " href="#"><span>إضافة
								مستخدم </span></a></li>
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
			<p class="card-text"></p>
			<div class="card shadow">
				<div class="card-header">
					<c:if test="${ user.ID==''}">
						<strong class="card-title"> إضافة مستخدم </strong>
					</c:if>
					<c:if test="${ user.ID!=''}">
						<strong class="card-title"> تعديل مستخدم ${user.fullname}
						</strong>
					</c:if>
				</div>
				<div class="card-body">


					<!-- non customer individual search criteria  -->


					<form class="needs-validation" novalidate method="post"
						action="${pageContext.request.contextPath}/user/save"
						modelAttribute="user">


						<input id="id" name="ID" type="hidden" class="form-control "
							value="${user.ID}">
		<input id="isDeleted" name="isDeleted" type="hidden" class="form-control "
							value="${user.isDeleted}">
							<input id="insertDate" name="insertDate" type="hidden" class="form-control "
							value="${user.insertDate}">
							<input id="insertBy" name="insertBy" type="hidden" class="form-control "
							value="${user.insertBy}">
						<div class="wizard clearfix row">
							<div class="col-md-6">
								<div class="form-group">

									<label for="username"> اسم المستخدم *</label> <input
										id="username" name="username" type="text"
										class="form-control " required value="${user.username}">
									<div class="invalid-feedback">هذا الحقل مطلوب</div>
								</div>



							</div>
							<div class="col-md-6">
								<div class="form-group">


									<label for="alt_upper_level_id">الفرع *</label> <select
										class="form-control select2" id="branch" name="branch">
										<optgroup label="اسم الفرع">

											<c:forEach var="ind" items="${branchlist}">
												<c:if test="${ user.branch.id==ind.id}">
													<option value="${ind.id}" selected>${ind.nameA}</option>
												</c:if>
												<c:if test="${ user.branch.id!=ind.id}">
													<option value="${ind.id}">${ind.nameA}</option>
												</c:if>


											</c:forEach>
										</optgroup>

									</select>

								</div>
							</div>



							<input id="password" name="password" type="hidden"
								class="form-control " required value="${user.password}">


							<div class="col-md-6">
								<div class="form-group">

									<label for="first_name_a"> الاسم الأول *</label> <input
										id="first_name_a" name="first_name_a" type="text"
										class="form-control " required value="${user.first_name_a}">
									<div class="invalid-feedback">هذا الحقل مطلوب</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">

									<label for="first_name_b">الاسم الأول باللغة الثانوية </label>

									<input id="first_name_b" name="first_name_b" type="text"
										class="form-control " value="${user.first_name_b}">

								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">

									<label for="father_name_a"> اسم الأب *</label> <input
										id="father_name_a" name="father_name_a" type="text"
										class="form-control " required value="${user.father_name_a}">
									<div class="invalid-feedback">هذا الحقل مطلوب</div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">

									<label for="father_name_b"> اسم الأب باللغة الثانوية </label> <input
										id="father_name_b" name="father_name_b" type="text"
										class="form-control " value="${user.father_name_b}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">

									<label for="last_name_a"> الاسم الأخير *</label> <input
										id="last_name_a" name="last_name_a" type="text"
										class="form-control " required value="${user.last_name_a}">
									<div class="invalid-feedback">هذا الحقل مطلوب</div>
								</div>
							</div>




							<div class="col-md-6">
								<div class="form-group">

									<label for="last_name_b"> الاسم الأخير باللغة الثانوية
									</label> <input id="last_name_b" name="last_name_b" type="text"
										class="form-control " value="${user.last_name_b}">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">

									<label for="mobile"> رقم الموبايل *</label> <input id="mobile"
										name="mobile" type="number" class="form-control " required
										value="${user.mobile}">
									<div class="invalid-feedback">هذا الحقل مطلوب</div>
								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">

									<label for="email"> البريد الإلكتروني </label> <input
										id="email" name="email" type="text" class="form-control "
										value="${user.email}">

								</div>
							</div>
						
										<div class="col-md-6">
								<div class="form-group">


									<label for="alt_upper_level_id">الرتبة الوظيفية *</label> <select
										class="form-control select2" id="position_id" name="position_id">
										<optgroup label="الرتبة الوظيفية ">

											<c:forEach var="ind" items="${positionslist}">
												<c:if test="${ user.position_id.id==ind.id}">
													<option value="${ind.id}" selected>${ind.nameA}</option>
												</c:if>
												<c:if test="${ user.position_id.id!=ind.id}">
													<option value="${ind.id}">${ind.nameA}</option>
												</c:if>


											</c:forEach>
										</optgroup>

									</select>

								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<label for="confidentiality_degree">درجة السرية * </label> <input
										id="confidentiality_degree" name="confidentiality_degree"
										type="number" max="5" min="0" class="form-control " required
										value="${user.confidentiality_degree}">
									<div class="invalid-feedback">هذا الحقل مطلوب</div>
								</div>
							</div>


							<div class="col-md-6">
								<div class="form-group">


									<label for="upper_level_id">المستخدم الذي له صلاحية
										أعلى *</label> <select class="form-control select2"
										id="upper_level_id" name="upper_level_id">
										<optgroup label="اسم المستخدم">

											<c:forEach var="ind" items="${userList}">
												<c:if test="${ user.upper_level_id.ID==ind.ID}">
													<option value="${ind.ID}" selected>${ind.username}</option>
												</c:if>
												<c:if test="${ user.upper_level_id.ID!=ind.ID}">
													<option value="${ind.ID}">${ind.username}</option>
												</c:if>


											</c:forEach>
										</optgroup>

									</select>

								</div>
							</div>

							<div class="col-md-6">
								<div class="form-group">


									<label for="alt_upper_level_id">المستخدم البديل لذي له
										صلاحية أعلى *</label> <select class="form-control select2"
										id="alt_upper_level_id" name="alt_upper_level_id">
										<optgroup label="اسم المستخدم">

											<c:forEach var="ind" items="${userList}">
												<c:if test="${ user.alt_upper_level_id.ID==ind.ID}">
													<option value="${ind.ID}" selected>${ind.username}</option>
												</c:if>
												<c:if test="${ user.alt_upper_level_id.ID!=ind.ID}">
													<option value="${ind.ID}">${ind.username}</option>
												</c:if>


											</c:forEach>
										</optgroup>

									</select>

								</div>
							</div>

				



							<div class="form-group col-md-6">
								<div class="form-group">
									<label for="end_date">تاريخ صلاحية الحساب </label>
									<input
										id="expiry_date" name="expiry_date" readonly
										type="text" class="form-control " required
										value="${user.expiry_date}">
									
								</div>
							</div>

							<div class="form-group col-md-6">
								<div class="form-group">
									<label for="pwd_exp_date">تاريخ صلاحية كلمة المرور * </label>
									<input
										id="pwd_exp_date" name="pwd_exp_date" readonly
										type="text" class="form-control " required
										value="${user.pwd_exp_date}">
							
								</div>
							</div>
							<div class="form-group col-md-6">
								<div class="form-group">
									<label for="from_time">له صلاحية العمل من * </label>
									<div class="input-group">
										<input type="time" required class="form-control"
											id="from_time" name="from_time"
											aria-describedby="button-addon2" value="${user.from_time}">
										<div class="input-group-append">
											<div class="input-group-text" id="button-addon-date">
												<span class="fe fe-clock fe-16"></span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="form-group col-md-6">
								<div class="form-group">
									<label for="to_time">له صلاحية العمل إلى * </label>
									<div class="input-group">
										<input type="time" required class="form-control "
											id="to_time" name="to_time" aria-describedby="button-addon2"
											value="${user.to_time}">
										<div class="input-group-append">
											<div class="input-group-text" id="button-addon-date">
												<span class="fe fe-clock fe-16"></span>
											</div>
										</div>
									</div>
								</div>
							</div>
									<div class="form-group col-md-6">
								<div class="form-group">
									<label for="customer_cif">رقم العميل الخاص به  </label>
									<div class="input-group">
										<input type="text" readonly class="form-control " data-toggle="modal" data-target="#varyModal"
											id="customer_cif" name="customer_cif" aria-describedby="button-addon2"
											value="${user.customer_cif}">
										<div class="input-group-append">
											<div class="input-group-text" id="button-addon-date">
												<span class="fe fe-search fe-16"></span>
											</div>
										</div>
									</div>
								</div>
							</div>
					
							<div class="col-md-6">
								<div class="form-group">

									<label for="teller_account_Id">رقم حساب الصندوق </label> <input
										id="teller_account_Id" name="teller_account_Id" type="text"
										class="form-control " value="${user.teller_account_Id}">
								</div>
							</div>
									<div class="col-md-6">
								<div class="form-group">

									<label for="ip_terminal">رقم التعريف للحاسوب: </label> <input
										id="ip_terminal" name="ip_terminal" type="text"
										class="form-control " value="${user.ip_terminal}">
								</div>
							</div>
							<%-- 					<div class="form-group col-md-6">
											<div class="form-group">
												<label for="from_time"> اخر محاولة تسجيل دخول    
												</label>
												<div class="input-group">
													<input  type="text" class="form-control drgpicker"
														id="auth_trial_date" name="auth_trial_date"
														aria-describedby="button-addon2"
														value="${user.auth_trial_date}">
													<div class="input-group-append">
														<div class="input-group-text" id="button-addon-date">
															<span class="fe fe-calendar fe-16"></span>
														</div>
													</div>
												</div>
											</div>
										</div> --%>

							<div class="col-md-6">
								<div class="form-group">
									<label for="limit_cash">سقف التعامل مع النقود *</label> <input
										id="limit_cash" name="limit_cash" type="text"
										class="form-control input-money" required value="${user.limit_cash}">
									<div class="invalid-feedback">هذا الحقل مطلوب</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="limit_non_cash">سقف التعامل مع الحسابات
										المصرفية *</label> <input id="limit_non_cash" name="limit_non_cash"
										type="text" class="form-control input-money " required
										value="${user.limit_non_cash}">
									<div class="invalid-feedback">هذا الحقل مطلوب</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="account_debit_limit">سقف كشف الحساب *</label> <input
										id="account_debit_limit" name="account_debit_limit"
										type="text" class="form-control input-money" required
										value="${user.account_debit_limit}">
									<div class="invalid-feedback">هذا الحقل مطلوب</div>
								</div>
							</div>




							<div class="form-group col-md-6" id="manager_flagDiv">
								<p class="mb-2">مدير النظام</p>
								<c:if test="${user.manager_flag==0 ||user.manager_flag==null}">
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="manager_flag"
											name="manager_flag" class="custom-control-input" >
										<label class="custom-control-label" for="manager_flag">نعم
										</label>
									</div>

									<div class=" custom-radio form-check-inline">
										<input value="1" type="radio" id="manager_flag2"
											name="manager_flag" class="custom-control-input" checked> <label
											class="custom-control-label" for="manager_flag2"> لا
										</label>
									</div>

								</c:if>
								<c:if test="${user.manager_flag==1 }">
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="manager_flag"
											name="manager_flag" class="custom-control-input" checked> <label
											class="custom-control-label" for="manager_flag">نعم </label>
									</div>

									<div class=" custom-radio form-check-inline">
										<input value="1" type="radio" id="manager_flag2"
											name="manager_flag" class="custom-control-input" >
										<label class="custom-control-label" for="manager_flag2">
											لا </label>
									</div>

								</c:if>
							</div>


							<div class="form-group col-md-6" id="account_access_flagDiv">
								<p class="mb-2">الوصول إلى حسابات فروع أخرى</p>
								<c:if
									test="${user.account_access_flag==0 ||user.account_access_flag==null}">
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="account_access_flag"
											name="account_access_flag" class="custom-control-input"
											> <label class="custom-control-label"
											for="account_access_flag">له صلاحية </label>
									</div>

									<div class=" custom-radio form-check-inline">
										<input value="1" type="radio" id="account_access_flag2"
											name="account_access_flag" class="custom-control-input" checked>
										<label class="custom-control-label" for="account_access_flag2">ليس
											له صلاحية </label>
									</div>

								</c:if>

								<c:if test="${user.account_access_flag==1}">
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="account_access_flag"
											name="account_access_flag" class="custom-control-input" checked>
										<label class="custom-control-label" for="account_access_flag">له
											صلاحية </label>
									</div>

									<div class=" custom-radio form-check-inline">
										<input value="1" type="radio" id="account_access_flag2"
											name="account_access_flag" class="custom-control-input"
											> <label class="custom-control-label"
											for="account_access_flag2">ليس له صلاحية </label>
									</div>

								</c:if>

							</div>
							<div class="form-group col-md-6" id="vacation_flagDiv">
								<p class="mb-2">في إجازة</p>

								<c:if test="${user.vacation_flag==0 ||user.vacation_flag==null}">
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="vacation_flag"
											name="vacation_flag" class="custom-control-input" >
										<label class="custom-control-label" for="vacation_flag">نعم
										</label>
									</div>

									<div class=" custom-radio form-check-inline">
										<input value="1" type="radio" id="vacation_flag2"
											name="vacation_flag" class="custom-control-input"checked> <label
											class="custom-control-label" for="vacation_flag2"> لا
										</label>
									</div>

								</c:if>
								<c:if test="${user.vacation_flag==1 }">
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="vacation_flag"
											name="vacation_flag" class="custom-control-input"checked> <label
											class="custom-control-label" for="vacation_flag">نعم
										</label>
									</div>

									<div class=" custom-radio form-check-inline">
										<input value="1" type="radio" id="vacation_flag2"
											name="vacation_flag" class="custom-control-input" >
										<label class="custom-control-label" for="vacation_flag2">
											لا </label>
									</div>

								</c:if>


							</div>
							<div class="form-group col-md-6" id="specific_device_flagDiv">
								<p class="mb-2">إمكانية العمل على أجهزة حاسوب متعددة</p>
								<c:if
									test="${user.specific_device_flag==0 ||user.specific_device_flag==null}">
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="specific_device_flag"
											name="specific_device_flag" class="custom-control-input"
											> <label class="custom-control-label"
											for="specific_device_flag">له صلاحية </label>
									</div>

									<div class=" custom-radio form-check-inline">
										<input value="1" type="radio" id="specific_device_flag2"
											name="specific_device_flag" class="custom-control-input" checked>
										<label class="custom-control-label"
											for="specific_device_flag2">ليس له صلاحية </label>
									</div>
								</c:if>
								<c:if test="${user.specific_device_flag==1 }">
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="specific_device_flag" checked
											name="specific_device_flag" class="custom-control-input">
										<label class="custom-control-label" for="specific_device_flag">له
											صلاحية </label>
									</div>

									<div class=" custom-radio form-check-inline">
										<input value="1" type="radio" id="specific_device_flag2"
											name="specific_device_flag" class="custom-control-input"
											> <label class="custom-control-label"
											for="specific_device_flag2">ليس له صلاحية </label>
									</div>
								</c:if>

							</div>

							<div class="form-group col-md-6" id="quit_flagDiv">
								<p class="mb-2"> متاح</p>
								<c:if test="${user.quit_flag==0 ||user.quit_flag==null}">
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="quit_flag" name="quit_flag"
											class="custom-control-input" checked> <label
											class="custom-control-label" for="quit_flag">نعم </label>
									</div>

									<div class=" custom-radio form-check-inline">
										<input value="1" type="radio" id="quit_flag2" name="quit_flag"
											class="custom-control-input"> <label
											class="custom-control-label" for="quit_flag2"> لا </label>
									</div>
								</c:if>
								<c:if test="${user.quit_flag==1}">
									<div class=" custom-radio form-check-inline">
										<input value="0" type="radio" id="quit_flag" name="quit_flag"
											class="custom-control-input"> <label
											class="custom-control-label" for="quit_flag">نعم </label>
									</div>

									<div class=" custom-radio form-check-inline">
										<input value="1" type="radio" id="quit_flag2" name="quit_flag"
											class="custom-control-input" checked> <label
											class="custom-control-label" for="quit_flag2"> لا </label>
									</div>
								</c:if>

							</div>

							<div class="actions clearfix">
								<ul role="menu" aria-label="Pagination">
									<li aria-hidden="false" aria-disabled="false"><button
											type="submit" class="btn mb-2 btn-primary">حفظ</button>
								</ul>
							</div>

						</div>

					</form>

					<!-- non customer individual search criteria  -->




				</div>

			</div>
		</div>
<div class="form-group col-md-6" style="margin-top: 3rem">




				
								<div class="modal fade" id="varyModal" tabindex="-1"
									role="dialog" aria-labelledby="varyModalLabel"
									aria-hidden="true" style="display: none;">
									<div class="modal-dialog" role="document"
										style="max-width: 840px;">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="varyModalLabel">البحث عن
													متعامل</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">×</span>
												</button>
											</div>
											<div class="modal-body">
												<!-- non customer individual search criteria  -->
												<div class="col-md-12">
													<div id="nonIndiv" style="display: block">

						

			



										<div class="row ">
						
						
						
						<div class="col-md-6 ">
								<div class="input-group mb-3 trans">
									<div class="input-group-prepend">
										<span class="input-group-text ">الأسم الأول</i></span>
									</div>
									<input type="text" class="form-control" placeholder=""
										name="firstNameA" aria-label="Username" id="firstNameA"
										aria-describedby="basic-addon1">
								</div>
							</div>

							<div class="col-2">
								<button onclick="showHideElement()" type="button"
									class="btn mb-2 btn-secondary">
									<span id="icon_test" class="fe fe-chevrons-down fe-16"><span>
								</button>
							</div>

							<div class="col-2">

								<button type="button" class="btn mb-2 btn-primary"
									onclick="searchCustomerByNonCustIndiv()">&nbsp &nbsp بحث &nbsp &nbsp</button>
							</div>


						</div>

						<!-- non customer individual search criteria  -->

						<div class="container-div row">
							

							<div class="col-md-6">
								<div class="input-group mb-3 trans">
									<div class="input-group-prepend">
										<span class="input-group-text" id="basic-addon1">اسم
											الأب&nbsp&nbsp&nbsp</span>
									</div>
									<input type="text" class="form-control" placeholder=""
										name="fatherNameA" aria-label="Username" id="fatherNameA"
										aria-describedby="basic-addon1">
								</div>
							</div>

							<div class="col-md-6 ">
								<div class="input-group mb-3 trans">
									<div class="input-group-prepend">
										<span class="input-group-text ">النسبة
											&nbsp&nbsp&nbsp&nbsp&nbsp</i>
										</span>
									</div>
									<input type="text" class="form-control" placeholder=""
										name="lastNameA" aria-label="Username" id="lastNameA"
										aria-describedby="basic-addon1">
								</div>
							</div>

							

						</div>
						
						<div class="row my-4">
						<!-- Small table -->
						<div class="col-md-12">
									<!-- table -->
									<table class="table datatables" id="dataTable-1">
										<thead>
											<tr>
											<th>#</th>
											<th>اسم العميل</th>
											<th>الفرع </th>
											<th>الرقم الموحد </th>
											<th>العمليات </th>
											</tr>
										</thead>
									</table>
						</div>
						<!-- simple table -->
					</div>


													</div>
												</div>
											</div>

										</div>
									</div>
								</div>



							</div>






		<!-- non customer individual search criteria  -->



		<!-- 		<div class="row my-4">
							Small table
							<div class="col-md-12">
								<div class="card shadow">
								

								</div>
							</div>

							simple table
						</div> -->



		<!-- jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj -->
		<%-- <c:if test="${  user.ID!=0}">
	<a class="button submitButton" href="<c:url value='/user/index' />">إضافة
		مستخدم</a>

</c:if>

<div class="line"></div>
<div class="panel panel-default">
	<div class="panel-heading" style="text-align: right;">
		<h2>إضافة مستخدم</h2>
	</div> --%>
		<%-- 	<form:form method="post"
		action="${pageContext.request.contextPath}/user/create"
		modelAttribute="user">
		<input type="hidden" value=" ${user.ID}" name="ID">
				<input type="hidden" value=" ${user.password}" name="password">
		
		<div class="col_one_third "
			style="float: right; text-align: right; width: 225px;">
			<label style="font-size: 18px;" for="template-contactform-name">الاسم
				الأول </label> <input dir="rtl" type="text" id="first_name"
				name="first_name" value="${user.first_name}"
				class="sm-form-control required" required />
		</div>
		<div class="col_one_third "
			style="float: right; text-align: right; width: 225px;">
			<label style="font-size: 18px;" for="template-contactform-name">الاسم
				الثاني </label> <input dir="rtl" type="text" id="last_name" name="last_name"
				value="${user.last_name}" class="sm-form-control required" required />
		</div>

		<div class="col_one_third "
			style="float: right; text-align: right; width: 225px;">
			<label style="font-size: 18px;" for="template-contactform-name">اسم
				المستخدم </label> <input dir="rtl" type="text" id="username" name="username"
				value="${user.username}" class="sm-form-control required" required />
		</div>

		<div class="clear"></div>
		<div class="col_one_third "
			style="float: right; text-align: right; width: 225px;">
			<label style="font-size: 18px;" for="template-contactform-name">رقم
				الموبايل</label> <input dir="rtl" type="text" id="" name="mobile"
				value="${user.mobile}" class="sm-form-control required" required />
		</div>
		<div class="col_one_third "
			style="float: right; text-align: right; width: 225px;">
			<label style="font-size: 18px;" " for="template-contactform-name">الأيميل
			</label> <input dir="rtl" type="text" id="" name="email"
				value="${user.email}" class="sm-form-control required" required />
		</div>
		<div class="col_one_third "
			style="float: right; text-align: right; width: 225px;">
			<label style="font-size: 18px;" for="template-contactform-name">مجموعة
			</label> <select id="" name="user_role" class="sm-form-control" dir="rtl">
				<c:forEach items="${listRole}" var="rol">
					<c:if test="${rol.ID==user.user_role.ID }">
						<option selected value="${rol.ID}">${rol.role_name}</option>
					</c:if>
					<option value="${rol.ID}">${rol.role_name}</option>
				</c:forEach>
			</select>
		</div>
		<div class="clear"></div>
		<div class="col_full "
			style="float: right; margin-right: 30px; text-align: right;">
			<c:if test="${ user.ID==0}">
				<button class="button submitButton" type="submit" value="submit">إضافة
					مستخدم</button>
			</c:if>
			<c:if test="${  user.ID!=0}">
				<button class="button submitButton" type="submit" value="submit">تعديل
					مستخدم</button>
			</c:if>

		</div>
	</form:form> --%>
		<div class="clear"></div>
	</div>
	<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
	
	
	<script>
			$(document).ready(function() {

				$('#user-management-elements').addClass("show");
				$('#user-management').addClass("active-color");
				$('#user-index').addClass("active-color");
				
				
			});
			</script>

	<script>

function searchcustomer(){
	alert("hhhhhhhhhhhhhhh");
	 
}
function showHideElement() {

	var container = $('.container-div');

	if (!container.hasClass('active')) {
		container.addClass('show').outerWidth();
		container.addClass('active');
		document.getElementById("icon_test").classList
				.remove('fe-chevrons-down');
		document.getElementById("icon_test").classList
				.add('fe-chevrons-up');

	} else {
		container.removeClass('active').one(
				'transitionend',
				function() {
					container.removeClass('show');

					document.getElementById("icon_test").classList
							.remove('fe-chevrons-up');
					document.getElementById("icon_test").classList
							.add('fe-chevrons-down');
				});
	}

}

function searchCustomerByNonCustIndiv() {
	
		 
		var firstNameA = document.getElementById("firstNameA").value;
		var fatherNameA = document.getElementById("fatherNameA").value;
		var lastNameA = document.getElementById("lastNameA").value;
		
		
		if( firstNameA == "" && fatherNameA == "" && lastNameA == "" ){
			callConfirmAlert("search","لا يمكن إجراء عملية البحث","الرجاء إدخال قيمة واحدة على الأقل")
		}
		else{
			var t = $('#dataTable-1').DataTable();

			var j=0;
			$.ajax({
				type : "GET",
				headers : {
					Accept : "application/json; charset=utf-8",
					"Content-Type" : "application/json; charset=utf-8"
				},
				//contentType : "application/json",
				url : '${pageContext.request.contextPath }'

				+ '/api2/searchResultCustomerNonIndiv',
				data : {
					firstNameA : firstNameA,
					fatherNameA : fatherNameA,
					lastNameA : lastNameA
				},
				dataType : "json",
				cache : false,
				timeout : 600000,
				success : function(response) {
					t.rows().remove().draw();
					
					
					for ( var i in response) {
						
						var op = '<i class="fe fe-plus-circle " onclick="navigateToEditPage(\''
							+ response[i].CIF
							+ '\')" data-dismiss="modal"></i>';
							
						t.row.add([
							response[i].CUSTOMER_ID,
							response[i].CUST_NAME_A,
							response[i].BRANCH_ID,
							response[i].CIF,
							op
							]).draw(false);

					}

				},

				error : function(e) {
					alert("error");

				}
			});
		}
		
	}

function navigateToEditPage(cif){
	//alert(cif)
	$("#customer_cif").val(cif);
	
}
		$('.drgpicker').daterangepicker({
			singleDatePicker : true,
			timePicker : false,
			showDropdowns : true,
			locale : {
				format : 'YYYY/MM/DD'
			}
		});

		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
						// Fetch all the forms we want to apply custom Bootstrap validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {

										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}

										form.classList.add('was-validated');

									}, false);
								});
					}, false);
		})();
	</script>

















	<%-- <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/layout/header.jsp"%>
<%@include file="/WEB-INF/jsp/layout/left-sidebar.jsp"%>
<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>


<div class="main_content_iner ">


<div class="col-lg-12">
<div class="white_card card_height_100 mb_30 QA_section">

<div class="white_card_header">
<div class="box_header m-0">
<div class="main-title">
<h4 class="m-0">إضافة مستخدم </h4>
</div>
</div>
</div>


<div class="white_card_body">

<div class="mb-3 danger-color" style="color: #d91919">${error_msg}</div>



                    				<form:form method="post" onsubmit="return validateForm()"
					name="formCreate"
					action="${pageContext.request.contextPath}/user/save"
					modelAttribute="user">
					<input type="hidden" value="${user.ID}" name="user">
					<div class=" form-group  row  mb-3">
						<label class="form-label col-lg-2 h6 theme_color_1"> اسم المستخدم </label>
						<div class="col-lg-6">
							<input maxlength="20" type="text" name="username" id="username"
								class="form-control " value="${user.username}" required>

						</div>
						

					</div>





					<div class=" form-group  row mb-3 ">
						<label class="form-label col-lg-2 h6 theme_color_1"> الاسم الأول </label>
						<div class="col-lg-6">
							<input maxlength="20" type="text" name="first_name"
								id="first_name" class="form-control " value="${user.first_name}"
								required>

						</div>
						

					</div>


					<div class=" form-group  row mb-3">
						<label class="form-label col-lg-2 h6 theme_color_1"> اسم الأب </label>
						<div class="col-lg-6">
							<input maxlength="20" type="text" name="father_name"
								id="father_name" class="form-control "
								value="${user.father_name}" required>

						</div>
						

					</div>

					<div class=" form-group  row mb-3 ">
						<label class="form-label col-lg-2 h6 theme_color_1"> اسم العائلة </label>
						<div class="col-lg-6">
							<input maxlength="20" type="text" name="last_name" id="last_name"
								class="form-control " value="${user.last_name}" required>

						</div>
						


					</div>


					<div class=" form-group  row mb-3">
						<label class="form-label col-lg-2 h6 theme_color_1"> الدور</label>
						<div class="col-lg-6">
							<select name="user_role" id="role"
								class="form-select shadow-none  form-control " required>
								<c:forEach var="role" items="${roleList}">
									<c:if test="${role.ID==user.user_role.ID }">
										<option selected value="${role.ID}">${role.role_name_arabic}</option>
									</c:if>
									<c:if test="${role.ID!=user.user_role.ID }">
										<option value="${role.ID}">${role.role_name_arabic}</option>
									</c:if>
								</c:forEach>

							</select>
						</div>
						<div class="invalid-feedback">الرجاء إدخال رقم</div>
						<div class="valid-feedback"></div>


					</div>
					
					
					

		
				
					
						<c:if test="${  user.ID==0}">
								<div class="form-group">
									<button type="submit" value="submit"
										class="btn_1" style="width: 75px">إضافة</button>
								</div>
							
						</c:if>
						<c:if test="${  user.ID!=0}">
								<div class="form-group">
									<button type="submit" value="submit"
										class="btn_1" style="width: 75px">تعديل</button>
								</div>
						</c:if>



					

				</form:form>
                      
		
		
		
		
		
                            
                         
                             
                       
                      
                            
                            
                            

                        
                            
                         
                
                   
            

</div>

</div>


</div>



</div>








<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>


<script>
	function validateForm() {
		const swalWithBootstrapButtons = Swal.mixin({
			customClass : {
				confirmButton : 'btn red-btn confirm-swal',
				cancelButton : 'btn  cancel-swal',
			},
			buttonsStyling : false
		});
		var usernameVal = document.forms["formCreate"]["username"].value;
		let pattern = /^[^\u0600-\u06FF\s]+$/;
		if (!pattern.test(usernameVal)) {

			swalWithBootstrapButtons
					.fire({
						icon : 'question',
						iconHtml : '<i class="	fas fa-user-times" style="font-size:40px"></i>',
						iconColor : '#d50000',
						title : "اسم المستخدم يجب أن لا يحتوي على أحرف عربية او مسافات",
						confirmButtonText : 'تم',
						showCloseButton : true,
					});
			return false;
		}
		var swal=showLoadingWithoutEncrypt("");
		return true;
	}
</script>
 --%>