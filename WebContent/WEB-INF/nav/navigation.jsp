<%-- 
    Document   : navigation
    Created on : Apr 29, 2016, 9:56:32 AM
    Author     : Sudara Sachindana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">


        <title>Navigation</title>
        <link rel="stylesheet" href="resources/plugins/morris/morris.css">
        <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/pages.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/icons.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/core.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/components.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/responsive.css" rel="stylesheet" type="text/css"/>


        <script src="resources/js/modernizr.min.js"></script>
    </head>
    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            <div class="topbar">

                <!-- LOGO -->
                <div class="topbar-left">
                    <div class="text-center">
                        <a href="index.jsp" class="logo"><img class="img-responsive" style="margin-top: 10px; margin-left: 40px; margin-bottom:10px;" src="resources/images/v.png"></a>
                    </div>
                </div>

                <!-- Button mobile view to collapse sidebar menu -->
                <div class="navbar navbar-default" role="navigation">
                    <div class="container">
                        <div class="">
                            <div class="pull-left">
                                <button class="button-menu-mobile open-left">
                                    <i class="ion-navicon"></i>
                                </button>
                                <span class="clearfix"></span>
                            </div>

                            <!--                            <form role="search" class="navbar-left app-search pull-left hidden-xs">
                                                                         <input type="text" placeholder="Search..." class="form-control">
                                                                         <a href=""><i class="fa fa-search"></i></a>
                                                                    </form>-->


                            <ul class="nav navbar-nav navbar-right pull-right">
                                <li class="dropdown hidden-xs">
                                    <a href="#" data-target="#" class="dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-expanded="true">
                                        <i class="icon-bell"></i> <span class="badge badge-xs badge-danger">3</span>
                                    </a>
                                    <ul class="dropdown-menu dropdown-menu-lg">
                                        <li class="notifi-title"><span class="label label-default pull-right">New 3</span>Notification</li>
                                        <li class="list-group nicescroll notification-list">
                                            <!-- list item-->
                                            <a href="javascript:void(0);" class="list-group-item">
                                                <div class="media">
                                                    <div class="pull-left p-r-10">
                                                        <em class="fa fa-diamond fa-2x text-primary"></em>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="media-heading">A new order has been placed A new order has been placed</h5>
                                                        <p class="m-0">
                                                            <small>There are new settings available</small>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>

                                            <!-- list item-->
                                            <a href="javascript:void(0);" class="list-group-item">
                                                <div class="media">
                                                    <div class="pull-left p-r-10">
                                                        <em class="fa fa-cog fa-2x text-custom"></em>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="media-heading">New settings</h5>
                                                        <p class="m-0">
                                                            <small>There are new settings available</small>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>

                                            <!-- list item-->
                                            <a href="javascript:void(0);" class="list-group-item">
                                                <div class="media">
                                                    <div class="pull-left p-r-10">
                                                        <em class="fa fa-bell-o fa-2x text-danger"></em>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="media-heading">Updates</h5>
                                                        <p class="m-0">
                                                            <small>There are <span class="text-primary font-600">2</span> new updates available</small>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>

                                            <!-- list item-->
                                            <a href="javascript:void(0);" class="list-group-item">
                                                <div class="media">
                                                    <div class="pull-left p-r-10">
                                                        <em class="fa fa-user-plus fa-2x text-info"></em>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="media-heading">New user registered</h5>
                                                        <p class="m-0">
                                                            <small>You have 10 unread messages</small>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>

                                            <!-- list item-->
                                            <a href="javascript:void(0);" class="list-group-item">
                                                <div class="media">
                                                    <div class="pull-left p-r-10">
                                                        <em class="fa fa-diamond fa-2x text-primary"></em>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="media-heading">A new order has been placed A new order has been placed</h5>
                                                        <p class="m-0">
                                                            <small>There are new settings available</small>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>

                                            <!-- list item-->
                                            <a href="javascript:void(0);" class="list-group-item">
                                                <div class="media">
                                                    <div class="pull-left p-r-10">
                                                        <em class="fa fa-cog fa-2x text-custom"></em>
                                                    </div>
                                                    <div class="media-body">
                                                        <h5 class="media-heading">New settings</h5>
                                                        <p class="m-0">
                                                            <small>There are new settings available</small>
                                                        </p>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0);" class="list-group-item text-right">
                                                <small class="font-600">See all notifications</small>
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li class="hidden-xs">
                                    <a href="#" id="btn-fullscreen" class="waves-effect waves-light"><i class="icon-size-fullscreen"></i></a>
                                </li>
                                <li class="hidden-xs">
                                    <a href="#" class="right-bar-toggle waves-effect waves-light"><i class="icon-settings"></i></a>
                                </li>
                                <li class="dropdown">
                                    <a href="" class="dropdown-toggle profile" data-toggle="dropdown" aria-expanded="true"><img src="resources/images/users/avatar-1.jpg" alt="user-img" class="img-circle"> </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="javascript:void(0)"><i class="ti-user m-r-5"></i> Profile</a></li>
                                        <li><a href="javascript:void(0)"><i class="ti-settings m-r-5"></i> Settings</a></li>
                                        <li><a href="javascript:void(0)"><i class="ti-lock m-r-5"></i> Lock screen</a></li>
                                        <li><a href="javascript:void(0)"><i class="ti-power-off m-r-5"></i> Logout</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!--/.nav-collapse -->
                    </div>
                </div>
            </div>
            <!-- Top Bar End -->


            <!-- ========== Left Sidebar Start ========== -->

            <div class="left side-menu">
                <div class="sidebar-inner slimscrollleft">
                    <!--- Divider -->
                    <div id="sidebar-menu">
                        <ul>

                            <li class="text-muted menu-title">Navigation</li>

                            <li class="has_sub">
                                <a href="#" class="waves-effect"><i class="ti-home"></i> <span> Dashboard </span> </a>
                                <ul class="list-unstyled">
                                    <li><a href="Home.jsp">Dashboard </a></li>
