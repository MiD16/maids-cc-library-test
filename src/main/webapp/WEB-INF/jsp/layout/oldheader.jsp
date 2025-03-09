<%@ page import="com.template.Enum.NotificationType"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
<!--
        ===
        This comment should NOT be removed.

        Charisma v2.0.0

        Copyright 2012-2014 Muhammad Usman
        Licensed under the Apache License v2.0

        ===
    -->
<meta charset="utf-8">
<title>${title}</title>



<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description"
	content="Queueing System, a fully featured, responsive, HTML5, Bootstrap admin template.">
<meta name="author" content="Yaman Akkad">
<script src="<c:url value="/bower_components/jquery/jquery.min.js" />"></script>
<link href="<c:url value="/css/bs-select.css" />" rel="stylesheet">

<link href="<c:url value="/css/bootstrap-cerulean.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/css/charisma-app.css" />" rel="stylesheet">

<link
	href="<c:url value="/bower_components/fullcalendar/dist/fullcalendar.print.css" />"
	rel="stylesheet">
<link href="<c:url value="/bower_components/chosen/chosen.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/bower_components/colorbox/example3/colorbox.css" />"
	rel="stylesheet">


<link
	href="<c:url value="/bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/css/jquery.noty.css" />" rel="stylesheet">
<link href="<c:url value="/css/font-icons.css" />" rel="stylesheet">
<link href="<c:url value="/css/noty_theme_default.css" />"
	rel="stylesheet">
<link href="<c:url value="/css/noty_theme_default.css" />"
	rel="stylesheet">
<link href="<c:url value="/css/elfinder.min.css" />" rel="stylesheet">
<link href="<c:url value="/css/elfinder.theme.css" />" rel="stylesheet">
<link href="<c:url value="/css/elfinder.theme.css" />" rel="stylesheet">
<link href="<c:url value="/css/jquery.iphone.toggle.css" />"
	rel="stylesheet">
<link href="<c:url value="/css/uploadify.css" />" rel="stylesheet">
<link href="<c:url value="/css/animate.min.css" />" rel="stylesheet">
<link href="<c:url value="/Site.css" />" rel="stylesheet">

<link href="<c:url value="/style-rtl.css" />" rel="stylesheet">


<link href="<c:url value="/css/bs-datatable.css" />" rel="stylesheet">

<link href="<c:url value="/css/datepicker.css" />" rel="stylesheet">
<link href="<c:url value="/css/bs-select.css" />" rel="stylesheet">

<link href="<c:url value="/css/select-boxes.css" />" rel="stylesheet">
<link href="<c:url value="/css/card.css" />" rel="stylesheet">

<style>
</style>
<script>
	function fire_ajax_submit() {

		document.getElementById("notNum").style.display = "none";
		$.ajax({
			type : "GET",
			contentType : "application/json",
			url : document.getElementById("context").value + "/changeStatus",
			//   data: JSON.stringify(search),
			dataType : 'json',
			cache : false,
			timeout : 600000,
			success : function() {

			},
			error : function(e) {

			}
		});

	}
