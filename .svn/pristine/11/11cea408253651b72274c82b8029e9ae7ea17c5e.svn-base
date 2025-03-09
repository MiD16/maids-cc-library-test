<%@ page import="com.template.Enum.NotificationType"%>
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
		<h2>الإشعارات</h2>
	</div>
	<br>
	<div class="table-responsive" style="padding-left: 20px">
		<table id="datatable1" class="table table-striped table-bordered "
			style="width: 98%;">
			<thead>
				<tr>

					<th class="center">نوع الأشعار</th>
					<th class="center">رقم الطلب التابع الأشعار</th>
					<th class="center">تاريخ الإشعار</th>
					<th class="center">المرسل</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach var="notif" items="${notifiList}">
					<tr>


						<td class="center">${NotificationType.values()[notif.type].getArabicType()}</td>
						<td class="center"><a href='${notif.nav}'>الإنتقال لمكان الإشعار</a>
						</td>

						<td class="center"><fmt:formatDate type="date"
								pattern="dd/MM/yyyy" value="${notif.notif_date}" /></td>
						<td class="center">${notif.user_from.username}</td>

					</tr>
				</c:forEach>

			</tbody>
			<tfoot>
				<tr>

					<th class="center">نوع الأشعار</th>
					<th class="center">رقم الطلب التابع الأشعار</th>
					<th class="center">تاريخ الإشعار</th>
					<th class="center">المرسل</th>
				</tr>
			</tfoot>
		</table>
	</div>

</div>

<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>


