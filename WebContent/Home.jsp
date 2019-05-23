<%-- 
    Document   : addItem
    Created on : Apr 30, 2016, 4:44:38 PM
    Author     : Sudara Sachindana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link
	href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"
	rel="stylesheet">
<link href="resources/plugins/select2/select2.css" rel="stylesheet"
	type="text/css" />

<title>Add Item</title>

<!-- Start WOWSlider.com HEAD section -->
        <link rel="stylesheet" type="text/css" href="resources/slider/style.css" />
        <script type="text/javascript" src="resources/slider/jquery.js"></script>
        <!-- End WOWSlider.com HEAD section -->


</head>
<body class="fixed-left">
	<div id="wrapper">
		<jsp:include page="/WEB-INF/nav/navigation.jsp" />

		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">

					<!-- Page-Title -->
					<div class="row">
						<div class="col-sm-12">
							<h1 class="page-title">
							
							</h1>
							<!-- <ol class="breadcrumb">
								<li><a href="#">ETU</a></li>
								<li><a href="#">Member Manage</a></li>
								<li class="active">Add New Member Form</li>
							</ol> -->
						</div>
					</div>
					
					<!-- <div class="row">
						<div class="col-sm-12">
							<h1 class="page-title">
								
							</h1>
							<ol class="breadcrumb">
								<li><a href="#">ETU</a></li>
								<li><a href="#">Member Manage</a></li>
								<li class="active">Add New Member Form</li>
							</ol>
						</div>
					</div> -->
					


<div  class="col-md-12">         
            
            
            
                        <!-- Start WOWSlider.com BODY section -->
                        <div id="wowslider-container1">
            
            <!--======================================================================================-->
            
            
            
            <!--======================================================================================-->
             
            
            <div class="ws_images"><ul>                     
                    <li><img src="resources/slider/1.jpg" alt="images-of-medical-board-8254" title="" id="wows1_0"/></li>
                    <li><img src="resources/slider/2.jpg" alt="doctor" title="" id="wows1_1"/></li>
                    <li><img src="resources/slider/3.jpg" alt="doctor-computer-1920" title="" id="wows1_2"/></li>
                     <li><img src="resources/slider/4.jpg" alt="doctor-computer-1920" title="" id="wows1_3"/></li>
                </ul></div>
                
                </div>
                </div>
                <script type="text/javascript" src="resources/slider/wowslider.js"></script>
        <script type="text/javascript" src="resources/slider/script.js"></script>
        <!-- End WOWSlider.com BODY section --> 
					
					
					
					<!-- <div id="carousel-example-captions" data-ride="carousel" class="carousel slide">
												<ol class="carousel-indicators">
													<li data-target="#carousel-example-captions" data-slide-to="0" class="active"></li>
													<li data-target="#carousel-example-captions" data-slide-to="1"></li>
													<li data-target="#carousel-example-captions" data-slide-to="2"></li>
												</ol>
												<div role="listbox" class="carousel-inner">
													<div class="item active">
														<img src="assets/images/small/img2.jpg" alt="First slide image">
														<div class="carousel-caption">
															<h3 class="text-white font-600">First slide label</h3>
															<p>
																Nulla vitae elit libero, a pharetra augue mollis interdum.
															</p>
														</div>
													</div>
													<div class="item">
														<img src="assets/images/small/img3.jpg" alt="Second slide image">
														<div class="carousel-caption">
															<h3 class="text-white font-600">Second slide label</h3>
															<p>
																Lorem ipsum dolor sit amet, consectetur adipiscing elit.
															</p>
														</div>
													</div>
													<div class="item">
														<img src="assets/images/small/img4.jpg" alt="Third slide image">
														<div class="carousel-caption">
															<h3 class="text-white font-600">Third slide label</h3>
															<p>
																Praesent commodo cursus magna, vel scelerisque nisl consectetur.
															</p>
														</div>
													</div>
												</div>
												<a href="#carousel-example-captions" role="button" data-slide="prev" class="left carousel-control"> <span aria-hidden="true" class="fa fa-angle-left"></span> <span class="sr-only">Previous</span> </a>
												<a href="#carousel-example-captions" role="button" data-slide="next" class="right carousel-control"> <span aria-hidden="true" class="fa fa-angle-right"></span> <span class="sr-only">Next</span> </a>
											</div> -->
											
											
											<!--  ------------------------------->
											
											
											


				</div>
			</div>
		</div>


	</div>

	<script
		src="resources/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>

	<script src="resources/plugins/select2/select2.min.js"
		type="text/javascript"></script>


	<script>
		jQuery(document).ready(function() {

			// Date Picker
			jQuery('#datepicker').datepicker();
			jQuery('#datepicker-autoclose1').datepicker({
				format : 'yyyy/mm/dd',
				autoclose : true,
				todayHighlight : true
			});
			jQuery('#datepicker-autoclose2').datepicker({
				format : 'yyyy/mm/dd',
				autoclose : true,
				todayHighlight : true
			});

			//            =================================================

			// Select2
			$(".select2").select2();

			$(".select2-limiting").select2({
				maximumSelectionLength : 2
			});

			$('.selectpicker').selectpicker();
			$(":file").filestyle({
				input : false
			});
		});
	</script>

</body>
</html>

