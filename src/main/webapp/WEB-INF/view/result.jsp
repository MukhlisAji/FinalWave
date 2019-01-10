<%-- 
    Document   : PageAdmin
    Created on : Dec 15, 2018, 7:39:59 AM
    Author     : tikamhrdk
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Admin | Admin</title>
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

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
        <script src="bower_components/sweetalert2/dist/sweetalert2.all.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
        <script src="bower_components/sweetalert2/dist/sweetalert2.min.js"></script>
        <link rel="stylesheet" href="bower_components/sweetalert2/dist/sweetalert2.min.css">

        <script type="text/javascript">
            $(document).ready(function () {
                $('[id="Details"]').click(function () {
                    var nik = $(this).attr('value');
                    $.get("../editEmp?nik=" + nik, function (HASIL, status) {
                        $("#detailhasil").html(HASIL);
                        $('#EditData').modal('show');
                    });
                });
            });
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
                                <a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="fa big-icon fa-envelope icon-wrap"></i> <span class="mini-click-non">Employee</span></a>
                                <ul class="submenu-angle" aria-expanded="false">
                                    <li><a title="Inbox" href="mailbox.html"><i class="fa fa-inbox sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Profile</span></a></li>
                                    <li><a title="View Mail" href="view/PageAdminEmployee.jsp"><i class="fa fa-television sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Presence</span></a></li>
                                    <li><a id="overtimes" title="overtime data"><i class="fa fa-paper-plane sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro" >Overtime</span></a></li>
                                </ul>
                            </li>
                            <li>
                                <a class="has-arrow" href="mailbox.html" aria-expanded="false"><i class="fa big-icon fa-envelope icon-wrap"></i> <span class="mini-click-non">Workspace</span></a>
                                <ul class="submenu-angle" aria-expanded="false">
                                    <li><a title="My Profil" href="PageEmployeeProfile.jsp"><i class="fa fa-inbox sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">My Profile</span></a></li>
                                    <li><a title="My Presence" href=""><i class="fa fa-television sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Presence</span></a></li>
                                    <li><a id="overtimes" title="overtime data" href="PageEmployeeOvertime.jsp"><i class="fa fa-paper-plane sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro" >My Overtime</span></a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </nav>
        </div>
        <!-- Mobile Menu end -->
        <div class="breadcome-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Start Welcome area -->
    <div class="all-content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
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
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
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
                                                        <span class="admin-name">  </span>
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
                                                        <form action="/logout1" method="POST">
                                                            <input type="hidden" class="text-info form-control" placeholder="" name="durasi" value="0" readonly/> 
                                                            <input type="hidden" class="text-info form-control" placeholder="" name="Description" value="" readonly/> 
                                                            <li><button type="submit" class="btn-danger"><span class="fa fa-lock author-log-ic"></span>Log Out</button>
                                                            </li>
                                                        </form>
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
                                        <li><a data-toggle="collapse" data-target="#Charts" href="#">Overtime <span class="admin-project-icon adminpro-icon adminpro-down-arrow"></span></a>
                                            <ul class="collapse dropdown-header-top">
                                                <li><a href="index.html">Dashboard v.1</a></li>
                                                <li><a href="index-1.html">Dashboard v.2</a></li>
                                                <li><a href="index-3.html">Dashboard v.3</a></li>
                                                <li><a href="product-list.html">Product List</a></li>
                                            </ul>
                                        </li>

                                        <li><a href="lock.html">Lock</a>

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

        <div id="overtimeData"></div>

        <!-- Static Table Start -->
        <br><br><br>
        <br><br><br>
        <form method="POST" class="form-group" action="/Result">
            <div class="form-group-inner">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-3 col-xs-12">
                        <label class="login2 pull-right pull-right-pro">NIK</label>
                    </div>
                    <div class="col-lg-2 col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" name="nik"/>
                    </div>
                </div>
            </div>
            <div class="form-group-inner">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-3 col-xs-12">
                        <label class="login2 pull-right pull-right-pro">Mounth</label>
                    </div>
                    <div class="col-lg-2 col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" name="date"/>
                    </div>
                </div>
            </div>
            <div class="form-group-inner">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-3 col-xs-12">
                        <label class="login2 pull-right pull-right-pro">Year</label>
                    </div>
                    <div class="col-lg-2 col-md-9 col-sm-9 col-xs-12">
                        <input type="text" class="form-control" name="Year"/>
                    </div>
                </div>
            </div>
            <div class="form-group-inner">
                <div class="row">
                    <div class="col-lg-1 col-md-1 col-sm-3 col-xs-12">
                        <label class="login2 pull-right pull-right-pro"></label>
                    </div>
                    <div class="col-lg-1 col-md-9 col-sm-9 col-xs-12">
                        <button class="btn btn-custon-rounded-four btn-primary btn-md" type="submit" ">show</button>
                    </div>
                </div>
            </div>

        </form>
        <!-- Static Table Start -->

        <div class="" style="float: right; overflow: auto; margin:30px">
            <a href="/file" class="btn btn-success" target = "_blank">show timesheet</a>
        </div>
        <div class="data-table-area mg-tb-15">
            <div class="container-fluid">
                <div class="sparkline13-list">

                    <div class="sparkline13-hd" >
                        <div class="main-sparkline13-hd" style="float: left; overflow: auto; ">
                            <h1>Employees <span class="table-project-n">Data</span> Table</h1>
                        </div>

                    </div>
                    <div class="sparkline13-graph">
                        <div class="datatable-dashv1-list custom-datatable-overright">
                            <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                   data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">


                                <thead>
                                    <tr>
                                        <th data-field="no">No</th>
                                        <th data-field="OvertimeId">ID</th>
                                        <th data-field="PresenceId" data-editable="true">Presence Id</th>
                                        <th data-field="Duration" data-editable="true">Duration</th>
                                        <th data-field="Fee" data-editable="true">Fee</th>
                                        <th data-field="Status" data-editable="true">Status</th>
                                        <th data-field="" style="width: 40px">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="List" items="${OvertimeList}" >

                                        <tr>
                                            <td></td>
                                            <td><c:out value="${List.overtimeId}"/></td>
                                            <td><c:out value="${List.presenceId.presenceId}"/></td>
                                            <td><c:out value="${List.otDuration}"/></td>
                                            <td><c:out value="${List.fee}"/></td>
                                            <td><c:out value="${List.status}"/></td>
                                            <td style="width: 40px"> <a href="/approve/${List.overtimeId}" class="btn btn-info">Approve</a>
                                                <a href="/reject/${List.overtimeId}" class="btn btn-danger">Reject</a></td>
                                        </tr>

                                    </c:forEach>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
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
<script>
            jQuery(document).ready(function ($) {
                $('[id="Deletes"]').click(function () {
                    var getLink = $(this).attr('href');
                    swal({
                        title: 'Are you sure?',
                        text: "You won't be able to revert this!",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes, delete it!'
                    }, function () {

                        window.location.href = getLink;
                    });
                    return false;
                });
            });
</script>

</html>

