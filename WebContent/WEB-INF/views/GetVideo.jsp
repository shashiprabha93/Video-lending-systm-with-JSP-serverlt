

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.oop.model.Video"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link
	href="resources/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css"
	rel="stylesheet">
<link href="resources/plugins/select2/select2.css" rel="stylesheet"
	type="text/css" />

<title>Update Video</title>
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
								<i class="glyphicon glyphicon-user">&nbsp;&nbsp;</i>Update New Video Form
							</h3>
							<ol class="breadcrumb">
								<li><a href="#">VR</a></li>
								<li><a href="#">Video Manage</a></li>
								<li class="active">Update Video Form</li>
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
									
		                             
		                             
		                             <%
											                             		                             		                             	Video video = (Video) request.getAttribute("video");
											                             		                             		                             %>
		                                        
									<form  method="POST" action="UpdateVideoServlet"  data-parsley-validate novalidate>
										<div class="form-group">
											<label for="videoID">Video ID*</label>
											<Input type="text" name="videoID" class="form-control"  disabled="disabled" value="<%=video.getVideoID()%>" />
										</div>
										<div class="form-group">
											<label for="name"> Film Name*</label>											
											<input type="text" name="name" class="form-control"	value="<%=video.getName()%>" />
										</div>
										
										<div class="form-group">
											<label for="filmCategory">Film Category*</label>											
											<input type="text" name="filmCategory"	class="form-control" value="<%=video.getFilmCategory()%>" />
										</div>
										
										<div class="form-group">
											<label for="quantity">Video Quantity*</label>											
											<input type="text" name="quantity"	class="form-control" value="<%=video.getQuantity()%>" />
										</div>
										
										
										<div class="form-group">
											<label for="subtitleLanguage">Subtitle Language*</label>											
											<input type="text" name="subtitleLanguage" class="form-control"	value="<%=video.getSubtitleLanguage()%>" />
										</div>
										<!-- <div class="form-group">
											<div class="checkbox">
												<input id="remember-1" type="checkbox">
												<label for="remember-1"> Remember me </label>
											</div>
										</div> -->

										<div class="form-group text-right m-b-0">
											<button  type="hidden" name="videoID" class="btn btn-primary waves-effect waves-light" value="<%=video.getVideoID()%>" >
												Update
											</button>
										
										</div>
										
									</form>
									
										<form method="POST" action="DeleteVideoServlet">
											<button type="hidden" name="videoID" value="<%=video.getVideoID()%>"  class="btn btn-default waves-effect waves-light m-l-5">
												Delete
											</button>
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

