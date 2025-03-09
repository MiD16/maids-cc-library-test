<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/layout/header.jsp"%>
<%@include file="/WEB-INF/jsp/layout/left-sidebar.jsp"%>
<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>
<div>&nbsp</div>

<div class="d-flex align-items-center"
	style="background-color: #dfe2e5a8; margin-right: 17.4%">

	<ol class="breadcrumb"
		style="background-color: #e4e8ec; margin-top: 5px; margin-right: 8.5%; height: 3vh">
		<li class="breadcrumb-item"><a href="<c:url value="/tables/index"/>">كافة
				جداول النظام</a></li>
                                    <li class="breadcrumb-item"><a href="<c:url value="/tables/tableindex?tableId=${tableId}"/>"> &nbsp تفاصيل جدول النظام</a></li>
 <li class="breadcrumb-item"><a href="<c:url value="#"/>">
                                    <c:if test="${sysTable.id==0 }">
                                    &nbsp اضافة عنصر 
                                    </c:if>
                                    
                                      <c:if test="${sysTable.id!=0 }">
                                    &nbsp تعديل عنصر 
                                    </c:if>
                                    </a></li>
	</ol>

</div>
  <div class="page-wrapper" >
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
          <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
           
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
               <div class="container-fluid" >
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                   <div class="row">
                    <div class="card col-sm-8 col-md-8 col-lg-8">
                        <form:form method="post"
		action="${pageContext.request.contextPath}/tables/tableindex/save?tableId=${tableId}"
		modelAttribute="sysTable">
		
		
		
		<input type="hidden" value="${sysTable.id}" name="id">
		
                            <div class=" form-group  row mt-5">
                                <label class="form-label col-lg-3">الاسم بالعربية</label>
                                <div class="col-lg-6">
                                    <input type="text" name="nameArabic" id="nameArabic" class="form-control " value="${sysTable.nameArabic}" required>

                                </div>
                                <div class="invalid-feedback">
                                 --- خاطئ                                 
                                  </div>
                                  <div class="valid-feedback">
                                  </div>


                            </div>

                                <div class=" form-group  row ">
                                
                                
                                <c:if test="${sysTable.id==0}">
                                
                                    <label class="form-label col-lg-3">الاسم بالانكليزية</label>
                                <div class="col-lg-6">
                                    <input type="text" name="nameEnglish" id="nameEnglish" class="form-control " value="${sysTable.nameEnglish}" required>

                                </div>
                                
                                  </c:if>
                                   <c:if test="${sysTable.id!=0}">
                                <label class="form-label col-lg-3">الاسم بالانكليزية</label>
                                <div class="col-lg-6">
                                    <input type="text" name="nameEnglish" id="nameEnglish" class="form-control " value="${sysTable.nameEnglish}" readonly required>

                                </div>
                                  </c:if>
                                                                                                                              
                                <div class="invalid-feedback">
                                 --- خاطئ                                 
                                  </div>
                                  <div class="valid-feedback">
                                  </div>


                            </div>
                                <sec:authorize access="hasPermission('tables','tableindex_create')">
                                <div class="row">
                                
                                <div class="col-3"></div>
                               <div class="col-6">
                               
                                <c:if test="${sysTable.id==0}">
                                <div class="form-group">
                                    <button type="submit" value="submit" class="btn blue-btn btn-primary "
                                    style="width:75px">إضافة</button>
                                  </div>
                                  </c:if>
                                   <c:if test="${sysTable.id!=0}">
                                <div class="form-group">
                                    <button type="submit" value="submit" class="btn blue-btn btn-primary "
                                    style="width:75px">تعديل</button>
                                  </div>
                                  </c:if>
                               </div>
                                </div>
                                      </sec:authorize>                                                                                                                            
                          
                          
                        </form:form>
                        

                    </div>
                   
                </div>
                
               
               
            


            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <!--<footer class="footer"> © 2021 Material Pro Admin by <a href="https://www.wrappixel.com/">wrappixel.com </a>
            </footer>-->
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
<div class="clear"></div>   

</div>     
<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
