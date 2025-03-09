

 
    

   



<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<div class="footer_part" style="padding-right:0px ; ">
<div class="container">
<div class="row">
<div class="col-lg-12">
<div class="footer_iner text-center">
    <p>2024 ©  Designed by - Eman <a href="#"> <i class="ti-heart" style="color: red;"></i> </a><a href="#"> Dashboard</a></p>
</div>
</div>
</div>
</div>
</div>







<script src="<c:url value="/js/jquery1-3.4.1.min.js" />" ></script>

<script src="<c:url value="/js/popper1.min.js" />" ></script>

<script src="<c:url value="/js/bootstrap1.min.js" />" ></script>

<script src="<c:url value="/js/metisMenu.js" />" ></script>

<script src="<c:url value="/vendors/scroll/perfect-scrollbar.min.js" />" ></script>
<script src="<c:url value="/vendors/scroll/scrollable-custom.js" />" ></script>

<script src="<c:url value="/js/custom.js" />" ></script>

</body>
</html>



<script type="text/javascript" src="<c:url value="/js/bootstrap/datepicker.js" />"></script>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/datepicker.css" />" >
  
 <script src="<c:url value="/js/select2.js" />"></script>
	
<script src="<c:url value="/vendors/sweetalert/sweetalert.min.js" />"></script>
<script src="<c:url value="/vendors/sweetalert/sweetalert2.js" />"></script>








	
	
	<script type="text/javascript">

	function callSweetAlert(message)
	{

		swalWithBootstrapButtons2 = Swal.mixin({
			customClass : {
				confirmButton : 'btn bg-primary confirm-swal',
				confirmButtonText:'تم',
				cancelButtonColor: '#26619C',
				
			},
			buttonsStyling : false
		});

		swalWithBootstrapButtons2.fire({
			  icon: 'success',
			  title: message,
			  confirmButtonText: "تم",
			  confirmButtonColor: '#26619C',
			})
		}
	function callErrorAlert(message)
	{

		swalWithBootstrapButtons2 = Swal.mixin({
			customClass : {
				confirmButton : 'btn bg-danger confirm-swal',
				confirmButtonText:'تم',
				cancelButtonColor: '#d50000',
				
			},
			buttonsStyling : false
		});
	if(message.includes("<"))
		swalWithBootstrapButtons2.fire({
			  icon: 'error',
			  html: message,
			  confirmButtonText: "تم",
			  confirmButtonColor: '#d50000',
			  iconColor: '#d50000'
			})
			else
				swalWithBootstrapButtons2.fire({
					  icon: 'error',
					  title: message,
					  confirmButtonText: "تم",
					  confirmButtonColor: '#d50000',
					  iconColor: '#d50000'
					})
		}
