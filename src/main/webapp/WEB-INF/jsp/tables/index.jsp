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
		<li class="breadcrumb-item"><a href="<c:url value="#"/>">كافة
				جداول النظام</a></li>

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
                    <div class="card col-sm-12 col-md-12 col-lg-12">

                         <div class="card-body">
                                <h4 class="card-title">جداول النظام</h4>
                                <!-- <h6 class="card-subtitle">جداول النظام <code>.table</code></h6> -->
                                <div class="table-responsive">
                                    <table class="table  table-striped" id="datatable1">
                                        <thead>
                                            <tr>
                                                <th class="border-top-0">الاسم  </th>
                                                      <th class="border-top-0">التفاصيل  </th>                          
                                                				                        	
                                            </tr>
                                        </thead>
                                        <tbody>
                                           <c:forEach var="systable" items="${sysTableList}">
                                            <tr>
                                                <td>${systable.nameArabic}</td>
                                              
                                                <td><a href="<c:url value='/tables/tableindex?tableId=${systable.nameEnglish}' />">
                                        <i class="btn fa fa-eye" title="تفاصيل" style="font-size:20px;color:#26619C"></i>

</a></td>	
                                            </tr>
                                           
                                           </c:forEach>
                                           
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

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