</script>
</head>
<body>


	<input type="hidden" id="context"
		value="${pageContext.request.contextPath}">

	<!-- topbar starts -->
	<div class="navbar navbar-default" role="navigation">
		<div class="navbar-inner">

			<a href="" style="float: right;"> <img
				style="height: 60px; text-shadow: 5px 5px 5px 5px red; border-radius: 40px;"
				alt="Logo" src="<c:url value="/images/logo-ruuma.png" />" />
			</a>
			<!-- user dropdown starts -->
			<section>

				<div class="btn-group pull-left" style="float: left;">
					<button class="btn btn-default dropdown-toggle  "
						data-toggle="dropdown">
						<i class=" "></i><span class="hidden-sm hidden-xs">${pageContext["request"].userPrincipal.principal.username}
							/
							${pageContext["request"].userPrincipal.principal.authorities.get(0) }</span>
						<span class="caret"></span>
					</button>


					<ul class="dropdown-menu">
						<li><a href="<c:url value="/profile/details" />">الملف
								الشخصي</a></li>

						<li><a href="<c:url value="/logoutuser" />">تسجيل الخروج</a></li>

					</ul>

				</div>

				<div id="top-cart" style="margin-left: 10px; margin-top: 15px;">

					<a onclick="javascript:fire_ajax_submit() ; " id="top-cart-trigger"
						style="font-size: 22px;"><i class="glyphicon glyphicon-bell"
						id="globe" style="color: #f7f7f7;"></i> <c:if
							test="${not empty NotNum && NotNum!=0}">
							<span class="" id="notNum"
								style="font-size: 11px; font-weight: bold; float: right;">${NotNum}</span>
						</c:if> </a>


					<div class="top-cart-content">
						<div class="top-cart-title center ">
							<h4>الإشعارات</h4>
						</div>
						<div class="top-cart-items"
							style="overflow-y: scroll; height: 90%; max-height: 440px;">
							<c:if test="${not empty listNot}">

								<c:forEach var="noti" items="${listNot}">
									<div class="top-cart-item clearfix">

										<div class="top-cart-item-desc">

											<div class="comment-author">
												<div class="col_half "
													style="float: right; text-align: right; width: 52px;">

													<span style="font-size: 12px;"><a
														title="Permalink to this comment">${noti.user_from.full_name}</a>
														<fmt:formatDate value="${noti.notif_date}"
															pattern="dd/MM/yyyy" type="both" dateStyle="medium"
															timeStyle="medium" /></span> <span class="top-cart-item-price">${NotificationType.values()[noti.type].getArabicType()}</span>

												</div>
												<div class="col_half "
													style="float: left; text-align: right; width: 22px;">
													<a class='comment-reply-link' href="<c:url value="/${noti.nav}" />"
														title="View This Notification"><i
														class="	glyphicon glyphicon-share-alt"></i></a>
												</div>
											</div>

										</div>
									</div>
								</c:forEach>

							</c:if>
							<c:if test="${ empty listNot}">
								<br>
								<p class="center" style="font-size: 16px;">No Notifications
									Exist !!</p>

							</c:if>

						</div>

						<div class="top-cart-action clearfix center">

							<a href="<c:url value="/notifi/index" />"
								class="button button-3d button-small nomargin ">عرض جميع
								الإشعارات</a>
						</div>
					</div>
				</div>

			</section>
			<!-- user dropdown ends -->






		</div>
	</div>
	<!-- topbar ends -->



	<div class="ch-container">
		<div class="row">

			<!-- left menu starts -->
			<div class="col-sm-2 col-lg-2" style="float: right;">
				<div class="sidebar-nav">
					<div class="nav-canvas">
						<div class="nav-sm nav nav-stacked"></div>
						<ul class="nav nav-pills nav-stacked main-menu">
							<li class="nav-header">لوحة التحكم</li>

								<li><a class="ajax-link"
									href="<c:url value='/dep/index' />"><i
										class="glyphicon glyphicon-home"></i><span> الاقسام</span></a></li>
							<li class="accordion"><a><i
									class="glyphicon  glyphicon-ok-sign"></i><span>
										الموظفين</span></a>
								<ul class="nav nav-pills nav-stacked">
									<li><a href="<c:url value='/emp/index' />">الموظفين</a></li>
									<li><a href="<c:url value='/emp/viewrequestes' />">الطلبات</a></li>
									<li><a href="<c:url value='/emp/viewrejected' />">المرفوضين</a></li>
								</ul></li>
							<!--  	<li class="nav-header">Point of service</li>
							<li><a class="ajax-link" href="~/POS/Index"><i
									class="glyphicon glyphicon-align-center"></i><span>
										Point of Service</span></a></li>
							<li class="nav-header">Actions</li>
							<li><a class="ajax-link" href="~/ActionGroup/Index"><i
									class="glyphicon glyphicon-circle-arrow-down"></i> <span>
										Action Group </span></a></li>



							<li class="nav-header">Operations</li>


							<li><a class="ajax-link" href="~/Operation/Index"><i
									class="glyphicon glyphicon-road"></i><span> Operations </span></a>
							</li>

-->



							<li><a class="ajax-link"
								href="<c:url value='/user/index' />"><i
									class="glyphicon glyphicon-user"></i><span> المستخدمين </span></a>
							</li>
							<li class="accordion"><a><i
									class="glyphicon  glyphicon-ok-sign"></i><span>
										الصلاحيات</span></a>
								<ul class="nav nav-pills nav-stacked">
									<li><a href="<c:url value='/role/index' />">الأدوار</a></li>
									<li><a href="<c:url value='/action/index' />">الصفحات</a></li>
								</ul></li>
							<li class="accordion"><a><i
									class="glyphicon glyphicon-flash"></i><span> التتبع</span></a>
								<ul class="nav nav-pills nav-stacked">
									<li><a href="<c:url value='/logaction/search' />">&nbsp
											&nbsp <i class="glyphicon glyphicon-chevron-left"></i> البحث
											في العمليات
									</a></li>
									<li><a href="<c:url value='/log/exclogaction/index' />">الأخطاء</a></li>
								</ul></li>

						</ul>

					</div>
				</div>
			</div>


			<!--/span-->
			<!-- left menu ends -->

			<div id="content" class="col-lg-10 col-sm-10">
				<br>