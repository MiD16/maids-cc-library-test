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
		<li class="breadcrumb-item"><a href="<c:url value="#"/>">
				  الملف الشخصي</a></li>
	</ol>
</div>


 <div class="page-wrapper" >

 
    
         <div class="container-fluid" >

			<div class="row">
          <div class="">
            <div class=" card col-sm-10 col-md-10 col-lg-10">
             
                  
                 
							
							
                      <!-- Nav tabs -->
                      <ul class="nav nav-tabs profile-tab" role="tablist">
                        <li class="nav-item">
                        <c:if test="${error_msg==null }">
                        
                         <a class="nav-link active" data-bs-toggle="tab" href="#company"
                                role="tab">معلومات الشركة</a>
                                </c:if>
                                <c:if test="${error_msg!=null }">
                         <a class="nav-link " data-bs-toggle="tab" href="#company"
                                role="tab">معلومات الشركة</a>
                                </c:if>
                        </li>
                        <li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#contractor"
                                role="tab">معلومات المفوض</a> </li>
                        <li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#commercialRecordPeaper"
                                role="tab">السجل التجاري</a>
                        </li>
                         <li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#formSheetPeaper"
                                role="tab"> طلب التسجيل</a>
                        </li>
                         <li class="nav-item"> <a class="nav-link" data-bs-toggle="tab" href="#publicKey"
                                role="tab"> المفتاح العام</a>
                        </li>
                       	<sec:authorize access="hasPermission('user','change_password')">
                         <li class="nav-item"> 
                         <c:if test="${error_msg==null }">
                         <a class="nav-link" data-bs-toggle="tab" href="#changePassword"
                                role="tab"> تغيير كلمة السر</a>
                                </c:if>
                                <c:if test="${error_msg!=null }">
                         <a class="nav-link active"  data-bs-toggle="tab" href="#changePassword"
                                role="tab"> تغيير كلمة السر</a>
                                </c:if>
                        </li>
                        </sec:authorize>
                    </ul>

                     <!-- Tab panes -->
                    
							
                      
                     <div class="tab-content">
                        <div 
                        <c:if test="${error_msg==null }">
                        class="tab-pane active" 
                        </c:if>
                        <c:if test="${error_msg!=null }">
                        class="tab-pane " 
                        </c:if>
                        id="company" role="tabpanel">
                            <div class="card-body">
                           
                             <div class="row">
                                <div class=" form-group col-sm-5 col-md-5 col-lg-5">
                                    <label class="form-label">رقم السجل التجاري</label>
                                    <input type="text" name="commercialRecord" id="commercialRecord" class="form-control" readonly value="${commercialRecord}">
                                   
                                </div>
                                <div class=" form-group col-sm-2 col-md-2 col-lg-2"></div>

                                <div class=" form-group col-sm-5 col-md-5 col-lg-5">
                                    <label class="form-label">المحافظة</label>
                                <input  name="city.nameArabic" id="nameArabic" class="form-select shadow-none  form-control "  readonly value="${contractor.city.nameArabic}">
       
                                </div>

                             </div>
                             <div class="row">
                                <div class=" form-group col-sm-5 col-md-5 col-lg-5">
                                    <label class="form-label">تاريخ بداية السجل</label>
                                    <input type="text"  name="startCompanyDate" id="startCompanyDate" class="form-control" value="${startCompanyDate}" readonly>
                                    <div class="invalid-feedback">
                                     الرجاء إدخال تاريخ البداية                               
                                      </div>
                                      <div class="valid-feedback">
                                      </div>
                                </div>
                                <div class=" form-group col-sm-2 col-md-2 col-lg-2"></div>

                                <div class=" form-group col-sm-5 col-md-5 col-lg-5">
                                    <label class="form-label">تاريخ نهاية السجل</label>
                                    <input type="text" name="endCompanyDate" id="endCompanyDate" class="form-control"  value="${endCompanyDate}" readonly >
                                    <div class="invalid-feedback">
                                     الرجاء إدخال تاريخ انتهاء الصلاحية                               
                                      </div>
                                      <div class="valid-feedback">
                                      </div>
                                    </div>
                            </div>
                            <div class="row">
                                <div class=" form-group col-sm-5 col-md-5 col-lg-5">
                                    <label class="form-label">نوع الشركة</label>
                                    <input type="text" name="companyType" id="companyType" class="form-control" value="${contractor.companyType.getName()}" readonly >
                                    <div class="invalid-feedback">
                                     الرجاء إدخال نوع الشركة                               
                                      </div>
                                      <div class="valid-feedback">
                                      </div>
                                </div>
                                <div class=" form-group col-sm-2 col-md-2 col-lg-2"></div>

                                <div class=" form-group col-sm-5 col-md-5 col-lg-5">
                                    <label class="form-label">اسم الشركة  </label>
                                    <input type="text" name="companyName" id="companyName" class="form-control" value="${companyName}" readonly >
                                    <div class="invalid-feedback">
                                     الرجاء إدخال اسم الشركة                                 
                     `                 </div>
                                      <div class="valid-feedback">
                                      </div>
                                    </div>
                            </div>
                            <div class="row">
                                <div class=" form-group col-sm-5 col-md-5 col-lg-5">
                                    <label class="form-label">الفرع الرئيسي </label>
                                    <input type="text" name="companyMainBranch" id="companyMainBranch" class="form-control" value="${companyMainBranch}" readonly >
                                    <div class="invalid-feedback">
                                     الرجاء إدخال الفرع الرئيسي                               
                                      </div>
                                      <div class="valid-feedback">
                                      </div>
                                </div>
                                <div class=" form-group col-sm-2 col-md-2 col-lg-2"></div>

                                <div class=" form-group col-sm-5 col-md-5 col-lg-5">
                                    <label class="form-label"> الفروع  </label>
                                    <input type="text" name="companyBranches" id="companyBranches" class="form-control" value="${companyBranches}" readonly >
                                    <div class="invalid-feedback">
                                     الرجاء إدخال الفروع                               
                                      </div>
                                      <div class="valid-feedback">
                                      </div>
                                    </div>
                            </div>
                           
                            <div class="row">
                                <div class=" form-group ">
                                    <label class="form-label">  النشاط الأساسي حسب السجل التجاري </label>
                                    <textarea rows="4"  name="companyActivity" id="companyActivity" class="form-control" style="margin-right: 0px " value="" readonly >${companyActivity}</textarea>
                                    
                                    
                                    <div class="invalid-feedback">
                                     الرجاء إدخال رقم السجل التجاري                               
                                      </div>
                                      <div class="valid-feedback">
                                      </div>
                                </div>

                             
                            </div>
                           
                         </div>
                      </div>
                        
                     

           
                        <div class="tab-pane" id="contractor" role="tabpanel">
                            <div class="card-body">
                              
                                <div class="row">
                                    <div class=" form-group col-sm-5 col-md-5 col-lg-5">
                                        <label class="form-label"> الاسم الأول </label>
                                        <input type="text" name="user.first_name" id="user.first_name" class="form-control" value="${firstName}" readonly >
                                        <div class="invalid-feedback">
                                         الرجاء إدخال رقم السجل التجاري                               
                                          </div>
                                          <div class="valid-feedback">
                                          </div>
                                    </div>
    
                                   
                                </div>
                                <div class="row">
                                    <div class=" form-group col-sm-5 col-md-5 col-lg-5">
                                        <label class="form-label">  اسم الأب </label>
                                        <input type="text" name="user.father_name" id="user.father_name" class="form-control" value="${fatherName}" readonly>
                                        <div class="invalid-feedback">
                                         الرجاء إدخال رقم السجل التجاري                               
                                          </div>
                                          <div class="valid-feedback">
                                          </div>
                                    </div>
    
                                   
                                </div>
                                <div class="row">
                                    <div class=" form-group col-sm-5 col-md-5 col-lg-5">
                                        <label class="form-label"> اسم العائلة  </label>
                                        <input type="text" name="user.last_name" id="user.last_name" class="form-control" value="${lastName}" readonly>
                                        <div class="invalid-feedback">
                                         الرجاء إدخال رقم السجل التجاري                               
                                          </div>
                                          <div class="valid-feedback">
                                          </div>
                                    </div>
    
                                   
                                </div>
                                <div class="row">
                                    <div class=" form-group col-sm-5 col-md-5 col-lg-5">
                                        <label class="form-label"> الرقم الوطني  </label>
                                        <input type="text" name="nationalNumber" id="nationalNumber" class="form-control" value="${nationalNumber}" readonly >
                                        <div class="invalid-feedback">
                                         الرجاء إدخال رقم السجل التجاري                               
                                          </div>
                                          <div class="valid-feedback">
                                          </div>
                                    </div>
    
                                   
                                </div>
                                <div class="row">
                                    <div class=" form-group col-sm-5 col-md-5 col-lg-5">
                                        <label class="form-label"> المسمى الوظيفي   </label>
                                        <input type="text" name="jobTitle" id="jobTitle" class="form-control" value="${jobTitle}" readonly>
                                        <div class="invalid-feedback">
                                         الرجاء إدخال رقم السجل التجاري                               
                                          </div>
                                          <div class="valid-feedback">
                                          </div>
                                    </div>
    
                                   
                                </div>
                                <div class="row">
                                    <div class=" form-group col-sm-5 col-md-5 col-lg-5">
                                        <label class="form-label">  رقم الموبايل   </label>
                                        <input type="text" name="user.mobile" id="user.mobile" class="form-control" value="${mobile}" readonly >
                                        <div class="invalid-feedback">
                                         الرجاء إدخال رقم السجل التجاري                               
                                          </div>
                                          <div class="valid-feedback">
                                          </div>
                                    </div>
    
                                   
                                </div>
                                <div class="row">
                                    <div class=" form-group col-sm-5 col-md-5 col-lg-5">
                                        <label class="form-label">  رقم الهاتف   </label>
                                        <input type="text" name="phoneNumber" id="phoneNumber" class="form-control" value="${phoneNumber}" readonly>
                                        <div class="invalid-feedback">
                                         الرجاء إدخال رقم السجل التجاري                               
                                          </div>
                                          <div class="valid-feedback">
                                          </div>
                                    </div>
    
                                   
                                </div>
                                
                               
                                
                            </div>
                        </div>
                    

                    <c:forEach var="document" items="${documentList}">
                    
                    <c:if test="${document.documentType.nameEnglish == 'Commercial Record'}">
                   
                        <div class="tab-pane" id="commercialRecordPeaper" role="tabpanel">
                            <div class="card-body">
                            
                            <div class="row mt-5 mb-5">
								    <center>
								     <center> <h4>  صورة عن السجل التجاري</h4></center>	
								       <div class="col-sm-3 col-md-3 col-lg-3" style="color:black ; padding-top:1% ; padding-left:0%">								       
								          <a href="<c:url value="${document.path }" />"  download>
								       
								        <img  src="<c:url value="/assets/images/pdf.jpg"/>" width="130" height="130" /> 
								      </a>
								      </div>
								      
                                  	  
                                       
                                        </center>								       
								    </div>
                          
                                 
                                
                              
                              
                                
                               
                            </div>
                        </div>
                        </c:if>
                     <c:if test="${document.documentType.nameEnglish == 'Form Sheet'}">
                        
                        <div class="tab-pane" id="formSheetPeaper" role="tabpanel">
                            <div class="card-body">
                            
                            <div class="row mt-5 mb-5">
								    <center>
								     <center> <h4>  صورة عن  طلب التسجيل على المنصة</h4></center>	
								       <div class="col-sm-3 col-md-3 col-lg-3" style="color:black ; padding-top:1% ; padding-left:0%">								       
								          <a href="<c:url value="${document.path }" />"  download>
								       
								        <img  src="<c:url value="/assets/images/pdf.jpg"/>" width="130" height="130" /> 
								      </a>
								      </div>
								      
                                  	  
                                       
                                        </center>								       
								    </div>
                            
                           
                                 
                                
                              
                              
                                
                               
                            </div>
                        </div>
                        </c:if>
                         </c:forEach>
                         
                         
                         <div class="tab-pane" id="publicKey" role="tabpanel">
                            <div class="card-body">
                          <div class="container-fluid" >
                          
                             <div class=" form-group  row mt-1">
                                <label class="form-label col-lg-3">    المفتاح العام</label>
                                <div class="col-lg-6">
                                    <a href="<c:url value="/uploads${contractor.user.publicKeyPath }" />"  download>
<i class="btn fa fa-download" title="تنزيل" style="font-size: 20px; color: #26619C"></i>
</a>
                                </div>
                               
                                 

                            </div>
                          <form:form method="post"
		action="${pageContext.request.contextPath}/user/change-publikKey-save?id=${contractor.id}&fromContractor=1"
		enctype="multipart/form-data"
		>
                              <div class=" form-group  row mt-1">
                                <label class="form-label col-lg-3">   تغيير المفتاح العام</label>
                                <div class="col-lg-6">
                                    <input 
                                    onchange="Filevalidation('publicKeyInput')"
                                    accept=".cer" type="file" name="publicKey" id="publicKeyInput" class="form-control " required>

                                </div>
                             
                                 

                            </div>
                            	<sec:authorize 
                            	access="hasPermission('user','change_publicKey')">
                             <div class="form-group row">
                                <div class="form-label col-lg-3"></div>
                                    <div class="col-lg-6">
                                    <button type="submit" value="submit" class="btn blue-btn btn-primary "
                                    style="width:75px">تأكيد</button>
                                    </div>
                                  </div>
                                  </sec:authorize>
                          </form:form>
                          </div>
                            </div>
                            </div>
 <div 
                        
                        <c:if test="${error_msg==null }">
                        class="tab-pane " 
                        </c:if>
                        <c:if test="${error_msg!=null }">
                        class="tab-pane active" 
                        </c:if>
 id="changePassword" role="tabpanel">
                            <div class="card-body">
                            <div class="container-fluid" >
                <!-- ============================================================== -->
                <!-- Start Page Content -->
                <!-- ============================================================== -->
                <c:if test=" ${ error_msg!=null} ">
                <label style="color:red">  ${ error_msg}  </label>
                 </c:if>
                   <label style="color:red">  ${ error_msg}  </label>
                        <form:form method="post"
		action="${pageContext.request.contextPath}/user/change-password-save?fromProfile=1"
		onsubmit="return validateForm()">
		
		<input type="hidden" name="id" value="${id}">
		
		
		
		
		
                            <div class=" form-group  row mt-1">
                                <label class="form-label col-lg-3">   كلمة المرور القديمة</label>
                                <div class="col-lg-6">
                                    <input type="password" name="oldPassword" id="oldPassword" class="form-control " value="${oldPassword}" required>

                                </div>
                                <div class="invalid-feedback">
                               ${ error_msg}                              
                                  </div>
                                 

                            </div>
                            <div class=" form-group  row">
                                <label class="form-label col-lg-3"> كلمة المرور الجديدة   </label>
                                <div class="col-lg-6">
                                    <input type="password" name="newPassword" id="newPassword" class="form-control " value="${newPassword}"  >

                                </div>
                                


                            </div>
                            
                          
                            
                            
                            <div class=" form-group  row">
                                <label class="form-label col-lg-3">تأكيد كلمة المرور </label>
                                <div class="col-lg-6">
                                    <input type="password" name="confirmPassword" id="confirmPassword" class="form-control "  value="${confirmPassword}"  >

                                 
                                </div>
                               


                            </div>
                           
                           
                                <div class="form-group row">
                                <div class="form-label col-lg-3"></div>
                                    <div class="col-lg-6">
                                    <button type="submit" value="submit" class="btn blue-btn btn-primary "
                                    style="width:75px">تأكيد</button>
                                    </div>
                                  </div>
                              
                               
                                  
                                  

                            
                          
                        </form:form>
                        

                    
                   
               
                
               
               
            


            </div>
                              </div>
                              </div>
                    </div>
                    

                   
               

            </div>
            </div>
            <div class="col-sm-2 col-md-2 col-lg-3 ">
              
            </div>
           

                
           
         </div>
         
         
   
                                
                               
                                
                                </div>
                              
                                
                



                        
   
<div class="clear"></div>   
<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>


 </div>  
 <script>

 


 </script>
 <script>
 $(document).ready(function() {
		$('#pending-contractorDivID').addClass("active");
	});
	
 function rejectContractor(contractorId)
	{
		const swalWithBootstrapButtons = Swal.mixin({
			  customClass: {
			    confirmButton: 'btn red-btn confirm-swal',
			    cancelButton: 'btn  cancel-swal',
			  },
			  buttonsStyling: false
			});
			swalWithBootstrapButtons.fire({
			  title: "سبب الرفض",
			 
			  html: '<textarea placeholder="الرجاء ادخال سبب الرفض" id="inputId"  style="padding-right:5px;padding-top:15px;line-height:1;color:black ; width:85%" ></textarea>',
			  inputAttributes: {
			    autocapitalize: 'off'
			  },
			  showCancelButton: true,
			  confirmButtonText: "رفض",
			  showLoaderOnConfirm: true,
			  cancelButtonText: "تراجع",
			}).then((result) => {
			  if (result.isConfirmed) {
				 
				  window.location = '${pageContext.request.contextPath}/contractor/reject-contractor?id='+contractorId+'&msg='+document.getElementById('inputId').value;
				    
			  }
			})

		}
 
 	function myFunction(id) {

 		// Get the modal
 		var modal = document.getElementById("reject");

 		// Get the button that opens the modal
 		var btn = document.getElementById("myBtn");

 		// Get the <span> element that closes the modal
 		var span = document.getElementsByClassName("close")[0];
 		modal.style.display = "block";
 		console.log('ssssssssssssssssssss', id);

 		document.getElementById('formReject').action = '${pageContext.request.contextPath}/contractor/reject-contractor';
 				
 		document.getElementById('formReject').method = 'get';
 		var form = document.getElementById("form");

 		$(document).on("click", "#formreject-id", function(e) {

 			document.getElementById("form").submit();
 		});

 		$(document).on("click", "#close", function(e) {

 			modal.style.display = "none";
 		});

 		console.log(document.getElementById('form').action, form);

 	}


	 $('#sbmt').bind("click",function(n) {
         n.preventDefault();
         var $li = $('.nav-tabs').find('li'),
         i = $li.siblings('.active').index(),
         max = $li.length;

     if (i < max) {
       $li.find('[role="tab"]').eq(1).tab('show');
     }        
     	   });

   
     $('#sbmt2').bind("click",function(n2) {
         n2.preventDefault();
         var $li = $('.nav-tabs').find('li'),
         i = $li.siblings('.active').index(),
         max = $li.length;

     if (i < max) {
       $li.find('[role="tab"]').eq(2).tab('show');
     }
         
     	   });

     $('#sbmt3').bind("click",function(n3) {
         n3.preventDefault();
         var $li = $('.nav-tabs').find('li'),
         i = $li.siblings('.active').index(),
         max = $li.length;

     if (i < max) {
       $li.find('[role="tab"]').eq(3).tab('show');
     }
         
     	   });


     function validateForm() {
   	  
   	  if (document.getElementById("newPassword").value != document.getElementById("confirmPassword").value) {
   		  infoAlert('انتبه','كلمة المرور غير مطابقة مع التأكيد','تم');
   		  return false;
   	  }
   	// var re = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
   	var re = /^(?=.*\d)(?=.*[!@#$%^&*])(?=.*[a-zA-Z\u0600-\u06FF]).{6,16}$/;
     if(! re.test(document.getElementById("newPassword").value)){
    	  
    	 infoAlert('انتبه','    يجب أن تحوي الكلمة على محرف خاص ورقم  واحد على الأقل بطول بين 6 و ال 16 محرف ','تم');
    	 document.getElementById("newPassword").value = "";
    	 document.getElementById("confirmPassword").value = "";
   		  return false;
     }
   	  
   	  
   	    
   	    return true;
   	 
   	}
     
     

 	function Filevalidation(name) {
 		const swalWithBootstrapButtons = Swal.mixin({
			customClass : {
				confirmButton : 'btn red-btn confirm-swal',
				cancelButton : 'btn  cancel-swal',
			},
			buttonsStyling : false
		});

		const fi = document.getElementById(name);

		// Check if any file is selected.
		if (fi.files.length > 0) {

			for (const i = 0; i <= fi.files.length - 1; i++) {

				const fsize = fi.files.item(i).size;
				const file = Math.round((fsize / 1024));
				// The size of the file.
				if (file > 2048) {
					swalWithBootstrapButtonsRed
							.fire({
								icon : 'question',
								iconHtml : '<i class="far fa-file-excel" style="font-size:40px"></i>',
								iconColor : '#d50000',
								title : "حجم الملف كبير ",
								text : "الرجاء اختيار ملف بحجم لا يتجاوز 2048 كيلوبايت",
								confirmButtonText : 'تم',
								showCloseButton : true,
							});
					document.getElementById(name).value = "";
				}

				else if (fi.files.item(i).name.substring(fi.files.item(i).name.lastIndexOf('.') + 1) != 'cer') {
	            	swalWithBootstrapButtons.fire({
	            		icon: 'question',
	            		  iconHtml: '<i class="far fa-file-excel" style="font-size:40px"></i>',
	            		  iconColor: '#d50000',
	            		  title: "يجب أن يكون الملف بصيغة cer  ",
	            		  text:"الرجاء اختيار ملف  cer بحجم لا يتجاوز 2 ميغابايت",
	            		  confirmButtonText:'تم' ,
	            		  showCloseButton: true,
	            		});
	                document.getElementById(name).value="";
	            } 
				

			}
		}

	}
 </script> 
 
