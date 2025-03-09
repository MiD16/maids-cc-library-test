
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="/WEB-INF/jsp/errorPage.jsp"%>

<%@include file="/WEB-INF/jsp/layout/header.jsp"%>

<div class=".container-nav    ">
	<div class="row " style="border-bottom: 1px solid #e9ecef;">
		<div class="col-auto col-md-10  ">
			<nav aria-label="breadcrumb " class="second ">
				<ol class="breadcrumb indigo lighten-6 first  px-md-4"
					style="background-color: #ffffff00">
					<li class="breadcrumb-item font-weight-bold"><a
						class="black-text inactive text-uppercase  " href="#"><span
							class="mr-md-3 mr-2"> تغير كلمة المرور</span></a><i
						class="fe fe-angle-double-right " aria-hidden="true"></i></li>

				</ol>
			</nav>
		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="row justify-content-center">
		<div class="col-12 ">

			<div class="row mt-3">
				<div class="col-md-10"></div>
				<div class="col-md-2"
					style="text-align: left; align-content: center">

					<span class="date"> <%@ taglib prefix="fmt"
							uri="http://java.sun.com/jsp/jstl/fmt"%> <jsp:useBean
							id="now" class="java.util.Date" /> <fmt:formatDate
							value="${now}" pattern="yyyy-MM-dd" />
					</span>
				</div>
			</div>
			<p class="card-text"></p>
			<div class="card shadow">

				<div class="card-body">


					<!-- non customer individual search criteria  -->

					<div id="nonIndiv" style="display: block">



						<form id="password_form" class="needs-validation " novalidate method="post"
							action="${pageContext.request.contextPath}/user/change-password-save">


							<input type="hidden" name="id" value="${id}">



							<div class="wizard clearfix ">
								<div class="col-md-6">
						
										<div class="form-group">
									<label for="oldPassword">كلمة المرور القديمة * </label>
									<div class="input-group">
										<input type="Password" required class="form-control "
											id="oldPassword" name="oldPassword"
											aria-describedby="button-addon2" value="${oldPassword}">
										<div class="input-group-append">
											<div class="input-group-text" >
												<span class="fe fe-eye fe-16  oldPassword-toggle-icon"></span>
											</div>
										</div>
									</div>
								</div>		
								<div class="form-group">
									<label for="newPassword">كلمة المرور الجديدة * </label>
									<div class="input-group">
										<input type="Password" required class="form-control "
											id="newPassword" name="newPassword"
											aria-describedby="button-addon2" value="${newPassword}">
										<div class="input-group-append">
											<div class="input-group-text" >
												<span class="fe fe-eye fe-16  newPassword-toggle-icon"></span>
											</div>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="confirmPassword">  تأكيد كلمة المرور الجديدة* </label>
									<div class="input-group">
										<input type="Password" required class="form-control "
											id="confirmPassword" name="confirmPassword"
											aria-describedby="button-addon2" value="${confirmPassword}">
										<div class="input-group-append">
											<div class="input-group-text" >
												<span class="fe fe-eye fe-16  confirmPassword-toggle-icon"></span>
											</div>
										</div>
									</div>
								</div>
							
								</div>







								<%-- 																		         <div class="form-group col-md-6"
								id="is_enabledDiv">
								<p class="mb-2">
								 فعال    </p>
								 	<c:if
													test="${role.is_enabled==1 ||role.is_enabled==null}">
														<div class=" custom-radio form-check-inline">
									<input value="0" type="radio"
										id="is_enabled2"
										name="is_enabled"
										class="custom-control-input"> <label
										class="custom-control-label"
										for="is_enabled2"> لا  </label>
								</div>
								<div class=" custom-radio form-check-inline">
									<input value="1" type="radio" id="is_enabled"
										name="is_enabled"
										class="custom-control-input" checked > <label
										class="custom-control-label"
										for="is_enabled">نعم </label>
								</div>

							

