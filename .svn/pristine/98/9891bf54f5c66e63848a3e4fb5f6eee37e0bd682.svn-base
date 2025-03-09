<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/jsp/layout/header.jsp"%>
<%@include file="/WEB-INF/jsp/layout/left-sidebar.jsp"%>


<script
	src="<c:url value="/js/chart/chart.js" />"></script>
<div class="page-wrapper">



	<!-- ============================================================== -->

	<div class="container-fluid" style="padding-right:0px ; padding-top:5px">
		<div class="row">
			<div class="col-lg-6 col-md-6 col-sm-6">
				<canvas id="myChartType" style="width: 100%; max-width: 600px"></canvas>

			</div>
			<div class="col-lg-6 col-md-6 col-sm-6">
				<canvas id="myChartCategory" style="width: 100%; max-width: 600px"></canvas>

			</div>

		</div>

		<div class="row" style="margin-top:10vh">
				<div class="col-lg-6 col-md-6 col-sm-6">
				<canvas id="myChartCity" style="width: 100%; max-width: 600px"></canvas>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6">
				
				<canvas id="myChartContractor" style="width: 100%; max-width: 600px"></canvas>

			</div>


		</div>
		<script>
		

		var ColorsType = [ "#9cadce", "#c5e1a5" , "#b8b3be", "#dee2ff", "#feeafa",
				"#3d5afe", "#c51162", "#bf360c", "#ff6d00", "#00796b", "black","#7b1fa2","#795548" ,"#880e4f","brown","#a5d6a7"];
		var ColorsCategory = [ "#6d6875","#b5838d", "#e5989b" , "#ffcdb2","#e76f51", "#0ead69", "#976391",
			"#3d5afe", "#c51162", "#bf360c", "#ff6d00", "#00796b", "black","#7b1fa2","#795548" ,"#880e4f","brown","#a5d6a7"];

		var ColorsCity = [ "#e5383b", "green" , "#00afb9", "#f28f3b", "#b39ddb",
			"#3d5afe", "#c51162", "#bf360c", "#985277", "#00796b", "black","#7b1fa2","#795548" ,"#880e4f","brown","#a5d6a7"];

		var ColorsContractor = [ "#450920", "#a53860" , "#da627d", "#0f4c5c", "#9a031e",
			"#168aad", "#52b69a", "#34a0a4", "#76c893", "#00796b", "black","#7b1fa2","#795548" ,"#880e4f","brown","#a5d6a7"];
		
			var xValuesTypeTemp = "${typeKey}";
			var xValuesType = xValuesTypeTemp.substring(1,
					xValuesTypeTemp.length - 1);

			var yValuesTypeTemp = "${typeValues}";
			var yValuesType = yValuesTypeTemp.substring(1,
					yValuesTypeTemp.length - 1);


			var barColorsType = ColorsType.slice(0,yValuesType.split(/,/).length);
			var tempDataType=yValuesType.split(/,/);
			var sum=0;
			for(var i=0;i<tempDataType.length;i++)
			{
				sum=parseInt(sum) + parseInt(tempDataType[i]);
			}
			var dataType=[];

			for(var i=0;i<tempDataType.length;i++)
			{
				dataType[i]=Math.round((tempDataType[i]/sum)*100);
			}

			new Chart(
					"myChartType",
					{
						type : "pie",
						data : {
							labels : xValuesType.split(/,/),
							datasets : [ {
								backgroundColor : barColorsType,
								data : dataType,
								
							} ]
						},
						options : {
							
							title : {
								display : true,
								 fontSize: 15 ,
								 fontColor:"black",
								text : "توزع العمليات التي تم نشرها على المنصة حسب النوع حتى تاريخ اليوم"
							},
						
							 tooltips: {
							      callbacks: {
							        label: function(tooltipItem, data) {
							          return data['labels'][tooltipItem['index']] + ': ' + data['datasets'][0]['data'][tooltipItem['index']] + '%';
							        }
							      }
							    }
						}
					});

			var xValuesCategoryTemp = "${categoryKey}";
			var xValuesCategory = xValuesCategoryTemp.substring(1,
					xValuesCategoryTemp.length - 1);

			var yValuesCategoryTemp = "${categoryValues}";
			var yValuesCategory = yValuesCategoryTemp.substring(1,
					yValuesCategoryTemp.length - 1);
			var barColorsCategory = ColorsCategory.slice(0,yValuesCategoryTemp.split(/,/).length);


			var tempDataCategory=yValuesCategory.split(/,/);
			var sum2=0;
			for(var i=0;i<tempDataCategory.length;i++)
			{
				sum2=parseInt(sum2) + parseInt(tempDataCategory[i]);
			}
			var dataCategory=[];

			for(var i=0;i<tempDataCategory.length;i++)
			{
				dataCategory[i]=Math.round((tempDataCategory[i]/sum2)*100);
			}
		
						
			//alert(dataCategory)
			new Chart(
					"myChartCategory",
					{
						type : "pie",
						data : {
							labels : xValuesCategory.split(/,/),
							datasets : [ {
								backgroundColor : barColorsCategory,
								data : dataCategory,
							} ]
						},
						
						options : {
							showAllToolTips: true,
							
							title : {
								display : true,
								 fontSize: 15 ,
								 fontColor:"black",
								text : "توزع العمليات التي تم نشرها على المنصة حسب النشاط التجاري حتى تاريخ اليوم"
							},
							tooltips: {
						
							      callbacks: {
							        label: function(tooltipItem, data) {
							          return data['labels'][tooltipItem['index']] + ': ' + data['datasets'][0]['data'][tooltipItem['index']] + '%';
							        }
							      },
							      showTooltipOn: "always"
							   
							  	
							},
						
							   
							
						
						}
					});




			var xValuesCityTemp = "${cityKey}";
			var xValuesCity = xValuesCityTemp.substring(1,
					xValuesCityTemp.length - 1);

			var yValuesCityTemp = "${cityValues}";
			var yValuesCity = yValuesCityTemp.substring(1,
					yValuesCityTemp.length - 1);

			
		
			var barColorsCity = ColorsCity.slice(0,yValuesCity.split(/,/).length);
			new Chart("myChartCity", {
				type : "bar",
				data : {
					labels :  xValuesCity.split(/,/),
				    yLabels: ['', 'Request Added', 'Request Viewed', 'Request Accepted', 'Request Solved', 'Solving Confirmed'],
					
					datasets : [ {
						backgroundColor : barColorsCity,
						data :  yValuesCity.split(/,/),
						   
					} ]
				},
				options : {
					legend : {
						display : false
					},
					
					title : {
						display : true,
						 fontSize: 15 ,
						 fontColor:"black",
						text : "توزع العمليات التي تم نشرها في المحافظات",
						 
					},
					   scales: {
					         yAxes: [{
					            id: 'y-axis-0',
					            position: 'left',
					            ticks: {
					               fontColor:"black",
					               
					            },
					         }],
					         xAxes: [{
						            id: 'x-axis-0',
						            ticks: {
						               fontColor:"black",
						               fontSize:13
						            }
						         }],
					      }
					
				}
			});


			var xValuesContractorTemp = "${contractorKey}";
			var xValuesContractor = xValuesContractorTemp.substring(1,
					xValuesContractorTemp.length - 1);

			var yValuesContractorTemp = "${contractorValues}";
			var yValuesContractor = yValuesContractorTemp.substring(1,
					yValuesContractorTemp.length - 1);

			
		
			var barColorsContractor = ColorsContractor.slice(0,yValuesContractor.split(/,/).length);
			
			new Chart("myChartContractor", {
				type : "bar",
				data : {
					labels :  xValuesContractor.split(/,/),
				    yLabels: ['', 'Request Added', 'Request Viewed', 'Request Accepted', 'Request Solved', 'Solving Confirmed'],
					
					datasets : [ {
						backgroundColor : barColorsContractor,
						data :  yValuesContractor.split(/,/)
					} ]
				},
				options : {
					legend : {
						display : false,
						
					},
					title : {
						display : true,
						 fontSize: 15 ,
						 fontColor:"black",
						text : "توزع العارضون ضمن المحافظات"
					},

					  
						      scales: {
						         yAxes: [{							         
						            id: 'y-axis-0',
						            position: 'left',
						            ticks: {
						               fontColor:"black"
						            }
						         }],
						         xAxes: [{
							            id: 'x-axis-0',
							            ticks: {
							               fontColor:"black",
							               fontSize:13
							            }
							         }],
						      }
						   
				}
			});
			
		</script>

	</div>
	<!-- ============================================================== -->

	<!-- ============================================================== -->
	<!-- End Page wrapper  -->
	<!-- ============================================================== -->
</div>
<%@include file="/WEB-INF/jsp/layout/footer.jsp"%>
<script type="text/javascript">
	$(document).ready(function() {
		$('#statDivID').addClass("active");
		var message = "${same}";
		if (message != '')
		{
			swalWithBootstrapButtons = Swal.mixin({
				customClass : {
					confirmButton : 'btn red-btn confirm-swal',
					cancelButton : 'btn  cancel-swal',
				},
				buttonsStyling : false
			});

			swalWithBootstrapButtons.fire({
				icon : 'question',
				iconHtml : '<i class="fas fa-key" style="font-size:40px"></i>',
				iconColor : '#d50000',
				title : 'تحذير',
				text : "كلمة المرور الجديدة التي قمت بوضعها مطابقة للقديمة",
				confirmButtonText : 'تم',
				showCloseButton : true,
			});

		}
	});
</script>