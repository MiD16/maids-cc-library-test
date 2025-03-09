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



<link href="<c:url value="/css/apexcharts.css" />" rel="stylesheet">





<link href="<c:url value="/css/bootstrap-datepicker.css" />"
	rel="stylesheet">

<link href="<c:url value="/css/dataTables.bootstrap4.css" />"
	rel="stylesheet">
<link href="<c:url value="/css/daterangepicker.css" />" rel="stylesheet">

<link href="<c:url value="/css/dropzone.css" />" rel="stylesheet">

<link href="<c:url value="/css/dropzone.min.css" />" rel="stylesheet">

<link href="<c:url value="/css/feather.css" />" rel="stylesheet">

<link href="<c:url value="/css/fullcalendar.css" />" rel="stylesheet">
<link href="<c:url value="/css/jquery.steps.css" />" rel="stylesheet">

<link href="<c:url value="/css/jquery.timepicker.css" />"
	rel="stylesheet">

<link href="<c:url value="/css/perfect-scrollbar.css" />"
	rel="stylesheet">

<link href="<c:url value="/css/quill.snow.css" />" rel="stylesheet">

<link href="<c:url value="/css/select2.css" />" rel="stylesheet">

<link href="<c:url value="/css/select2-bootstrap4.css" />"
	rel="stylesheet">

<link href="<c:url value="/css/daterangepicker.css" />" rel="stylesheet">



<link href="<c:url value="/css/simplebar.css" />" rel="stylesheet">

<link href="<c:url value="/css/uppy.min.css" />" rel="stylesheet">

<link href="<c:url value="/css/app-light.css" />" rel="stylesheet">
<link href="<c:url value="/css/font-awesome.css" />" rel="stylesheet">
<link href="<c:url value="/css/font-awesome.min.css" />"
	rel="stylesheet">
<link href="<c:url value="/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/css/all.min.css" />" rel="stylesheet">


