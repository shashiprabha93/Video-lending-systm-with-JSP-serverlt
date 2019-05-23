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
								<i class="ion-person-stalker">&nbsp;&nbsp;</i>Add New Member Form
							</h3>
							<ol class="breadcrumb">
								<li><a href="#">VR</a></li>
								<li><a href="#">Member Manage</a></li>
								<li class="active">Add New Member Form</li>
							</ol>
						</div>
					</div>

					<!--============= begin item page ===========-->
					<div class="row">
						<div class="col-sm-12">
							<div class="card-box">
								<h4 class="m-t-0 header-title">
									<b>Member Details</b>
								</h4>


								<div class="row">
							<div class="col-lg-6" >
								<div class="card-box">
									
		                                        
									<form  method="POST" action="AddMemberServlet"  data-parsley-validate novalidate>
										<div class="form-group">
											<label for="firstName">First Name*</label>
											<input type="text" name="firstName" parsley-trigger="change" required placeholder="Enter first name" class="form-control" id="firstName">
										</div>
										<div class="form-group">
											<label for="lastName">Last Name*</label>
											<input type="text" name="lastName" parsley-trigger="change" required placeholder="Enter last name" class="form-control" id="lastName">
										</div>
										<div class="form-group">
											<label for="address">Address*</label>
											<input id="address"  name="address"  type="text" placeholder="Enter address" required class="form-control">
										</div>
										<div class="form-group">
											<label for="city">City *</label>
											<input type="text" name="city"  required placeholder="Enter city" class="form-control" id="city">
										</div>
										<div class="form-group">
											<label for="email">Email*</label>
											<input type="email" name="email" parsley-trigger="change" required placeholder="Enter email" class="form-control" id="email">
										</div>
										<div class="form-group">
											<label for="phoneNo">Phone No*</label>
											<input type="text" name="phoneNo" parsley-trigger="change" required placeholder="Enter phone no" class="form-control" id="phoneNo">
										</div>
										<div class="form-group">
											<div class="checkbox">
												<input id="remember-1" type="checkbox">
												<label for="remember-1"> Remember me </label>
											</div>
										</div>

										<div class="form-group text-right m-b-0">
											<button class="btn btn-primary waves-effect waves-light" value="add" type="submit">
												Submit
											</button>
											<button type="reset" class="btn btn-default waves-effect waves-light m-l-5">
												Cancel
											</button>
										</div>
										
										<div><form method="POST" action="ListVideoServlet"><button class="btn btn-primary waves-effect waves-light">View Member Details</button></form></div>
				
										
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

