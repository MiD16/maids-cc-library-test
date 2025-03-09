

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>

<%@include file="/WEB-INF/jsp/layout/header.jsp"%>


<div class="panel panel-default">
	<div class="panel-heading" style="text-align: right;">


		<h2>بحث في العمليات</h2>

	</div>
	<br>

	<form:form method="post"
		action="${pageContext.request.contextPath}/logaction/search"
		modelAttribute="log">

		<div class="clear"></div>
		<div class="col_one_third "
			style="float: right; text-align: right; width: 225px;">
			<label style="font-size: 18px;" for="template-contactform-name">
				المستخدم </label> <select id="user_id" name="user_id"
				class="sm-form-control " dir="rtl">

				<option selected value="0">خارج البحث</option>

				<c:forEach items="${user}" var="use">
					<c:if test="${log.user_id==use.ID }">
						<option selected value="${use.ID}"
							data-tokens="${use.getfullname()}">${use.getfullname()}</option>
					</c:if>
					<c:if test="${log.user_id!=use.ID }">
						<option value="${use.ID}" data-tokens="${use.getfullname()}">${use.getfullname()}</option>
					</c:if>
				</c:forEach>
			</select>

		</div>
		<div class="col_one_third "
			style="float: right; text-align: right; width: 225px;">
			<label style="font-size: 18px;" for="template-contactform-name">
				العملية </label> <select id="action_id" name="action_id"
				class="sm-form-control " dir="rtl">
				<option selected value="0">خارج البحث</option>

				<c:forEach items="${action}" var="act">
					<c:if test="${log.action_id==act.ID }">
						<option selected value="${act.ID}"
							data-tokens="${act.action_name_ar}">${act.action_name_ar}</option>
					</c:if>
					<c:if test="${log.action_id!=act.ID }">
						<option value="${act.ID}" data-tokens="${act.action_name_ar}">${act.action_name_ar}</option>
					</c:if>
				</c:forEach>
			</select>

		</div>
		<div class="clear"></div>
		<div class="col_one_third "
			style="float: right; text-align: right; width: 225px;">
			<label style="font-size: 18px;" for="template-contactform-name">تاريخ
				البداية </label>
			<div class="input-group mb-3">
				<div class="input-group date" data-date-format="dd/mm/yyyy"
					dir="ltr" data-provide="datepicker">
					<input type="text" class="form-control" autocomplete="off"
						name="date_from" id="date_from">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-calendar"></span>
					</div>

				</div>

			</div>
		</div>
		<div class="col_one_third "
			style="float: right; text-align: right; width: 225px;">
			<label style="font-size: 18px;" for="template-contactform-name">تاريخ
				النهاية </label>
			<div class="input-group mb-3">
				<div class="input-group date" data-date-format="dd/mm/yyyy"
					dir="ltr" data-provide="datepicker">
					<input type="text" class="form-control" autocomplete="off"
						name="date_to" id="date_to">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-calendar"></span>
					</div>

				</div>

			</div>
		</div>
		<div class="clear"></div>
		<div class="col_one_third "
			style="float: right; text-align: right; width: 225px;">
			<label style="font-size: 18px;" for="template-contactform-name">كلمة
				مفتاحية </label> <input dir="rtl" type="text" id="value" name="description"
				value="${log.description}" class="sm-form-control " />

		</div>
		<div class="clear"></div>




		<div class="col_full "
			style="float: right; margin-right: 30px; text-align: right;">
			<button class="button submitButton" type="submit" value="submit">
				بحث</button>


		</div>
		<div class="clear"></div>

		<c:if test="${searchResult != null }">
			<form:form method="post" modelAttribute="l"
				action="${pageContext.request.contextPath}/logaction/search">



				<table>
					<tr>
						<td><c:if test="${ !empty lastPage}">
								<button type="submit"
									formaction="${pageContext.request.contextPath}/logaction/search?page=${lastPage}"
									class="btn btn-default ">
									<span></span> ${lastPage}
								</button>
							</c:if></td>


						<td><c:if test="${ allsize >(((page )-1)*20)+19}">
								<button type="submit"
									formaction="${pageContext.request.contextPath}/logaction/search?page=${page+1}"
									class="btn btn-default">
									<span class="glyphicon glyphicon-step-forward"></span> التالي
								</button>

							</c:if> <c:if test="${ allsize <=(((page )-1)*20)+19}">
								<button type="submit"
									formaction="${pageContext.request.contextPath}/logaction/search?page=${page+1}}"
									class="btn btn-default" disabled="true">
									<span class="glyphicon glyphicon-step-forward"></span> التالي
								</button>

							</c:if></td>
						<td><span class="btn btn-default "> <b> الصفحة <c:out
										value="${page}" /></b>
						</span></td>
						<td><c:if test="${page>1}">
								<button type="submit"
									formaction="${pageContext.request.contextPath}/logaction/search?page=${page-1}"
									class="btn btn-default ">
									<span class="glyphicon glyphicon-step-backward"></span> السابق
								</button>
							</c:if> <c:if test="${page<=1}">
								<button type="submit"
									formaction="${pageContext.request.contextPath}/logaction/search?page=${page-1}&"
									class="btn btn-default " disabled="true">
									<span class="glyphicon glyphicon-step-backward"></span> السابق
								</button>
							</c:if></td>
						<td>
							<button type="submit"
								formaction="${pageContext.request.contextPath}/logaction/search?page=1"
								class="btn btn-default ">الصفحة الأولى</button>
						</td>
					</tr>
				</table>



			</form:form>
			<div class="panel panel-default">
				<div class="panel-heading" style="text-align: right;">


					<h2>نتائج البحث</h2>
					<h5>عدد النتائج :${allsize} نتيجة</h5>

				</div>
				<br>
				<div class="table-responsive" style="padding-left: 20px">
					<table id="" class="table table-striped table-bordered "
						style="width: 98%;">
						<thead>
							<tr>

								<th class="center" width="15%">الاسم</th>
								<th class="center" width="20%">الوقت والتاريخ</th>
								<th class="center" width="10%">نوع العملية</th>
								<th class="center" width="30%">القيم</th>

							</tr>
						</thead>

						<tbody>
							<c:forEach var="log" items="${searchResult}">
								<tr>
							
									<td class="center" style="text-align: right;">${log.user_name}</td>

									<td class="center"><fmt:formatDate
											value="${log.action_date}" type="both" dateStyle="short"
											timeStyle="short" /></td>
									<td class="center">${log.action_name_ar}</td>

									<td class="center" style="text-align: right;">${log.description}</td>



								</tr>
							</c:forEach>

						</tbody>
						<tfoot>
							<tr>
								<th class="center" width="15%">الاسم</th>
								<th class="center" width="20%">الوقت والتاريخ</th>
								<th class="center" width="10%">نوع العملية</th>
								<th class="center" width="30%">القيم</th>
							</tr>
						</tfoot>
					</table>



				</div>
				<div class="clear"></div>
			</div>
		</c:if>
	</form:form>
	<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>