</c:if>
								 	<c:if
													test="${role.is_enabled==0 }">
													
														<div class=" custom-radio form-check-inline">
									<input value="0" type="radio"
										id="is_enabled2"
										name="is_enabled"
										class="custom-control-input" checked> <label
										class="custom-control-label"
										for="is_enabled2"> لا  </label>
								</div>
								<div class=" custom-radio form-check-inline">
									<input value="1" type="radio" id="is_enabled"
										name="is_enabled"
										class="custom-control-input"  > <label
										class="custom-control-label"
										for="is_enabled">نعم </label>
								</div>
								
								

							

</c:if>
							</div>	 --%>

								<%-- 		<div class="form-group col-md-6" style="align-content: center">
								<div class="custom-control custom-switch">
									<c:if
										test="${role.is_enabled==1 ||role.is_enabled==null}">
										<input type="checkbox" class="custom-control-input" checked
											onchange="toggleEnabled(this)"  id="is_enabled" value="1">
									</c:if>
									<c:if
										test="${  role.is_enabled==0}">
										<input type="checkbox" class="custom-control-input"
											onchange="toggleEnabled(this)"  id="is_enabled">
									</c:if>
									<label class="custom-control-label" for="is_enabled">
										تفعيل الدور</label> <input type="text"
										name="is_enabled" id="is_enabledInput"
										value="${role.is_enabled}">
								</div>

							</div> --%>





								<div class="actions clearfix">
									<ul role="menu" aria-label="Pagination">

										<li aria-hidden="false" aria-disabled="false"><button
												type="submit" class="btn mb-2 btn-primary">حفظ</button> <%-- 		 	<c:if test='${role.ID!=0}'>
				
								
													<li class="" aria-disabled="false"><a
										href="<c:url value='/roleaction/index?id=${role.ID}' />"
										role="menuitem">تعديل صلاحيات الدور</a></li> </c:if> --%>
									</ul>
								</div>

							</div>

						</form>

						<!-- non customer individual search criteria  -->




					</div>

				</div>
			</div>



			<div class="clear"></div>
		</div>

		<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>

		<script>
		document.addEventListener('DOMContentLoaded', function() {
		    const newPasswordField = document.getElementById('newPassword');
		    const oldPasswordField = document.getElementById('oldPassword');
		    const confirmPasswordField = document.getElementById('confirmPassword');
		    const togglenewPasswordIcon = document.querySelector('.newPassword-toggle-icon');
		    const toggleoldPasswordIcon = document.querySelector('.oldPassword-toggle-icon');
		    const toggleconfirmPasswordIcon = document.querySelector('.confirmPassword-toggle-icon');
		    togglenewPasswordIcon.addEventListener('click', function() {
		        // Toggle input type between text and password
		        if (newPasswordField.type === 'password') {
		        	newPasswordField.type = 'text';
		        	togglenewPasswordIcon.classList.remove('fe-eye');
		        	togglenewPasswordIcon.classList.add('fe-eye-off');
		        } else {
		        	newPasswordField.type = 'password';
		        	togglenewPasswordIcon.classList.remove('fe-eye-off');
		        	togglenewPasswordIcon.classList.add('fe-eye');
		        }
		        
		 
		    });	    toggleoldPasswordIcon.addEventListener('click', function() {
		        // Toggle input type between text and password
		        if (oldPasswordField.type === 'password') {
		        	oldPasswordField.type = 'text';
		        	toggleoldPasswordIcon.classList.remove('fe-eye');
		        	toggleoldPasswordIcon.classList.add('fe-eye-off');
		        } else {
		        	oldPasswordField.type = 'password';
		        	toggleoldPasswordIcon.classList.remove('fe-eye-off');
		        	toggleoldPasswordIcon.classList.add('fe-eye');
		        }
		        
		 
		    });
		    toggleconfirmPasswordIcon.addEventListener('click', function() {
		        // Toggle input type between text and password
		        if (confirmPasswordField.type === 'password') {
		        	confirmPasswordField.type = 'text';
		        	toggleconfirmPasswordIcon.classList.remove('fe-eye');
		        	toggleconfirmPasswordIcon.classList.add('fe-eye-off');
		        } else {
		        	confirmPasswordField.type = 'password';
		        	toggleconfirmPasswordIcon.classList.remove('fe-eye-off');
		        	toggleconfirmPasswordIcon.classList.add('fe-eye');
		        }
		        
		 
		    });
		    
		});
			$(document).ready(function() {
			
				 $("#password_form").on("submit", function (e) {
						var re = /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-zA-Z\u0600-\u06FF]).{6,16}$/;
			        	  if (document.getElementById("newPassword").value != document.getElementById("confirmPassword").value) {
			        		   e.preventDefault();
						
			        		  callDangerAlertWithoutUrl("info","رسالة تحذير","كلمة المرور الجديدة وتأكيدها غير متطابقتين ")
						 	  document.getElementById("newPassword").value = "";
					   	      document.getElementById("confirmPassword").value = "";
					//	callDangerAlert("info",'تأكيد كلمة المرور غير مطابق لكلمة المرور الجديدة',"رسالة تحذير"); 
					   	  

						 }
			     	
			        	  else if(! re.test(document.getElementById("newPassword").value)){
					    	  e.preventDefault();
					    	  callDangerAlertWithoutUrl("info","رسالة تحذير","يجب أن تحوي الكلمة على محرف خاص ورقم  واحد على الأقل بطول بين 6 و ال 16 محرف  ")
					    
					    	document.getElementById("newPassword").value = "";
					   	      document.getElementById("confirmPassword").value = "";
					  		
					    } 
			        	
					   
					

			        });
			});
		</script>
		<script>
			/*  if (document.getElementById("newPassword").value != document.getElementById("confirmPassword").value) {
					
				
				 
			
			callDangerAlert("info",'تأكيد كلمة المرور غير مطابق لكلمة المرور الجديدة',"رسالة تحذير"); */

			/*  }
			var re = /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-zA-Z\u0600-\u06FF]).{6,16}$/;
			    if(! re.test(document.getElementById("newPassword").value)){
			   	  alert("أك 6 و ال 16 م");
			   	 infoAlert('انتبه','    يجب أن تحوي الكلمة على محرف خاص ورقم  واحد على الأقل بطول بين 6 و ال 16 محرف ','تم');
			   	 document.getElementById("newPassword").value = "";
			   	 document.getElementById("confirmPassword").value = "";
			  		  return false;
			    }
			   
			   return true;
			 */
		</script>



		<%-- <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/layout/header.jsp"%>
