<%-- 
    Document   : PageEmployee
    Created on : Dec 14, 2018, 11:19:22 AM
    Author     : Mukhlish
--%>

<%@page import="com.TimeOver.Entity.Presence"%>
<%@page import="java.sql.Timestamp"%>
<%@ page import = "java.io.*,java.util.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Timestamp timestamp = new Timestamp(System.currentTimeMillis());
    String dates = String.valueOf(timestamp);
    String times = dates.substring(11, 13);

    System.out.println(times);
    int f = Integer.parseInt(times);
    int duration = f - 17;
    Presence presence = new Presence(21);
%>
<!doctype html>
<html class="no-js" lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Employee</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon
                    ============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <!-- Google Fonts
                    ============================================ -->
        <link href="https://fonts.googleapis.com/css?family=Play:400,700" rel="stylesheet">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css"/>">
        <!-- owl.carousel CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/owl.theme.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/owl.transitions.css"/>">
        <!-- animate CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/animate.css"/>">
        <!-- normalize CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/normalize.css"/>">
        <!-- meanmenu icon CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/meanmenu.min.css"/>">
        <!-- main CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>">
        <!-- morrisjs CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/morrisjs/morris.css"/>">
        <!-- mCustomScrollbar CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/scrollbar/jquery.mCustomScrollbar.min.css"/>">
        <!-- metisMenu CSS
                    ============================================ -->

        <link rel="stylesheet" href="<c:url value="/resources/css/form/all-type-forms.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/metisMenu/metisMenu.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/metisMenu/metisMenu-vertical.css"/>">
        <!-- calendar CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/calendar/fullcalendar.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/calendar/fullcalendar.print.min.css"/>">
        <!-- x-editor CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/editor/select2.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/editor/datetimepicker.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/editor/bootstrap-editable.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/editor/x-editor-style.css"/>">
        <!-- normalize CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/data-table/bootstrap-table.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/data-table/bootstrap-editable.css"/>">
        <!-- style CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/style.css"/>">
        <!-- responsive CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/responsive.css"/>">
        <!-- modernizr JS
                    ============================================ -->
        <script src="<c:url value="/resources/js/vendor/modernizr-2.8.3.min.js"/>"></script>
        <!-- modals CSS
                ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/modals.css"/>">
        <!-- style CSS
                    ============================================ -->
        <!-- datapicker CSS
                ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/datapicker/datepicker3.css"/>">
        <!-- forms CSS
                ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/form/themesaller-forms.css"/>">
        <!-- select2 CSS
                ============================================ -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!-- buat modal
                ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/select2/select2.min.css"/>">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <script type="text/javascript">
            $(window).on('load', function () {
                $('#InformationproModalftblack').modal('show');
            });
        </script>
        <script>
            function myFunction() {
                var hour = new Date().getHours();
                var greeting;
                if (hour > 17) {
                    $("#overtimeData").modal('show');
                } else {
                    window.location.href = "./logout";
                }
                document.getElementById("demo").innerHTML = greeting;
            }
        </script>
    </head>


    <body>
        <!--[if lt IE 8]>
                <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
            <![endif]-->

        <div class="left-sidebar-pro">
            <nav id="sidebar" class="">
                <div class="sidebar-header"><br><br>
                    <a href="index.html"><img style="width: 120px;" class="main-logo" src="https://www.metrodata.co.id/web/images/business/2014-08-20-112626.png" alt="" /></a>
                    <strong><img src="img/logo/logosn.png" alt="" /></strong><br><br>
                </div>
                <div class="left-custom-menu-adp-wrap comment-scrollbar">
                    <nav class="sidebar-nav left-sidebar-menu-pro">
                        <ul class="metismenu" id="menu1">
                            <li>
                                <a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="fa big-icon fa-envelope icon-wrap"></i> <span class="mini-click-non">Workspace</span></a>
                                <ul class="submenu-angle" aria-expanded="false">
                                    <li><a title="My Profil" href="PageEmployeeProfile.jsp"><i class="fa fa-inbox sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Profile</span></a></li>
                                    <li><a title="My Presence" href=""><i class="fa fa-television sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Presence</span></a></li>
                                    <li><a id="overtimes" title="overtime data" href="PageEmployeeOvertime.jsp"><i class="fa fa-paper-plane sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro" >Overtime</span></a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </nav>
        </div>
        <!-- Start Welcome area -->
        <div class="all-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-11 col-md-12 col-sm-12 col-xs-12">
                        <div class="logo-pro">
                            <a href="index.html"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-advance-area">
                <div class="header-top-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-11 col-md-12 col-sm-12 col-xs-12">
                                <div class="header-top-wraper">
                                    <div class="row">
                                        <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                            <div class="menu-switcher-pro">
                                                <button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
                                                    <i class="fa fa-bars"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
                                            <div class="header-top-menu tabl-d-n">

                                            </div>
                                        </div>
                                        <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                            <div class="header-right-info">
                                                <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                                    <li class="nav-item">
                                                        <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
                                                            <i class="fa fa-user adminpro-user-rounded header-riht-inf" aria-hidden="true"></i>
                                                            <span class="admin-name"> <c:out value="${EmployeeData.name}"/> </span>
                                                            <i class="fa fa-angle-down adminpro-icon adminpro-down-arrow"></i>
                                                        </a>
                                                        <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                                            <li><a href="register.html"><span class="fa fa-home author-log-ic"></span>Register</a>
                                                            </li>
                                                            <li><a href="#"><span class="fa fa-user author-log-ic"></span>My Profile</a>
                                                            </li>
                                                            <li><a href="lock.html"><span class="fa fa-diamond author-log-ic"></span> Lock</a>
                                                            </li>
                                                            <li><a href="#"><span class="fa fa-cog author-log-ic"></span>Settings</a>
                                                            </li>
                                                            <li><a class="Primary mg-b-10" href="#" onclick="myFunction()""><span class="fa fa-lock author-log-ic " href="#" data-toggle="modal" data-target="#PrimaryModalhdbgcl" name="logout"></span>Log Out</a>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Mobile Menu start -->
                <div class="mobile-menu-area">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="mobile-menu">
                                    <nav id="dropdown">
                                        <ul class="mobile-menu-nav">
                                            <li><a data-toggle="collapse" data-target="#Charts" href="#">Home <span class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
                                                <ul class="collapse dropdown-header-top">
                                                    <li><a href="index.html">Dashboard v.1</a></li>
                                                    <li><a href="index-1.html">Dashboard v.2</a></li>
                                                    <li><a href="index-3.html">Dashboard v.3</a></li>
                                                    <li><a href="product-list.html">Product List</a></li>
                                                    <li><a href="product-edit.html">Product Edit</a></li>

                                                </ul>
                                            </li>
                                            <li><a data-toggle="collapse" data-target="#demo" href="#">Mailbox <span class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
                                                <ul id="demo" class="collapse dropdown-header-top">
                                                    <li><a href="mailbox.html">Inbox</a>
                                                    </li>
                                                    <li><a href="mailbox-view.html">View Mail</a>
                                                    </li>
                                                    <li><a href="mailbox-compose.html">Compose Mail</a>
                                                    </li>
                                                </ul>
                                            </li>
                                            <li><a data-toggle="collapse" data-target="#others" href="#">Miscellaneous <span class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
                                                <ul id="others" class="collapse dropdown-header-top">
                                                    <li><a href="file-manager.html">File Manager</a></li>
                                                    <li><a href="contacts.html">Contacts Client</a></li>
                                                    <li><a href="projects.html">Project</a></li>
                                                    <li><a href="project-details.html">Project Details</a></li>
                                                    <li><a href="blog.html">Blog</a></li>
                                                    <li><a href="blog-details.html">Blog Details</a></li>
                                                    <li><a href="404.html">404 Page</a></li>
                                                    <li><a href="500.html">500 Page</a></li>
                                                </ul>
                                            </li>

                                            <li><a data-toggle="collapse" data-target="#Pagemob" href="#">Pages <span class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
                                                <ul id="Pagemob" class="collapse dropdown-header-top">
                                                    <li><a href="login.html">Login</a>
                                                    </li>
                                                    <li><a href="register.html">Register</a>
                                                    </li>
                                                    <li><a href="lock.html">Lock</a>
                                                    </li>
                                                    <li><a href="password-recovery.html">Password Recovery</a>
                                                    </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Mobile Menu end -->
            </div>



            <div class="sparkline13-list">
                <div class="sparkline13-hd">
                    <div class="main-sparkline13-hd">
                        <h1>Overtime Data Table</h1>
                    </div>
                </div><br><br><br>
                <form method="POST" action="/uploadFile">
                    <div class="form-group-inner">
                        <div class="row">
                            <div class="col-lg-1 col-md-12 col-sm-12 col-xs-12">
                                <label class="login2 pull-right pull-right-pro">File TimeSheet</label>
                            </div>
                            <div class="col-lg-5 col-md-12 col-sm-12 col-xs-12">
                                <div class="file-upload-inner ts-forms">
                                    <div class="input prepend-big-btn">
                                        <label class="icon-right" for="prepend-big-btn">
                                            <i class="fa fa-download"></i>
                                        </label>
                                        <div class="file-button">
                                            Browse
                                            <input type="file" onchange="document.getElementById('prepend-big-btn').value = this.value;">

                                        </div>
                                        <div class="form-inline">
                                            <input type="text" id="prepend-big-btn" name="file" placeholder="no file selected">

                                        </div>
                                    </div>
                                </div><br>

                            </div>
                            <div class="col-lg-1 col-md-12 col-sm-12 col-xs-12">
                                <button class="btn btn-danger" type="submit"> upload </button>
                            </div>

                        </div>
                    </div>
                </form>
                <div class="sparkline13-graph">
                    <div class="datatable-dashv1-list custom-datatable-overright">

                        <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                               data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                            <thead>
                                <tr>
                                    <th data-field="state" data-checkbox="true"></th>
                                    <th data-field="no">No</th>
                                    <th data-field="presenceDate">Precence Date</th>
                                    <th data-field="duration" data-editable="true">Duration</th>
                                    <th data-field="fee" data-editable="true">fee</th>
                                    <th data-field="status" data-editable="true">Status</th>
                                </tr>
                            </thead>
                            <tbody>

                                <c:forEach var="List" items="${overtimeList}" >

                                    <tr>
                                        <td></td>
                                        <td><c:out value="${List.overtimeId}"/></td>
                                    <td><c:out value="${List.presenceId.presenceId}"/></td>
                                    <td><c:out value="${List.otDuration}"/></td>
                                    <td><c:out value="${List.fee}"/></td>
                                    <td><c:out value="${List.status}"/></td>
                                    </tr>

                                </c:forEach>



                            </tbody>
                        </table>

                        <!--ini buat modal -->
                        <div id="overtimeData" class="modal modal-adminpro-general default-popup-PrimaryModal fade" role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header header-color-modal bg-color-1">
                                        <h4 class="modal-title">Overtime Form</h4>
                                        <div class="modal-close-area modal-close-df">
                                            <a class="close" data-dismiss="modal" href="#"><i class="fa fa-close"></i></a>
                                        </div>
                                    </div>
                                    <form method="POST" action="/logout">
                                        <div class="modal-body">

                                            <div class="form-group-inner">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                                        <label class="login2">Description</label>
                                                    </div>
                                                    <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                                        <textarea type="text" class="form-control" placeholder="Description" name="Description"></textarea>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group-inner">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                                                        <label class="login2">duration</label>
                                                    </div>
                                                    <div class="col-lg-2 col-md-8 col-sm-8 col-xs-12 form-group-inner">
                                                        <input type="text" class="text-info form-control" placeholder="" name="durasi" value="<%= duration %>" readonly/> 
                                                    </div>
                                                    <div class="col-lg-1 col-md-4 col-sm-4 col-xs-12">
                                                        <label class="login2">jam</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button class="btn btn-custon-rounded-four btn-primary btn-lg" data-dismiss="modal" ">Cancel</button>
                                                <button type="submit" class="btn btn-custon-rounded-four btn-primary btn-lg" id="ASD" name="" onclick="swal('Oops!', 'Something went wrong on the page!', 'error')">Save</button>
                                            </div>
                                            <!--                                <button type="submit" class="btn btn-default" id="ASD" name="" onclick="swal('Oops!', 'Something went wrong on the page!', 'error')">Save</button>
                                                                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>-->
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                        <!--end modal-->

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Static Table Start -->
    <!-- Static Table End -->
    <div class="footer-copyright-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer-copy-right">
                        <p>Copyright © 2018 <a href="">Bootcamp21</a> made with LOVE.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<!-- jquery
       ============================================ -->
