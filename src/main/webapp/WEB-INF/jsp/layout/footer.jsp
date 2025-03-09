
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div style="text-align: center; margin-right: 150px;position: fixed;text-align: center;	bottom: 0;">
	<footer>
		
	
	</footer>
</div>

     </div> <!-- .col-12 -->
          </div> <!-- .row -->
        </div> <!-- .container-fluid -->
  
      </main> <!-- main -->
      
      </div>

<!-- external javascript -->




<script src="<c:url value="/js/bootstrap-datepicker.min.js" />"></script>

<script src="<c:url value="/js/daterangepicker.js" />"></script>


<script src="<c:url value="/js/jquery.dataTables.min.js" />"></script>
<script src="<c:url value="/js/jquery.min.js" />"></script>
<script src="<c:url value="/js/popper.min.js" />"></script>
<script src="<c:url value="/js/moment.min.js" />"></script>
<script src="<c:url value="/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/js/simplebar.min.js" />"></script>
<script src="<c:url value="/js/daterangepicker.js" />"></script>
<script src="<c:url value="/js/jquery.stickOnScroll.js" />"></script>
<script src="<c:url value="/js/tinycolor-min.js" />"></script>
<script src="<c:url value="/js/config.js" />"></script>
<script src="<c:url value="/js/jquery.dataTables.min.js" />"></script>
<script src="<c:url value="/js/dataTables.bootstrap4.min.js" />"></script>
<script src="<c:url value="/js/jquery.mask.min.js" />"></script>
<script src="<c:url value="/js/jquery.steps.min.js" />"></script>
<script src="<c:url value="/js/jquery.validate.min.js" />"></script>
<script src="<c:url value="/js/select2.min.js" />"></script>
<script src="<c:url value="/js/apps.js" />"></script>
<script src="<c:url value="/js/sweetalert/sweetalert.min.js" />"></script>
<script src="<c:url value="/js/sweetalert/sweetalert2.js" />"></script>
<script src="<c:url value="/js/sweetalert/sweetalert2@11.js" />"></script>
<script>

var message = "${response}";

if(message!=null && ("${response.errorMessage}" !='' || "${response.successMessage}" !=''))
	{

	if(${response.isSuccess()==true})
		{
		const swalWithBootstrapButtons = Swal.mixin({
			  customClass: {
			    confirmButton: 'btn btn-primary-green confirm-swal',
			    cancelButton: 'btn  cancel-swal',
			  },
			  buttonsStyling: false
			});

		swalWithBootstrapButtons.fire({
			icon : 'success',
			title : 'تمت العملية بنجاح',
			text : "${response.successMessage}",
		
			  confirmButtonText: 'تم',
	  		  allowOutsideClick: false,
			  showCloseButton: true,
			  allowOutsideClick: true,
			  didOpen: function () {
				    Swal.getConfirmButton().blur()
				  },
		});
		}
	
	else
		{
		const swalWithBootstrapButtons = Swal.mixin({
			  customClass: {
			    confirmButton: 'btn btn-primary-red confirm-swal',
			    cancelButton: 'btn  cancel-swal',
			  },
			  buttonsStyling: false
			});

		swalWithBootstrapButtons.fire({
			icon : 'question',
			title : 'تحذير',
			html : "${response.errorMessage}",
			  iconHtml: '<i class="fe fe-x" style="color:#c60606 ; font-size:50px" ></i>',
			  confirmButtonText: 'تم',
	  		  allowOutsideClick: false,
			  showCloseButton: true,
			  allowOutsideClick: true,
			  didOpen: function () {
				    Swal.getConfirmButton().blur()
				  },
		});
		}
	
	}

$('#dataTable-1').DataTable({
	//	"paging": false
	});
	$('#dataTable-1_length').parent().remove();
	$('#dataTable-1_paginate').parent().remove();




$('.select2').select2({
	theme : 'bootstrap4',
	
});
$('.input-money').mask("#.##0,000", {
	reverse : true
});

$('.drgpicker').daterangepicker({
	singleDatePicker : true,
	timePicker : false,
	showDropdowns : true,
	locale : {
		format : 'yyyy/MM/DD'
	}
});
$('.time-input').timepicker({
	'scrollDefault' : 'now',
	'zindex' : '9999' /* fix modal open */
});
/** date range picker */
if ($('.datetimes').length) {
	$('.datetimes').daterangepicker({
		timePicker : true,
		startDate : moment().startOf('hour'),
		endDate : moment().startOf('hour').add(32, 'hour'),
		locale : {
			format : 'M/DD hh:mm A'
		}
	});
}
function callConfirmAlert(icon,title,text)
{
	
	
	const swalWithBootstrapButtons = Swal.mixin({
		  customClass: {
		    confirmButton: 'btn btn-primary confirm-swal',
		  },
		  buttonsStyling: false
		});
		swalWithBootstrapButtons.fire({
		  title: title,
		  text:text ,
		  icon: 'question',
		  iconHtml: '<i class="fe fe-'+icon+'" style="color:#227a83 ; font-size:50px"></i>',
		  confirmButtonText: '  تم  ',
		  showCloseButton: true,
		  allowOutsideClick: true,
		  didOpen: function () {
			    Swal.getConfirmButton().blur()
			  }
		})
	}

function callDangerAlert(icon,title,text,url)
{
	const swalWithBootstrapButtons = Swal.mixin({
		  customClass: {
		    confirmButton: 'btn btn-primary-red confirm-swal',
		    cancelButton: 'btn  cancel-swal',
		  },
		  buttonsStyling: false
		});
		swalWithBootstrapButtons.fire({
		  title: title,
		  text:text ,
		  icon: 'question',
		  iconHtml: '<i class="fe fe-'+icon+'" style="color:#c60606 ; font-size:50px" ></i>',
		  confirmButtonText: 'تأكيد',
  		  allowOutsideClick: true,
  		  cancelButtonText: "تراجع",
		  showCancelButton: true,
		  showCloseButton: true,
		  allowOutsideClick: true,
		  didOpen: function () {
			    Swal.getConfirmButton().blur()
			  },
		  }).then((result) => {
				  if (result.isConfirmed) {
					  if(url!=null)
					  window.location.href = "${pageContext.request.contextPath }"+url;
					  } 
				
					})
	}
	
function callDangerAlertWithoutUrl(icon,title,text)
{
	const swalWithBootstrapButtons = Swal.mixin({
		  customClass: {
		    confirmButton: 'btn btn-primary-red confirm-swal',
		    cancelButton: 'btn  cancel-swal',
		  },
		  buttonsStyling: false
		});
		swalWithBootstrapButtons.fire({
		  title: title,
		  text:text ,
		  icon: 'question',
		  iconHtml: '<i class="fe fe-'+icon+'" style="color:#c60606 ; font-size:50px" ></i>',
		  confirmButtonText: 'تم',
  		  allowOutsideClick: true,
		  allowOutsideClick: true,
		  didOpen: function () {
			    Swal.getConfirmButton().blur()
			  },
		  })
	}
</script>

	</body>
</html>