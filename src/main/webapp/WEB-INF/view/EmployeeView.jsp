<%-- 
    Document   : PageEmployee
    Created on : Dec 14, 2018, 11:19:22 AM
    Author     : Mukhlish
--%>

<%@page import="com.TimeOver.Entity.Employee"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://www.springframework.org/tags" prefix = "spring" %>

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
        <link rel="stylesheet" href="<c:url value="/resources/css/metisMenu/metisMenu.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/metisMenu/metisMenu-vertical.css"/>">
        <!-- calendar CSS
                    ============================================ -->
        <link rel="stylesheet" href="<c:url value="/resources/css/calendar/fullcalendar.min.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/calendar/fullcalendar.print.min.css"/>"
              <!-- x-editor CSS
                          ============================================ -->
              <link rel="stylesheet" href="<c:url value="/resources/css/form/all-type-forms.css"/>">

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

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>"></script>


</script>
<script type="text/javascript">
    $(document).ready(function () {
        $('[id="Details"]').click(function () {
            var nik = $(this).attr('value');
            $.get("../getNIK?nik=" + nik, function (HASIL, status) {
                $("#detailhasil").html(HASIL);
                $('#editJob').modal('show');
            });
        });
    });
</script>
</head>

<body>
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
                            <a class="has-arrow" href="" aria-expanded="true"><i class="fa big-icon fa-home icon-wrap"></i> <span class="mini-click-non">Workspace</span></a>
                            <ul class="submenu-angle" aria-expanded="false">
                                <li><a title="Profil" href=""><i class="fa fa-user sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Profile</span></a></li>
                                <li><a title="Presence" href=""><i class="fa fa-television sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Presence</span></a></li>
                                <li><a id="overtimes" title="Overtime" href=""><i class="fa fa-paper-plane sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro" >Overtime</span></a></li>
                            </ul>
                        </li>
                        <li id="removable">
                            <a class="has-arrow" href="" aria-expanded="false"><i class="fa big-icon fa-envelope icon-wrap"></i> <span class="mini-click-non">Admin</span></a>
                            <ul class="submenu-angle" aria-expanded="true">
                                <li><a id="parameter" title="Presence" href="presence"><i class="fa fa-television sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Presence</span></a></li>
                                <li><a id="parameter" title="Overtime" href="overtime"><i class="fa fa-paper-plane sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Overtime</span></a></li>
                                <li><a id="parameter" title="Parameter" href="parameter"><i class="fa fa-envelope sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Parameter</span></a></li>
                                <li><a id="job" title="Job" href="job"><i class="fa fa-cog sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Job</span></a></li>
                                <li><a id="employee" title="Employee" href="employee"><i class="fa fa-diamond sub-icon-mg" aria-hidden="true"></i> <span class="mini-sub-pro">Employee</span></a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
        </nav>
    </div>
    <!-- Start Welcome area -->
    <div class="breadcome-area">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                </div>
            </div>
        </div>
    </div>

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
                                                        <li><a href="../Logout1?nik="><span class="fa fa-lock author-log-ic"></span>Log Out</a>
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Mobile Menu end -->

        <br><br>
        <div class="data-table-area mg-tb-15">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="sparkline13-list">
                            <div class="sparkline13-hd">
                                <div class="main-sparkline13-hd">
                                    <h1>EMPLOYEE <span class="table-project-n">DATA</span> TABLE</h1><br>
                                </div>
                            </div>
                            <div class="sparkline13-graph">
                                <div class="datatable-dashv1-list custom-datatable-overright">
                                    <div id="toolbar">
                                        <a class="btn btn-info" data-toggle="modal" data-target="#editModal" href="">Add Data</a>
                                    </div>
                                    <table id="table" data-toggle="table" data-pagination="true" data-search="true" data-show-columns="true" data-show-pagination-switch="true" data-show-refresh="true" data-key-events="true" data-show-toggle="true" data-resizable="true" data-cookie="true"
                                           data-cookie-id-table="saveId" data-show-export="true" data-click-to-select="true" data-toolbar="#toolbar">
                                        <thead>
                                            <tr>
                                                <th data-field="state" data-checkbox="true"></th>
                                                <th data-field="nik">NIK</th>
                                                <th data-field="name" data-editable="true">Name</th>
                                                <th data-field="email" data-editable="true">Email</th>
                                                <th data-field="phoneNumber" data-editable="true">Phone Number</th>
                                                <th data-field="hireDate" data-editable="true">Hire Date</th>
                                                <th data-field="manager" data-editable="true">Manager</th>
                                                <th data-field="salary" data-editable="true">Salary</th>
                                                <th data-field="isAdmin" data-editable="true">Is Admin</th>
                                                <th data-field="isDelete" data-editable="true">Is Delete</th>
                                                <th data-field="isActive" data-editable="true">Is Active</th>
                                                <th data-field="action">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="employee" items="${employeeList}">
                                                <tr>
                                                    <td></td>
                                                    <td>${employee.nik}</td>
                                                    <td>${employee.name}</td>
                                                    <td>${employee.email}</td>
                                                    <td>${employee.phoneNumber}</td>
                                                    <td>${employee.hireDate}</td>
                                                    <td>${employee.managerId.name}</td>
                                                    <td>${employee.salary}</td>
                                                    <td>${employee.isAdmin}</td>
                                                    <td>${employee.isDelete}</td>
                                                    <td>${employee.isActive}</td>
                                                    <td><a class="btn btn-success" data-toggle="modal" data-target="#editModal" href="/editEmployee/${employee.nik}">Edit</a>
                                                        <a class="btn btn-warning" href="/deleteEmployee/${employee.nik}">Delete</a></td> 
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Edit Data Job</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group-inner">
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                <label class="login2">NIK</label>
                            </div>
                            <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                <input type="text" class="form-control" name="nik" value="" readonly="true"/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group-inner">
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                <label class="login2">Name</label>
                            </div>
                            <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                <input type="text" class="form-control" name="name" value=""/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group-inner">
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                <label class="login2">Email</label>
                            </div>
                            <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                <input type="text" class="form-control" name="email" value=""/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group-inner">
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                <label class="login2">Phone Number</label>
                            </div>
                            <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                <input type="text" class="form-control" name="phoneNumber" value=""/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group-inner">
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                <label class="login2">Hire Date</label>
                            </div>
                            <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                <input type="text" class="form-control" name="hireDate" value=""/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group-inner">
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                <label class="login2">Job</label>
                            </div>
                            <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                <input type="text" class="form-control" name="jobTitle" value=""/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group-inner">
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                <label class="login2">Manager</label>
                            </div>
                            <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                <input type="text" class="form-control" name="managerName" value=""/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group-inner">
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                <label class="login2">Salary</label>
                            </div>
                            <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                <input type="text" class="form-control" name="salary" value=""/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group-inner">
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                <label class="login2">Is Admin</label>
                            </div>
                            <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                <input type="text" class="form-control" name="isAdmin" value=""/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group-inner">
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                <label class="login2">Is Delete</label>
                            </div>
                            <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                <input type="text" class="form-control" name="isDelete" value=""/>
                            </div>
                        </div>
                    </div>
                    <div class="form-group-inner">
                        <div class="row">
                            <div class="col-lg-3 col-md-4 col-sm-3 col-xs-12">
                                <label class="login2">Is Active</label>
                            </div>
                            <div class="col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                <input type="text" class="form-control" name="isActive" value=""/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>

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

