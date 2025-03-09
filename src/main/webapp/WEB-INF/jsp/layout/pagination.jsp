<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
	  <c:set var="baseUrl" value='${param.controller_url}' />
	 	 
	  
	  	<c:set var="baseUrl" value='${baseUrl.concat("?") }' /> 
	  
	  
  <c:if test="${paramValues.size() >1}">
		  <c:forEach items="${param}" var="entry">
		  
		  	<c:if test='${not entry.key.equals("controller_url")  && not entry.key.equals("page")  }'>
		  			   <c:set var="baseUrl" value='${baseUrl.concat(entry.key).concat("=").concat(entry.value).concat("&") }' /> 
		  	
		  	</c:if>
		  		
	 	</c:forEach> 
	  </c:if>
	  <br>




		



<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
			<c:if test="${!pageInfo.hasPrevious }">
				<li class="page-item disabled">
				<a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
				</li>
			
			</c:if>
			
			<c:if test="${pageInfo.hasPrevious }">
				<li class="page-item ">
				<a class="page-link" href="<c:url value='${baseUrl}page=${pageInfo.currentPage-1}' />"  >Previous</a>
				</li>
			
			</c:if>
			
			<li class="page-item active" aria-current="page"><a class="page-link" href="#">${pageInfo.currentPage+1 }</a></li>
			
			<c:if test="${pageInfo.hasNext }">
				<c:if test="${pageInfo.currentPage+2 < pageInfo.totalPages}">
					
					<li class="page-item"><a class="page-link" href="<c:url value='${baseUrl}page=${pageInfo.currentPage+1}' />">${pageInfo.currentPage+2 }</a></li>
				</c:if>
				
				<c:if test="${pageInfo.currentPage+3 < pageInfo.totalPages}">
					
					<li class="page-item"><a class="page-link" href="<c:url value='${baseUrl}page=${pageInfo.currentPage+2}' />" >${pageInfo.currentPage+3 }</a></li>
				</c:if>
				
				<li class="page-item">
					<a class="page-link" href="<c:url value='${baseUrl}page=${pageInfo.currentPage+1}' />">Next</a>
				</li>
			
			</c:if>
			
			
			
			
			</ul>
         </nav>
         
         
   