<%@include file="/WEB-INF/jsp/layout/left-sidebar.jsp"%>
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
  color: #26619c;
}

</style>
<div>&nbsp</div>
 <div class="d-flex align-items-center" style="background-color:#dfe2e5a8; margin-right:17.4%">

                                <ol class="breadcrumb" style="background-color:#e4e8ec ;margin-top:5px;margin-right:8.5%; height:3vh">
                                    <li class="breadcrumb-item"><a href="<c:url value="index"/>"> تغيير كلمة السر</a></li>

                                </ol>
                                </div>

  <div class="page-wrapper" >
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
          <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb" >
                <div class="row align-items-center">
           
                    
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
                <label style="color:red">  ${ error_msg}  </label>
                  <div class="row">
                    <div class="card col-sm-8 col-md-8 col-lg-8">
                        <form:form method="post"
		action="${pageContext.request.contextPath}/user/change-password-save"
		onsubmit="return validateForm()">
		
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
                            <center>
                           
                                <div class="form-group">
                                    <button type="submit" value="submit" class="btn btn-primary blue-btn"
                                    style="width:75px">تأكيد</button>
                                  </div>
                              
                               
                                  
                                  

                            </center>
                          
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

<script type="text/javascript">

$(document).ready( function(){
	 $('#changePasswordDivID').addClass("active");
	});

function validateForm() {
	  
	  if (document.getElementById("newPassword").value != document.getElementById("confirmPassword").value) {
		  infoAlert('تحذير','تأكيد كلمة المرور غير مطابق لكلمة المرور الجديدة','تم');
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
 --%>