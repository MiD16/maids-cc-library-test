
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>

<%@include file="/WEB-INF/jsp/layout/header.jsp"%>


<div
	class="panel panel-default">
	<div class="panel-heading" style="text-align: right;">
		<h2>عرض العمليات</h2>
	</div>
	<br>
	<div class="table-responsive" style="padding-left: 20px">
		<table id="datatable1" class="table table-striped table-bordered "
			style="width: 98%;">
			<thead>
				<tr>

					<th class="center" width="15%">اسم المستخدم</th>
					<th class="center" width="20%">الوقت والتاريخ</th>
					<th class="center" width="10%">نوع العملية</th>
					<th class="center" width="30%">القيم</th>

				</tr>
			</thead>

			<tbody>
				<c:forEach var="log" items="${logactionList}">
					<tr>
						<td class="center">${log.user.first_name }
							${log.user.last_name}</td>
						<td class="center"><fmt:formatDate value="${log.action_date}"
								type="both" dateStyle="medium" timeStyle="medium" /></td>
						<td class="center">${log.action.action_name_ar}</td>
						<td class="center" style="text-align: right;">${log.description}</td>



					</tr>
				</c:forEach>

			</tbody>
			<tfoot>
				<tr>
					<th class="center" width="15%">اسم المستخدم</th>
					<th class="center" width="20%">الوقت والتاريخ</th>
					<th class="center" width="10%">نوع العملية</th>
					<th class="center" width="30%">القيم</th>
				</tr>
			</tfoot>
		</table>
	</div>
</div>
<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>