<!--                                    <li><a href="dashboard_2.html">Dashboard 2</a></li>
                                    <li><a href="dashboard_3.html">Dashboard 3</a></li>-->
                                </ul>
                            </li>

                            <li class="has_sub">
                                <a href="#" class="waves-effect"><i class="ion-person-stalker"></i> <span> Member Manage </span> </a>
                                <ul class="list-unstyled">
                                     <li><a href="addMember.jsp">Add Member</a></li>                                
                                 <!-- <li><a  href="#">View All Member</a><form method="POST" action="ListEmployeeServlet"><button  type="hidden" ></button></form></li> --> 
                     <!--  <form method="POST" action="ListMemberServlet"><button  type="hidden" ><li><a  href="#">View All Member</a></li></button></form> --> 
                                     <li><a href="AllMemberReport.jsp">Reports</a></li>
                              
                                </ul>
                            </li>

                            <li class="has_sub">
                                <a href="#" class="waves-effect"><i class="glyphicon glyphicon-user"></i><span class="label label-primary pull-right">6</span><span> Video Manage </span> </a>
                                <ul class="list-unstyled">
                                    <li><a href="addVideo.jsp">Add Video</a></li>
                                    <!-- <form method="POST" action="ListMemberServlet"><button  type="hidden" ><li><a href="#">View All Video</a></button></li></form> -->
                                     <li><a href="AllVideoReport.jsp">Reports</a></li>
                                   
                                </ul>
                            </li>

                           <!--  <li class="has_sub">
                                <a href="#" class="waves-effect"><i class="ti-spray"></i> <span> Category Manage </span> </a>
                                <ul class="list-unstyled">
                                    <li><a href="">Add Category</a></li>
                                    <li><a href="">View All Category</a></li>

                                </ul>
                            </li>
 -->
                           <!--  <li class="has_sub">
                                <a href="#" class="waves-effect"><i class="ti-bar-chart"></i><span class="label label-pink pull-right">10</span><span> Charts </span></a>
                                <ul class="list-unstyled">
                                    <li><a href="">Flot Chart</a></li>
                                    <li><a href="">Morris Chart</a></li>
                                    <li><a href="">Chartjs</a></li>
                                    <li><a href="">Peity Charts</a></li> -->

                            

                        </ul>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
            <!-- Left Sidebar End -->

        </div>
        <!--end wrapper-->





        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="resources/js/jquery.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
        <script src="resources/js/detect.js"></script>
        <script src="resources/js/fastclick.js"></script>
        <script src="resources/js/jquery.slimscroll.js"></script>
        <script src="resources/js/jquery.blockUI.js"></script>
        <script src="resources/js/waves.js"></script>
        <script src="resources/js/wow.min.js"></script>
        <script src="resources/js/jquery.nicescroll.js"></script>
        <script src="resources/js/jquery.scrollTo.min.js"></script>

        <script src="resources/plugins/waypoints/lib/jquery.waypoints.js"></script>
        <script src="resources/plugins/counterup/jquery.counterup.min.js"></script>



        <script src="resources/plugins/morris/morris.min.js"></script>
        <script src="resources/plugins/raphael/raphael-min.js"></script>

        <script src="resources/plugins/jquery-knob/jquery.knob.js"></script>

        <script src="resources/pages/jquery.dashboard.js"></script>

        <script src="resources/js/jquery.core.js"></script>
        <script src="resources/js/jquery.app.js"></script>
        
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                $('.counter').counterUp({
                    delay: 100,
                    time: 1200
                });

                $(".knob").knob();

            });
        </script>


    </body>
</html>