<script src="<c:url value="/resources/js/vendor/jquery-1.11.3.min.js"/>"></script>
<!-- bootstrap JS
            ============================================ -->
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<!-- wow JS
            ============================================ -->
<script src="<c:url value="/resources/js/wow.min.js"/>"></script>
<!-- price-slider JS
            ============================================ -->
<script src="<c:url value="/resources/js/jquery-price-slider.js"/>"></script>
<!-- meanmenu JS
            ============================================ -->
<script src="<c:url value="/resources/js/jquery.meanmenu.js"/>"></script>
<!-- owl.carousel JS
            ============================================ -->
<script src="<c:url value="/resources/js/owl.carousel.min.js"/>"></script>
<!-- sticky JS
            ============================================ -->
<script src="<c:url value="/resources/js/jquery.sticky.js"/>"></script>
<!-- scrollUp JS
            ============================================ -->
<script src="<c:url value="/resources/js/jquery.scrollUp.min.js"/>"></script>
<!-- mCustomScrollbar JS
            ============================================ -->
<script src="<c:url value="/resources/js/scrollbar/jquery.mCustomScrollbar.concat.min.js"/>"></script>
<script src="<c:url value="/resources/js/scrollbar/mCustomScrollbar-active.js"/>"></script>
<!-- metisMenu JS
            ============================================ -->
