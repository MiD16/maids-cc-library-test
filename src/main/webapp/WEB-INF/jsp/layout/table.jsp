<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/layout/header.jsp"%>
<%@include file="/WEB-INF/jsp/layout/left-sidebar.jsp"%>
  <div class="page-wrapper" >
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
          <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb" >
                <div class="row align-items-center">
                    <div class="col-md-6 col-8 align-self-center">
                        <div class="d-flex align-items-center">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="<c:url value="#"/>">الرئيسية</a></li>
                                </ol>
                            </nav>
                        </div>
                        <h3 class="page-title mb-0 p-0">الرئيسية</h3>

                    </div>
                    
                </div>
            </div>
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
                    <!-- column -->
                    <div class="col-sm-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">المستخدمون</h4>
                                <!-- <h6 class="card-subtitle">استعراض المستخدمين <code>.table</code></h6> -->
                                <div class="table-responsive">
                                    <table class="table  table-striped">
                                        <thead>
                                            <tr>
                                                <th class="border-top-0 ">#</th>
                                                <th class="border-top-0">الاسم الأول</th>
                                                <th class="border-top-0">الاسم الثاني</th>
                                                <th class="border-top-0">اسم المستخدم</th>
                                                <th class="border-top-0">حذف </th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>1</td>
                                                <td>ايمان</td>
                                                <td>الحسين</td>
                                                <td>@e.alhussien</td>
                                                <td>
                                                    <button type="submit" value="submit" class="btn btn-danger "
                                                    style="width:50px">حذف</button>
                
                                                </td>



                                            </tr>
                                            <tr>
                                                <td>2</td>
                                                <td>لجين</td>
                                                <td>بطرس</td>
                                                <td>@l.butros</td>
                                                <td>
                                                    <button type="submit" value="submit" class="btn btn-danger "
                                                    style="width:50px">حذف</button>
                
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>3</td>
                                                <td>يمان</td>
                                                <td>العقاد</td>
                                                <td>@y.akkad</td>
                                                <td>
                                                    <button type="submit" value="submit" class="btn btn-danger "
                                                    style="width:50px">حذف</button>
                
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>4</td>
                                                <td>بيان</td>
                                                <td>السعيد</td>
                                                <td>@b.alsaaed</td>
                                                <td>
                                                    <button type="submit" value="submit" class="btn btn-danger "
                                                    style="width:50px">حذف</button>
                
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>5</td>
                                                <td>ناجي</td>
                                                <td>شاهين</td>
                                                <td>@najee</td>
                                                <td>
                                                    <button type="submit" value="submit" class="btn btn-danger "
                                                    style="width:50px">حذف</button>
                
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>6</td>
                                                <td>دعاء</td>
                                                <td>السوالمي</td>
                                                <td>@d.alsawalmy</td>
                                                <td>
                                                    <button type="submit" value="submit" class="btn btn-danger "
                                                    style="width:50px">حذف</button>
                
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>


                <!-- ============================================================== -->
                <!-- End PAge Content -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Right sidebar -->
                <!-- ============================================================== -->
                <!-- .right-sidebar -->
                <!-- ============================================================== -->
                <!-- End Right sidebar -->
                <!-- ============================================================== -->
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
</div>        
<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
