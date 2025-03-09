<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@include file="/WEB-INF/jsp/layout/login-header.jsp"%>

<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>
<style>

.password-container{
 
  position: relative;
}
.password-container input[type="password"],
.password-container input[type="text"]{
 
}
.fa-eye{
  position: absolute;
  top: 28%;
  left: 8%;
  cursor: pointer;
  color: #26619cb3;
}

</style>


<body class="crm_body_bg">    
<div class="main_content_iner ">
<div class="container-fluid p-0">
<div class="row justify-content-center">

<div class="col-lg-8">
  

        
<div class="white_box mb_30">
<div class="row justify-content-center" style="margin-top: 5%;">
<div class="col-lg-6">

<div class="modal-content cs_modal">
<div class="modal-header justify-content-center theme_bg_1">
<img src="<c:url value="/img/khubrat-logo-white.png"/>"  alt>
</div>
<div class="modal-body">
<form class="animate"
				action="${pageContext.request.contextPath}/user/first-change-password-save"
				  method="post" onsubmit="return validateForm()" >
				  
 <input type="hidden" name="id" value="${id}">
<div class="input-icons password-container">
	<input type="password" autocomplete="off"  placeholder="كلمة المرور القديمة" name="oldPassword" id="oldPassword" class="form-control " value="${oldPassword}" required>
								
	<i class="fa fa-eye" id="eye_old"></i>
</div>
<div class="input-icons password-container">
	<input type="password" autocomplete="off"  placeholder="كلمة المرور الجديدة" name="newPassword" id="newPassword" class="form-control " value="${newPassword}" >
								
	<i class="fa fa-eye" id="eye_new"></i>
</div>
<div class="input-icons password-container">
	<input type="password" autocomplete="off"  placeholder="تأكيد كلمة المرور" name="confirmPassword" id="confirmPassword" class="form-control "  >
								
	<i class="fa fa-eye" id="eye_conf"></i>
</div>
<button type="submit"  class="btn_1 full_width text-center"> تأكيد </button>

<c:if test="${error_msg!=null}">
						<p class="danger-color">${error_msg}</p>
					</c:if>

					


</form>
</div>
</div>
</div>


    
   
</div>
</div>
</div>
</div>
</div>
</div>







<!--  
<div class="row" style="padding-top: 22vh">
	<div class="col-sm-5 col-md-5 col-lg-5 ">
		<div class="row">
			<center>
				<img src="<c:url value="/assets/images/logo.png"/>" alt="homepage"
					style="width: 10rem; height: 10rem;" />

			</center>
			<div class="row">&nbsp</div>
			<center>
				<p class="display-7" >المنصة
					السورية للمشتريات</p>

			</center>

		</div>
	</div>
	<div class="col-sm-7 col-md-7 col-lg-7 ">
	<label style="color:red">  ${ error_msg}  </label>

		<div class="card " style="width: 80%">
			<div class="card-body" style="box-shadow: 5px 10px #81a3c680;">

				<form class="animate"
				action="${pageContext.request.contextPath}/user/first-change-password-save"
				  method="post" onsubmit="return validateForm()" >
				  
				  <input type="hidden" name="id" value="${id}">

					 <div class=" form-group  row mt-5">
                                <label class="form-label col-lg-3">   كلمة المرور القديمة</label>
                                <div class="col-lg-6 password-container">
                                    <input type="password" name="oldPassword" id="oldPassword" class="form-control " value="${oldPassword}" required>
<i class="fa fa-eye" id="eye_old"></i>
                                </div>
                                <div class="invalid-feedback">
                               ${ error_msg}                              
                                  </div>
                                 

                            </div>
					
					 <div class=" form-group  row">
                                <label class="form-label col-lg-3"> كلمة المرور الجديدة   </label>
                                <div class="col-lg-6 password-container">
                                    <input type="password" name="newPassword" id="newPassword" class="form-control " value="${newPassword}"  >
<i class="fa fa-eye" id="eye_new"></i>
                                </div>
                                


                            </div>
                            


					<div class=" form-group  row">
                                <label class="form-label col-lg-3">تأكيد كلمة المرور </label>
                                <div class="col-lg-6 password-container">
                                    <input type="password" name="confirmPassword" id="confirmPassword" class="form-control "   >
<i class="fa fa-eye" id="eye_conf"></i>
                                 
                                </div>
                               


                            </div>

					<div class="row">&nbsp</div>

					 <center>
                           
                                <div class="form-group">
                                    <button type="submit" value="submit" class="btn btn-primary blue-btn"
                                    style="width:75px">تأكيد</button>
                                  </div>
                              
                               
                                  
                                  

                            </center>
				

				</form>

			</div>

		</div>


	</div>







</div>-->


<%@include file="/WEB-INF/jsp/layout/login-footer.jsp"%>
<script type="text/javascript">


function validateForm() {
	
	  
	  if (document.getElementById("newPassword").value != document.getElementById("confirmPassword").value) {
		  infoAlert('انتبه','كلمة المرور غير متطابقة  ','تم');
		  return false;
	  }
	
		var re = /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-zA-Z\u0600-\u06FF]).{6,16}$/;
	     if(! re.test(document.getElementById("newPassword").value)){
	    	  
	    	 infoAlert('انتبه','    يجب أن تحوي الكلمة على محرف خاص ورقم  واحد على الأقل بطول بين 6 و ال 16 محرف ','تم');
	    	 document.getElementById("newPassword").value = "";
	    	 document.getElementById("confirmPassword").value = "";
	   		  return false;
	     }
	     
	    
	    return true;
	 
	}



const passwordInputOld = document.querySelector("#oldPassword")
const eyeOld = document.querySelector("#eye_old")




const passwordInputNew = document.querySelector("#newPassword")
const eyeNew = document.querySelector("#eye_new")


const passwordInputConf = document.querySelector("#confirmPassword")
const eyeConf = document.querySelector("#eye_conf")



eyeOld.addEventListener("click", function() {
this.classList.toggle("fa-eye-slash");
const type = passwordInputOld.getAttribute("type") === "password" ? "text" : "password";
passwordInputOld.setAttribute("type", type);
})

eyeNew.addEventListener("click", function() {
this.classList.toggle("fa-eye-slash");
const type = passwordInputNew.getAttribute("type") === "password" ? "text" : "password";
passwordInputNew.setAttribute("type", type);
})

eyeConf.addEventListener("click", function() {
this.classList.toggle("fa-eye-slash");
const type = passwordInputConf.getAttribute("type") === "password" ? "text" : "password";
passwordInputConf.setAttribute("type", type);
})
</script>

