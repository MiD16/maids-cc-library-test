<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/layout/header.jsp"%>
<%@include file="/WEB-INF/jsp/layout/left-sidebar.jsp"%>
<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>



<div class="main_content_iner ">

	<div class="container-fluid p-0">
		<div class="row justify-content-center">
			<div class="col-lg-12">
				<div class="white_card card_height_100 mb_30">
					<div class="white_card_header">
						<div class="box_header m-0">
							<div class="main-title">
								<h4 class="m-0">سجل العمليات </h4>
							</div>
							
						</div>
					</div>
					<div class="white_card_body">
						<div class="QA_section">
							
							<div class="QA_table mb_30">

								<table class="table  " id="datatable1">
									<thead>
										<tr>
											<th scope="col">اسم المستخدم</th>
											<th scope="col">الوقت</th>
											<th scope="col">نوع العملية</th>
											<th scope="col">الوصف</th>
											


										</tr>
									</thead>
									<tbody>
									<c:forEach var="log" items="${logactionList}">
										<tr>
											
											<td>${log.user.first_name } ${log.user.last_name}</td>

											<td>${log.action_date}</td>
											<td>${log.action.action_name_ar}</td>
											<td>${log.description}</td>
										
											

										</tr>
									</c:forEach>
										










									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-12"></div>
		</div>
		
		 <jsp:include page="/WEB-INF/jsp/layout/pagination.jsp">  
		 		 <jsp:param name="controller_url" value="/log/logaction/index" />
			   
			   </jsp:include>
		
		<!--  <nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
			<c:if test="${!pageInfo.hasPrevious }">
				<li class="page-item disabled">
				<a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
				</li>
			
			</c:if>
			
			<c:if test="${pageInfo.hasPrevious }">
				<li class="page-item ">
				<a class="page-link" href="<c:url value='/log/logaction/index?page=${pageInfo.currentPage-1}' />"  >Previous</a>
				</li>
			
			</c:if>
			
			<li class="page-item active" aria-current="page"><a class="page-link" href="#">${pageInfo.currentPage+1 }</a></li>
			
			<c:if test="${pageInfo.hasNext }">
				<c:if test="${pageInfo.currentPage+2 < pageInfo.totalPages}">
					
					<li class="page-item"><a class="page-link" href="<c:url value='/log/logaction/index?page=${pageInfo.currentPage+1}' />">${pageInfo.currentPage+2 }</a></li>
				</c:if>
				
				<c:if test="${pageInfo.currentPage+3 < pageInfo.totalPages}">
					
					<li class="page-item"><a class="page-link" href="<c:url value='/log/logaction/index?page=${pageInfo.currentPage+2}' />" >${pageInfo.currentPage+3 }</a></li>
				</c:if>
				
				<li class="page-item">
					<a class="page-link" href="<c:url value='/log/logaction/index?page=${pageInfo.currentPage+1}' />">Next</a>
				</li>
			
			</c:if>
			
			
			
			
			</ul>
         </nav>-->
	</div>
</div>




<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
