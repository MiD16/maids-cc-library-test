<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/layout/header.jsp"%>


            
            
              <!-- end section -->
       
<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp" %>
<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
    <script>
      $('#dataTable-1').DataTable(
      {
        autoWidth: true,
        "lengthMenu": [
          [8, 32, 64, -1],
          [8, 32, 64, "All"]
        ]
      });
    </script>