<script src="<c:url value="/resources/js/metisMenu/metisMenu.min.js"/>"></script>
<script src="<c:url value="/resources/js/metisMenu/metisMenu-active.js"/>"></script>
<!-- data table JS
            ============================================ -->
<script src="<c:url value="/resources/js/data-table/bootstrap-table.js"/>"></script>
<script src="<c:url value="/resources/js/data-table/tableExport.js"/>"></script>
<script src="<c:url value="/resources/js/data-table/data-table-active.js"/>"></script>
<script src="<c:url value="/resources/js/data-table/bootstrap-table-editable.js"/>"></script>
<script src="<c:url value="/resources/js/data-table/bootstrap-editable.js"/>"></script>
<script src="<c:url value="/resources/js/data-table/bootstrap-table-resizable.js"/>"></script>
<script src="<c:url value="/resources/js/data-table/colResizable-1.5.source.js"/>"></script>
<script src="<c:url value="/resources/js/data-table/bootstrap-table-export.js"/>"></script>
<!--  editable JS
            ============================================ -->
<script src="<c:url value="/resources/js/editable/jquery.mockjax.js"/>"></script>
<script src="<c:url value="/resources/js/editable/mock-active.js"/>"></script>
<script src="<c:url value="/resources/js/editable/select2.js"/>"></script>
<script src="<c:url value="/resources/js/editable/moment.min.js"/>"></script>
<script src="<c:url value="/resources/js/editable/bootstrap-datetimepicker.js"/>"></script>
<script src="<c:url value="/resources/js/editable/bootstrap-editable.js"/>"></script>
<script src="<c:url value="/resources/js/editable/xediable-active.js"/>"></script>
<!-- Chart JS
            ============================================ -->