</head>
<body class="vertical light rtl ">
	<div class="wrapper">
		<nav style="background-color: #ededed"
			class="topnav navbar navbar-light">
			<button type="button"
				class="navbar-toggler text-muted mt-2 p-0 mr-3 collapseSidebar">
				<i class="fe fe-list navbar-toggler-icon"></i>
			</button>
			<ul class="nav">
				<li class="nav-item nav-notif"><a
					class="nav-link text-muted my-2" href="./#" data-toggle="modal"
					data-target=".modal-notif"> <span class="fe fe-bell fe-16"></span>
						<span class="dot dot-md bg-success"></span>
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle text-muted pr-0" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> <span
						class="avatar avatar-sm mt-2"> <img
							src="<c:url value='/images/avatars/face-1.jpg'  />" alt="..."
							class="avatar-img rounded-circle">
					</span>
				</a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item"
							href="<c:url value='/user/update-profile' />">حسابي</a> <a
							class="dropdown-item"
							href="<c:url value='/user/change-password' />">تغيير كلمة
							المرور</a> <a class="dropdown-item"
							href="<c:url value='/logoutuser' />">تسجيل الخروج</a>

					</div></li>
			</ul>
		</nav>
		<aside class="sidebar-left border-right bg-white shadow"
			id="leftSidebar" data-simplebar>
			<a href="#"
				class="btn collapseSidebar toggle-btn d-lg-none text-muted ml-2 mt-3"
				data-toggle="toggle"> <i class="fe fe-x"><span
					class="sr-only"></span></i>
			</a>
			<nav class="vertnav navbar navbar-light">
				<!-- nav bar -->
				<div class=""
					style="background-repeat: no-repeat;
    background-position: center;
    background-size: contain;
    width: 100%;
    height: 60px;
    padding-top: 0px;
     background-image: url('<c:url value="/images/avatars/logo.png"  />');">
				</div>
				<ul class="navbar-nav flex-fill w-100 mb-2 mt-3">


					<li class="nav-item dropdown"><a id="user-management"
						href="#user-management-elements" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle nav-link droup-text">
							<i class="fe fe-book-open fe-16"></i> <span
							class="ml-3 item-text">المستخدمون</span>
					</a>
						<ul class="collapse list-unstyled pl-4 w-100"
							id="user-management-elements">
							<li class="nav-item"><a id="user-index"
								class="nav-link pl-3 " href="<c:url value='/user/index' />"><span
									class="ml-1 item-text"> استعراض المستخدمون </span> </a></li>


						</ul></li>

					<li class="nav-item dropdown"><a id="role-management"
						href="#role-management-elements" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle nav-link droup-text">
							<i class=" far fa-address-card fe-16"></i> <span
							class="ml-3 item-text">الأدوار</span>
					</a>
						<ul class="collapse list-unstyled pl-4 w-100"
							id="role-management-elements">
							<li class="nav-item"><a id="role-index"
								class="nav-link pl-3 " href="<c:url value='/role/index' />"><span
									class="ml-1 item-text"> استعراض الأدوار </span> </a></li>



						</ul></li>
					<li class="nav-item dropdown"><a id="action-management"
						href="#action-management-elements" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle nav-link droup-text">
							<i class="fe fe-monitor fe-16"></i> <span class="ml-3 item-text">الصلاحيات</span>
					</a>
						<ul class="collapse list-unstyled pl-4 w-100"
							id="action-management-elements">
							<li class="nav-item"><a id="action-index"
								class="nav-link pl-3 " href="<c:url value='/action/index' />"><span
									class="ml-1 item-text"> استعراض الصلاحيات </span> </a></li>


						</ul></li>
					<li class="nav-item dropdown"><a id="operation-management"
						href="#operation-management-elements" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle nav-link droup-text">
							<i class=" 	fa fa-cubes fe-16"></i> <span class="ml-3 item-text">العمليات</span>
					</a>
						<ul class="collapse list-unstyled pl-4 w-100"
							id="operation-management-elements">
							<li class="nav-item"><a id="operation-index"
								class="nav-link pl-3 " href="<c:url value='/operation/index' />"><span
									class="ml-1 item-text"> استعراض العمليات </span> </a></li>


						</ul></li>

					<li class="nav-item dropdown"><a id="systemlog-management"
						href="#systemlog-management-elements" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle nav-link droup-text">
							<i class="fe fe-book-open fe-16"></i> <span
							class="ml-3 item-text">سجل العمليات</span>
					</a>
						<ul class="collapse list-unstyled pl-4 w-100"
							id="systemlog-management-elements">
							<li class="nav-item"><a id="systemlog-index"
								class="nav-link pl-3 " href="<c:url value='/SystemLog/index' />"><span
									class="ml-1 item-text"> استعراض سجل العمليات </span> </a></li>

							<li class="nav-item"><a id="exceptionlog-index"
								class="nav-link pl-3 "
								href="<c:url value='/ExceptionLog/index' />"><span
									class="ml-1 item-text"> استعراض سجل الأخطاء </span> </a></li>
									
							<li class="nav-item"><a id="modifylog-index"
								class="nav-link pl-3 " href="<c:url value='/ModifyLog/index' />"><span
									class="ml-1 item-text"> استعراض سجل التعديلات </span> </a></li>


						</ul></li>

					
					<li class="nav-item dropdown"><a id="AccountType"
						href="#AccountType-elements" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle nav-link droup-text">
							<i class=" 	fas fa-parking"></i> <span class="ml-3 item-text">إدارة
								المنتجات</span>
					</a>
						<ul class="collapse list-unstyled pl-4 w-100"
							id="AccountType-elements">
							<li class="nav-item"><a id="AccType" class="nav-link pl-3 "
								href="<c:url value='/AccountType/index' />"><span
									class="ml-1 item-text"> منتج الحسابات </span> </a></li>
							<%-- <li class="nav-item">
                  <a id="LoanType" class="nav-link pl-3 " href="<c:url value='/AccountType/index' />" ><span class="ml-1 item-text">  منتج القرض   </span>
                  </a>
                </li> --%>
						</ul></li>

					<li class="nav-item dropdown"><a id="Commission"
						href="#commission-elements" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle nav-link droup-text">
							<i class=" 	fa fa-copyright fe-16"></i> <span
							class="ml-3 item-text">العمولات</span>
					</a>
						<ul class="collapse list-unstyled pl-4 w-100"
							id="commission-elements">
							<li class="nav-item"><a id="commissionIndex"
								class="nav-link pl-3 "
								href="<c:url value='/commission/index' />"><span
									class="ml-1 item-text"> استعراض العمولات </span> </a></li>
						</ul></li>

					<li class="nav-item dropdown"><a id="adminManagement"
						href="#adminManagement-elements" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle nav-link droup-text">
							<i class="fe fe-folder fe-16"></i> <span class="ml-3 item-text">إدارة
								الفهارس</span>
					</a>
						<ul class="collapse list-unstyled pl-4 w-100"
							id="adminManagement-elements">
							<li class="nav-item"><a id="adminIndex"
								class="nav-link pl-3 " href="<c:url value='/HomeIndex/index' />"><span
									class="ml-1 item-text"> استعراض الفهارس </span> </a></li>
						</ul></li>

					<li class="nav-item dropdown"><a
						id="subpoena-request-details-management"
						href="#subpoena-request-details-management-elements"
						data-toggle="collapse" aria-expanded="false"
						class="dropdown-toggle nav-link droup-text"> <i
							class="fe fe-book-open fe-16"></i> <span class="ml-3 item-text">طلبات
								الاستدعاء</span>
					</a>
						<ul class="collapse list-unstyled pl-4 w-100"
							id="subpoena-request-details-management-elements">
							<li class="nav-item"><a id="subpoena-request-details-index"
								class="nav-link pl-3 " href="<c:url value='/subpoena/index' />"><span
									class="ml-1 item-text"> استعراض طلبات الاستدعاء </span> </a></li>


						</ul></li>


					<li class="nav-item dropdown"><a id="holidays-management"
						href="#holidays-management-elements" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle nav-link droup-text">
							<i class="fe fe-calendar fe-16"></i> <span class="ml-3 item-text">إدارة
								العطل</span>
					</a>
						<ul class="collapse list-unstyled pl-4 w-100"
							id="holidays-management-elements">
							<li class="nav-item"><a id="ind-holidays-index"
								class="nav-link pl-3 "
								href="<c:url value='/indHolidays/index' />"><span
									class="ml-1 item-text"> استعراض العطل الثابتة </span> </a></li>


							<li class="nav-item"><a id="holidays-index"
								class="nav-link pl-3 "
								href="<c:url value='/holidays/index?fromHolidays=1' />"><span
									class="ml-1 item-text"> استعراض ايام العطل </span> </a></li>

						</ul></li>


					<li class="nav-item dropdown"><a id="periods-management"
						href="#periods-management-elements" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle nav-link droup-text">
							<i class=" fas fa-hourglass-half fe-16"></i> <span
							class="ml-3 item-text">إدارة الفترات</span>
					</a>
						<ul class="collapse list-unstyled pl-4 w-100"
							id="periods-management-elements">
							<li class="nav-item"><a id="periods-index"
								class="nav-link pl-3 " href="<c:url value='/periods/index' />"><span
									class="ml-1 item-text"> استعراض الفترات </span> </a></li>

							<li class="nav-item"><a id="date-units-index"
								class="nav-link pl-3 " href="<c:url value='/dateUnits/index' />"><span
									class="ml-1 item-text"> وحدات التاريخ</span> </a></li>
						</ul></li>


					<li class="nav-item dropdown"><a id="interest-management"
						href="#interest-management-elements" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle nav-link droup-text">
							<i class="fas fa-hand-holding-usd fe-16"></i> <span
							class="ml-3 item-text">إدارة الفوائد</span>
					</a>
						<ul class="collapse list-unstyled pl-4 w-100"
							id="interest-management-elements">
							<li class="nav-item"><a id="interest-index"
								class="nav-link pl-3 " href="<c:url value='/interest/index' />"><span
									class="ml-1 item-text"> استعراض الفوائد </span> </a></li>

							<li class="nav-item"><a id="interest-rate-index"
								class="nav-link pl-3 "
								href="<c:url value='/interestRate/index' />"><span
									class="ml-1 item-text"> نسب الفوائد </span> </a></li>
							<li class="nav-item"><a id="currency-segments-index"
								class="nav-link pl-3 "
								href="<c:url value='/currencySegments/index' />"><span
									class="ml-1 item-text"> شرائح العملات </span> </a></li>
							<li class="nav-item"><a id="interest-rate-segments-index"
								class="nav-link pl-3 "
								href="<c:url value='/interestRateSegment/index' />"><span
									class="ml-1 item-text"> نسب فوائد الشرائح </span> </a></li>
						</ul></li>
						
						
					<li class="nav-item dropdown"><a id="tax-management"
						href="#tax-management-elements" data-toggle="collapse"
						aria-expanded="false" class="dropdown-toggle nav-link droup-text">
							<i class=" 	fas fa-money-check-alt fe-16"></i> <span
							class="ml-3 item-text"> الضرائب</span>
					</a>

						<ul class="collapse list-unstyled pl-4 w-100"
							id="tax-management-elements">

							<li class="nav-item"><a id="tax-index"
								class="nav-link pl-3 " href="<c:url value='/tax/index' />"><span
									class="ml-1 item-text"> استعراض الضرائب </span> </a></li>

						</ul></li>

				</ul>
			</nav>
		</aside>
		<main role="main" class="main-content">