</script>

    <script  language="javascript" type="text/javascript" >
    var message = "${success}";
    if(message!="")
        {
    	callSweetAlert(message)
    	message="";
        }

    var message_error = "${error}";
    if(message_error!="")
        {
    	callErrorAlert(message_error);
    	message_error="";
        }
    

	$(".datepicker").datepicker({ 
        format: 'yyyy-mm-dd'
    });
    $(".datepicker").on("change", function () {
        var fromdate = $(this).val();
       
    });

   
    function callConfirm(id,text,confirm,cancel,success,ok)
    {
    	const swalWithBootstrapButtons2 = Swal.mixin({
    		  customClass: {
    		    confirmButton: 'btn bg-primary confirm-swal',
    		    cancelButton: 'btn bg-danger cancel-swal',
    		  },
    		  buttonsStyling: false,
    			confirmButtonText : ok,
    			allowOutsideClick: false,
    			  
    		  
    		});
    	const swalWithBootstrapButtons = Swal.mixin({
    		  customClass: {
    		    confirmButton: 'btn bg-primary confirm-swal',
    		    cancelButton: 'btn bg-danger cancel-swal',
    		  },
    		  buttonsStyling: false
    		});
    		swalWithBootstrapButtons.fire({
    		  title: text,
    		  icon: 'question',
    		  iconHtml: '?',
    		  confirmButtonText: confirm,
    		  cancelButtonText: cancel,
    		  showCancelButton: true,
    		  showCloseButton: true,
      		allowOutsideClick: true,
    		  
    		  confirmButtonColor: '#26619C',
    		}).then((result) => {
    			  if (result.isConfirmed) {
    				  swalWithBootstrapButtons2.fire(
    						  success,
    					      '',
    					      'success',
    					      

    					    ).then((result) => {
    							  window.location = '${pageContext.request.contextPath}/op/aprove?id='+id;
    						    })
    				   
    				  } 
    				})
    	}
    function callAlertToComplete(title,reason,confirmButtonText,color){
    	const swalWithBootstrapButtons = Swal.mixin({
    		  customClass: {
    		    confirmButton: 'btn bg-primary confirm-swal',
    		    cancelButton: 'btn bg-danger cancel-swal',
    		  },
    		  buttonsStyling: false
    		});
    	const swalWithBootstrapButtons2 = Swal.mixin({
    		  customClass: {
    		    confirmButton: 'btn bg-primary confirm-swal',
    		    cancelButton: 'btn bg-danger cancel-swal',
    		  },
    		  buttonsStyling: false
    		});
    	if(color==1)
    	{swalWithBootstrapButtons2.fire({
    		  icon: 'info',
    		  iconColor: '#f57c00',
    		  title: title,
    		  text: reason,
    		  confirmButtonText: confirmButtonText,
    		  confirmButtonColor: '#26619C',
    		})
          }
    else
    	{swalWithBootstrapButtons.fire({
    		  icon: 'question',
    		  iconColor: '#d50000',
    		  title: title,
    		  text: reason,
    		  confirmButtonText: confirmButtonText,
    		  confirmButtonColor: '#26619C',
    		})
        }
    }
        function callAlert(inqestText,replyText,text,inquestTitle,replyTitle,confirmButtonText){

        	if(inqestText=="")
        		inqestText="لا يوجد نص استفسار"
        	if(replyText=="")
            	{
        		Swal.fire({      		  
          		  title: text,
          		  html:'<div style="color:#26619C ;font-size:25px">'+inquestTitle+'</div> <div>'+inqestText +'</div>'+'<div style="color:#26619C ;font-size:25px">'+replyTitle+'</div> <div>لم يتم الرد بعد</div>',
          		  confirmButtonText: confirmButtonText,
          		  allowOutsideClick: true,
          		  confirmButtonColor: '#26619C',
          		showCloseButton: true,
          		    		})
              }
            	
        else
            {
         	Swal.fire({
        	    title: text,
      		    html:'<div style="color:#26619C;font-size:25px ">'+inquestTitle+'</div> <div>'+inqestText +'</div>'+'<div style="color:#26619C ;font-size:25px">'+replyTitle+'</div> <div>'+replyText +'</div>',
          		confirmButtonText: confirmButtonText,
        		allowOutsideClick: true,
        		confirmButtonColor: '#26619C',
        		showCloseButton: true,	

      	  		})
            }
       
            }

        function callConfirmAlert(url,text,confirmButtonText,cancelButtonText){
        	const swalWithBootstrapButtons = Swal.mixin({
      		  customClass: {
      		    confirmButton: 'btn  bg-primary confirm-swal',
      		    cancelButton: 'btn bg-danger  cancel-swal',
      		  },
      		  buttonsStyling: false
      		});
      		swalWithBootstrapButtons.fire({
      		   		  
          		  title: text,
          		  confirmButtonText: confirmButtonText,
          		  allowOutsideClick: true,
          		cancelButtonText: cancelButtonText,
      		  showCancelButton: true,
          		showCloseButton: true,
          		    		}).then((result) => {
          					  if (result.isConfirmed) {
    								  window.location = url;
    		      						 
          							      

          							   
          						   
          						  } 
          						})
              
            	
        
       
            }

        function infoAlert(titleText,infoText,btnText){

        	const swalWithBootstrapButtons = Swal.mixin({
        		  customClass: {
        		    confirmButton: 'btn bg-primary  blue-btn confirm-swal',
        		    cancelButton: 'btn bg-danger cancel-swal',
        		  },
        		  buttonsStyling: false
        		});
        		swalWithBootstrapButtons.fire({     		  
      		 // title: titleText,
      		  html:'<div style="color:#26619C ;font-size:25px">'+titleText+'</div> <div>'+infoText +'</div>'+'<div style="color:#26619C ;font-size:25px">',
      		  confirmButtonText: btnText,
      		  allowOutsideClick: true,
      		//  confirmButtonColor: '#26619C',
      		showCloseButton: true,
      		    		});
          


        }


	

    

<!--

//-->
</script>











</html>