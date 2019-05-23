

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
							<h3 class="page-title">
								<i class="glyphicon glyphicon-user">&nbsp;&nbsp;</i>Add New Video Form
							</h3>
							<ol class="breadcrumb">
								<li><a href="#">VR</a></li>
								<li><a href="#">Video Manage</a></li>
								<li class="active">Add New Video Form</li>
							</ol>
						</div>
					</div>

					<!--============= begin item page ===========-->
					<div class="row">
						<div class="col-sm-12">
							<div class="card-box">
								<h4 class="m-t-0 header-title">
									<b>Video Details</b>
								</h4>


								<div class="row">
							<div class="col-lg-6" >
								<div class="card-box">
									
		                                        
									<form  method="POST" action="AddVideoServlet"  data-parsley-validate novalidate>
										<div class="form-group">
											<label for="name">Film Name*</label>
											<input type="text" name="name" parsley-trigger="change" required placeholder="Enter film name" class="form-control" id="name">
										</div>
										<div class="form-group">
											<label for="filmCategory">Film Category*</label>
											<input type="text" name="filmCategory" parsley-trigger="change" required placeholder="Enter film Category" class="form-control" id="filmCategory">
										</div>
										<div class="form-group">
											<label for="quantity">Quantity*</label>
											<input id="quantity" name="quantity" type="text" placeholder="Enter quantity" required class="form-control">
										</div>
										
										<div class="form-group">
											<label for="subtitleLanguage">Sub Title Language *</label>
											<input type="text" name="subtitleLanguage" parsley-trigger="change" required placeholder="Enter subtitle language" class="form-control" id="subtitleLanguage">
										</div>
										<!-- <div class="form-group">
											<div class="checkbox">
												<input id="remember-1" type="checkbox">
												<label for="remember-1"> Remember me </label>
											</div>
										</div> -->

										<div class="form-group text-right m-b-0">
											<button class="btn btn-primary waves-effect waves-light" value="add" type="submit">
												Submit
											</button>
											<button type="reset" class="btn btn-default waves-effect waves-light m-l-5">
												Cancel
											</button>
										</div>
										<div><form method="POST" action="ListVideoServlet"><button class="btn btn-primary waves-effect waves-light">View Video Details</button></form></div>
										
				
										
									</form>
								</div>
							</div>
							
							
						</div>



							</div>
							<!--end card-box-->
						</div>
						<!--end col-sm-12-->
					</div>
					<!--end main panel row-->


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