<script src="<c:url value="/resources/js/chart/jquery.peity.min.js"/>"></script>
<script src="<c:url value="/resources/js/peity/peity-active.js"/>"></script>
<!-- tab JS
            ============================================ -->
<script src="<c:url value="/resources/js/tab.js"/>"></script>
<!-- plugins JS
            ============================================ -->
<script src="<c:url value="/resources/js/plugins.js"/>"></script>
<!-- main JS
            ============================================ -->
<script src="<c:url value="/resources/js/main.js"/>"></script>
<!-- morrisjs JS
       ============================================ -->
<script src="<c:url value="/resources/js/sparkline/jquery.sparkline.min.js"/>"></script>
<script src="<c:url value="/resources/js/sparkline/jquery.charts-sparkline.js"/>"></script>
<!-- calendar JS
            ============================================ -->
<script src="<c:url value="/resources/js/calendar/moment.min.js"/>"></script>
<script src="<c:url value="/resources/js/calendar/fullcalendar.min.js"/>"></script>
<script src="<c:url value="/resources/js/calendar/fullcalendar-active.js"/>"></script>
<!-- datapicker JS
               ============================================ -->
<script src="<c:url value="/resources/js/datapicker/bootstrap-datepicker.js"/>"></script>
<script src="<c:url value="/resources/js/datapicker/datepicker-active.js"/>"></script>
<!-- input-mask JS
                ============================================ -->
<script src="<c:url value="/resources/js/input-mask/jasny-bootstrap.min.js"/>"></script>
<!-- select2 JS
                ============================================ -->
<script src="<c:url value="/resources/js/select2/select2.full.min.js"/>"></script>
<script src="<c:url value="/resources/js/select2/select2-active.js"/>"></script>
</body>

</html>

