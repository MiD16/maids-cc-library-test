<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<nav class="sidebar dark_sidebar  vertical-scroll  ps-container ps-theme-default ps-active-y">
<div class="logo d-flex justify-content-between">
<!-- <a href="index.html"><img src="img/logo.png" alt></a> -->
<a href="index.html"><img src="<c:url value="/img/khubrat-logo-white.png" />"  alt></a>
<div class="sidebar_close_icon d-lg-none">
<i class="ti-close"></i>
</div>
</div>
<ul id="sidebar_menu">
      

<li class="" >
    <a class="has-arrow" href="#" aria-expanded="false">
    
    <div class="icon_menu">
    <img  src="<c:url value="/img/menu-icon/12.png" />"  alt>
    </div>
    <span>المستخدمون</span>
    </a>
    <ul>
    <li><a class="" href="<c:url value="/user/index"/>">استعراض</a></li>
    <li><a  href="<c:url value="/user/create"/>" >إضافة</a></li>
    </ul>
 </li> 
 
 
 <li class="" >
    <a class="has-arrow" href="#" aria-expanded="false">
    
    <div class="icon_menu">
    <img  src="<c:url value="/img/menu-icon/12.png" />"  alt>
    </div>
    <span>الأدوار</span>
    </a>
    <ul>
    <li><a class="" href="<c:url value="/role/index"/>">استعراض</a></li>
    <li><a  href="<c:url value="/role/create"/>" >إضافة</a></li>
    </ul>
 </li> 
 
 <li class="" >
    <a class="has-arrow" href="#" aria-expanded="false">
    
    <div class="icon_menu">
    <img  src="<c:url value="/img/menu-icon/12.png" />"  alt>
    </div>
    <span>سجل العمليات </span>
    </a>
    <ul>
    <li><a class="" href="<c:url value="/log/logaction/index"/>">استعراض</a></li>
    </ul>
 </li> 












</ul>
</nav> 	







