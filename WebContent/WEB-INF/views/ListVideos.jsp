

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page import="com.oop.model.Video"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.oop.service.VideoServiceImpl"%>
<%@page import="com.oop.service.IVideoService"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="resources/plugins/custombox/dist/custombox.min.css" rel="stylesheet">
        <link href="resources/plugins/bootstrap-table/dist/bootstrap-table.min.css" rel="stylesheet" type="text/css" />
        <link href="resources/plugins/sweetalert/dist/sweetalert.css" rel="stylesheet" type="text/css">


        <title>JSP Page</title>

        <script>
            /* function removeClick() {
                swal({
                    title: "Are you sure?",
                    text: "You will not be able to recover this imaginary file!",
                    type: "warning",
                    showCancelButton: true,
                    confirmButtonColor: "#DD6B55",
                    confirmButtonText: "Yes, delete it!",
                    cancelButtonText: "No, cancel plx!",
                    closeOnConfirm: false,
                    closeOnCancel: false
                }, function (isConfirm) {
                    if (isConfirm) {                                       
                    swal("Deleted!", "Your imaginary file has been deleted.", "success");
                    } else {
                    swal("Cancelled", "Your imaginary file is safe :)", "error");
                    }
                });
            } */


            function fnselect() {
                var t = document.getElementById('table');
                var rows = t.rows; //rows collection - https://developer.mozilla.org/en-US/docs/Web/API/HTMLTableElement
                for (var i = 0; i < rows.length; i++) {
                    rows[i].onclick = function () {
                        if (this.parentNode.nodeName == 'THEAD') {
                            return;
                        }
                        var cells = this.cells; //cells collection
                        var f1 = document.getElementById('field-1');
                        var f2 = document.getElementById('field-2');
                        var f3 = document.getElementById('field-3');
                        var f4 = document.getElementById('field-4');
                        var f5 = document.getElementById('field-5');
                        f1.value = cells[0].innerHTML;
                        f2.value = cells[1].innerHTML;
                        f3.value = cells[2].innerHTML;
                        f4.value = cells[3].innerHTML;
                        f5.value = cells[4].innerHTML;
                    };
                }










        </script>
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
                                <h3 class="page-title"><i class="glyphicon glyphicon-user">&nbsp;</i>View All Video Form</h3>
                                <ol class="breadcrumb">
                                    <li>
                                        <a href="#">VR</a>
                                    </li>
                                    <li>
                                        <a href="#">Video Manage</a>
                                    </li>
                                    <li class="active">
                                        View All Video Form
                                    </li>
                                </ol>
                            </div>
                        </div>


                       <!--  <!--================== start of update modal ===============-->

                       <!--  <div id="con-close-modal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
                            <div class="modal-dialog"> 
                                <div class="modal-content"> 
                                    <form:form method="post" action="updateItem">
                                        <div class="modal-header"> 
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button> 
                                            <h4 class="modal-title">Item Details Update Form</h4> 
                                        </div> 
                                        <div class="modal-body"> 
                                            <div class="row"> 
                                                <div class="col-md-6"> 
                                                    <div class="form-group"> 
                                                        <label for="field-1" class="control-label">Name</label> 
                                                        <input type="text" class="form-control" id="field-1"  name="itemNameText" placeholder="Item Name"> 
                                                    </div> 
                                                </div> 
                                                <div class="col-md-6"> 
                                                    <div class="form-group"> 
                                                        <label for="field-2" class="control-label">Category</label> 
                                                        <input type="text" class="form-control" id="field-2" name="categoryText" placeholder=""> 
                                                    </div> 
                                                </div> 
                                            </div>                                        
                                            <div class="row"> 
                                                <div class="col-md-6"> 
                                                    <div class="form-group"> 
                                                        <label for="field-4" class="control-label">Re_Order Level</label> 
                                                        <input type="text" class="form-control" id="field-4" name="reOrderLevelText" placeholder="Boston"> 
                                                    </div> 
                                                </div> 
                                                <div class="col-md-6"> 
                                                    <div class="form-group"> 
                                                        <label for="field-5" class="control-label">Buffer Stock</label> 
                                                        <input type="text" class="form-control" id="field-5" name="bufferStockText" placeholder="United States"> 
                                                    </div> 
                                                </div>                                            
                                            </div> 
                                            <div class="row"> 
                                                <div class="col-md-12"> 
                                                    <div class="form-group no-margin"> 
                                                        <label for="field-7" class="control-label">Description</label> 
                                                        <textarea class="form-control autogrow" id="field-3" name="descriptionText"  placeholder="Write something about yourself" style="overflow: hidden; word-wrap: break-word; resize: horizontal; height: 104px;"></textarea>
                                                    </div> 
                                                </div> 
                                            </div> 
                                        </div> 
                                        <div class="modal-footer"> 
                                            <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button> 
                                            <button type="submit" class="btn btn-info waves-effect waves-light">Save changes</button> 
                                        </div> 
                                    </form:form>
                                </div> 
                            </div>
                        </div> -->
                        <!-- /. end of modal --> 

                        <!--============= begin item page ===========-->                        

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box">
                                    <h4 class="m-t-0 header-title" style="margin-bottom: 10px;"><b>Video Details</b></h4>                                                

                                    <table data-toggle="table"
                                           data-search="true"
                                           data-show-refresh="true"
                                           data-show-toggle="true"
                                           data-show-columns="true"
                                           data-sort-name="id"
                                           data-page-list="[5, 10, 20]"
                                           data-page-size="5"
                                           data-pagination="true" data-show-pagination-switch="true" id="table" class="table-bordered ">
                                        <thead>
                                            <tr>
                                            	<th data-field="videoID" data-sortable="true">Video ID</th>
                                                <th data-field="name" data-sortable="true"> Film Name</th>
                                                
                                                <th data-field="filmCategory" data-sortable="true">Film Category</th>
                                                <th data-field="quantity" data-sortable="true">Video Quantity</th>
                                                
                                                <th data-field="subtitleLanguage" data-align="center" data-sortable="true">Subtitle Language</th>
                                                <th data-field="action" data-align="center" data-sortable="true">Action</th>

                                            </tr>
                                        </thead>


                                        <%-- <tbody>
                                            <c:forEach items="${items}" var="item">
                                                <tr>
                                                    <!--<td hidden="true">aaa</td>-->
                                                    <td>${item[0]}</td>
                                                    <td>${item[1]}</td>
                                                    <td>${item[2]}</td>
                                                    <td>${item[3]}</td>
                                                    <td>${item[4]}</td>
                                                    <td>
                                                        <button class="btn btn-primary btn-xs waves-effect waves-light ok"id="tst" onclick="fnselect()" data-toggle="modal" data-target="#con-close-modal" style="width: 30px; height: 30px;"><i class="ti-pencil-alt"></i></button>
                                                        <button type="submit" class="btn btn-danger waves-effect waves-light btn-sm remove-item-record" onclick="removeClick();"><i class="fa fa-trash"></i></button>                                                        
                                                    </td>
                                                </c:forEach>
                                                </tr> 
                                                
            
			
			                      
                                                
                                                
                                        </tbody> --%>
                                        
                                         <tbody>
                                         <%
                                         	IVideoService iVideoService = new VideoServiceImpl();
                                                                                                                                                        			ArrayList<Video> arrayList = iVideoService.getVideos();
                                                                                                                                                        			
                                                                                                                                                        			for(Video video : arrayList){
                                         %>
			 <tr>
				<td> <%=video.getVideoID() %> </td>
				<td> <%=video.getName() %> </td>
				<td> <%=video.getFilmCategory() %> </td>
				<td> <%=video.getQuantity() %> </td>
				<td> <%=video.getSubtitleLanguage() %> </td>
				
				
				
				<td> 
				<form method="POST" action="GetVideoServlet">
				 
				 <%-- <input type="hidden" name="memberID" value="<%=member.getMemberID()%>"/>
				 <input type="submit" value= "Select Member" class="select-button" />  --%>
			<%-- 	 <button type="hidden" name="memberID" value="<%=member.getMemberID()%>" ></button> --%>
				 
				<button type="hidden" name="videoID" value="<%=video.getVideoID()%>"  class="btn btn-success btn-rounded waves-effect waves-light">
                                                   <span class="btn-label"><i class="fa fa-check"></i></span>
                                                   Select
                                                </button>
				</form>
				 </td>	
				</tr>			
			<%	
			   }
            %>      </tbody>
                                        
                                    </table>

                                    <input type="hidden" id="deleteItemName" name="deletedItem"/>


                                </div> <!--end card-box-->  
                            </div> <!--end col-sm-12-->
                        </div> <!--end main panel row-->

                        <hr>

                    </div><!--end Container-->
                </div> <!--end content-->
            </div><!--end content Page-->           


        </div> <!--end wrapper div-->




        <script src="resources/plugins/custombox/dist/custombox.min.js"></script>
        <script src="resources/plugins/custombox/dist/legacy.min.js"></script>

        <script src="resources/plugins/bootstrap-table/dist/bootstrap-table.min.js"></script>
        <script src="resources/pages/jquery.bs-table.js"></script>

        <script src="resources/plugins/sweetalert/dist/sweetalert.min.js"></script>
        <script src="resources/pages/jquery.sweet-alert.init.js"></script>

        <script>
                                                            jQuery(document).ready(function () {










                                                            });}


        </script>




    </body>    

</html>


