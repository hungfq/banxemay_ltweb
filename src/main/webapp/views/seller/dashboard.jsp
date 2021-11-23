<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<head>
    <%@include file="/common/seller/theme.jsp" %>
</head>
<body>
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper ">
    <div class="page-content">
        <!-- BEGIN PAGE HEAD -->
        <div class="page-head">
            <!-- BEGIN PAGE TITLE -->
            <div class="page-title">
                <h1>
                    Dashboard <small>statistics & reports</small>
                </h1>
            </div>
            <!-- END PAGE TITLE -->

            <%-- <%@include file="/common/seller/toolbar.jsp"%> --%>

        </div>
        <!-- END PAGE HEAD -->
        <!-- BEGIN PAGE BREADCRUMB -->
<%--        <ul class="page-breadcrumb breadcrumb">--%>
<%--            <li><a href="#">Home</a><i class="fa fa-circle"></i></li>--%>
<%--            <li><a href="#">Features</a><i class="fa fa-circle"></i></li>--%>
<%--            <li class="active">Dashboard</li>--%>
<%--        </ul>--%>
        <!-- END PAGE BREADCRUMB -->


        <!-- BEGIN PAGE CONTENT-->
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12 margin-bottom-10">
                <div class="dashboard-stat blue-madison">
                    <div class="visual">
                        <i class="fa fa-briefcase fa-icon-medium"></i>
                    </div>
                    <div class="details">
                        <div class="number">$168,492.54</div>
                        <div class="desc">Lifetime Sales</div>
                    </div>
                    <a class="more" href="#"> View more <i
                            class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="dashboard-stat red-intense">
                    <div class="visual">
                        <i class="fa fa-shopping-cart"></i>
                    </div>
                    <div class="details">
                        <div class="number">1,127,390</div>
                        <div class="desc">Total Orders</div>
                    </div>
                    <a class="more" href="#"> View more <i
                            class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <div class="dashboard-stat green-haze">
                    <div class="visual">
                        <i class="fa fa-group fa-icon-medium"></i>
                    </div>
                    <div class="details">
                        <div class="number">$670.54</div>
                        <div class="desc">Average Orders</div>
                    </div>
                    <a class="more" href="#"> View more <i
                            class="m-icon-swapright m-icon-white"></i>
                    </a>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <!-- Begin: life time stats -->
                <div class="portlet light">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="icon-bar-chart font-green-sharp"></i> <span
                                class="caption-subject font-green-sharp bold uppercase">Overview</span>
                            <span class="caption-helper">weekly stats...</span>
                        </div>
                        <div class="tools">
                            <a href="javascript:;" class="collapse"> </a> <a
                                href="#portlet-config" data-toggle="modal" class="config">
                        </a> <a href="javascript:;" class="reload"> </a> <a
                                href="javascript:;" class="fullscreen"> </a> <a
                                href="javascript:;" class="remove"> </a>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="tabbable-line">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#overview_1" data-toggle="tab">
                                    Top Selling </a></li>
                                <li><a href="#overview_2" data-toggle="tab"> Most
                                    Viewed </a></li>
                                <li><a href="#overview_3" data-toggle="tab"> Customers
                                </a></li>
                                <li class="dropdown"><a href="#" class="dropdown-toggle"
                                                        data-toggle="dropdown"> Orders <i class="fa fa-angle-down"></i>
                                </a>
                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="#overview_4" tabindex="-1"
                                               data-toggle="tab"> Latest 10 Orders </a></li>
                                        <li><a href="#overview_4" tabindex="-1"
                                               data-toggle="tab"> Pending Orders </a></li>
                                        <li><a href="#overview_4" tabindex="-1"
                                               data-toggle="tab"> Completed Orders </a></li>
                                        <li><a href="#overview_4" tabindex="-1"
                                               data-toggle="tab"> Rejected Orders </a></li>
                                    </ul>
                                </li>
                            </ul>
                            <div class="tab-content">
                                <div class="tab-pane active" id="overview_1">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover table-bordered">
                                            <thead>
                                            <tr>
                                                <th>Product Name</th>
                                                <th>Price</th>
                                                <th>Sold</th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td><a href="#"> Apple iPhone 4s - 16GB - Black </a></td>
                                                <td>$625.50</td>
                                                <td>809</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Samsung Galaxy S III SGH-I747 -
                                                    16GB </a></td>
                                                <td>$915.50</td>
                                                <td>6709</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Motorola Droid 4 XT894 - 16GB -
                                                    Black </a></td>
                                                <td>$878.50</td>
                                                <td>784</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Regatta Luca 3 in 1 Jacket </a></td>
                                                <td>$25.50</td>
                                                <td>1245</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Samsung Galaxy Note 3 </a></td>
                                                <td>$925.50</td>
                                                <td>21245</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Inoval Digital Pen </a></td>
                                                <td>$125.50</td>
                                                <td>1245</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Metronic - Responsive Admin +
                                                    Frontend Theme </a></td>
                                                <td>$20.00</td>
                                                <td>11190</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane" id="overview_2">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover table-bordered">
                                            <thead>
                                            <tr>
                                                <th>Product Name</th>
                                                <th>Price</th>
                                                <th>Views</th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td><a href="#"> Metronic - Responsive Admin +
                                                    Frontend Theme </a></td>
                                                <td>$20.00</td>
                                                <td>11190</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Regatta Luca 3 in 1 Jacket </a></td>
                                                <td>$25.50</td>
                                                <td>1245</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Apple iPhone 4s - 16GB - Black </a></td>
                                                <td>$625.50</td>
                                                <td>809</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Samsung Galaxy S III SGH-I747 -
                                                    16GB </a></td>
                                                <td>$915.50</td>
                                                <td>6709</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Motorola Droid 4 XT894 - 16GB -
                                                    Black </a></td>
                                                <td>$878.50</td>
                                                <td>784</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Samsung Galaxy Note 3 </a></td>
                                                <td>$925.50</td>
                                                <td>21245</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Inoval Digital Pen </a></td>
                                                <td>$125.50</td>
                                                <td>1245</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane" id="overview_3">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover table-bordered">
                                            <thead>
                                            <tr>
                                                <th>Customer Name</th>
                                                <th>Total Orders</th>
                                                <th>Total Amount</th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td><a href="#"> David Wilson </a></td>
                                                <td>3</td>
                                                <td>$625.50</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Amanda Nilson </a></td>
                                                <td>4</td>
                                                <td>$12625.50</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Jhon Doe </a></td>
                                                <td>2</td>
                                                <td>$125.00</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Bill Chang </a></td>
                                                <td>45</td>
                                                <td>$12,125.70</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Paul Strong </a></td>
                                                <td>1</td>
                                                <td>$890.85</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Jane Hilson </a></td>
                                                <td>5</td>
                                                <td>$239.85</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Patrick Walker </a></td>
                                                <td>2</td>
                                                <td>$1239.85</td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="tab-pane" id="overview_4">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-hover table-bordered">
                                            <thead>
                                            <tr>
                                                <th>Customer Name</th>
                                                <th>Date</th>
                                                <th>Amount</th>
                                                <th>Status</th>
                                                <th></th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td><a href="#"> David Wilson </a></td>
                                                <td>3 Jan, 2013</td>
                                                <td>$625.50</td>
                                                <td><span class="label label-sm label-warning">
																Pending </span></td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Amanda Nilson </a></td>
                                                <td>13 Feb, 2013</td>
                                                <td>$12625.50</td>
                                                <td><span class="label label-sm label-warning">
																Pending </span></td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Jhon Doe </a></td>
                                                <td>20 Mar, 2013</td>
                                                <td>$125.00</td>
                                                <td><span class="label label-sm label-success">
																Success </span></td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Bill Chang </a></td>
                                                <td>29 May, 2013</td>
                                                <td>$12,125.70</td>
                                                <td><span class="label label-sm label-info">
																In Process </span></td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Paul Strong </a></td>
                                                <td>1 Jun, 2013</td>
                                                <td>$890.85</td>
                                                <td><span class="label label-sm label-success">
																Success </span></td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Jane Hilson </a></td>
                                                <td>5 Aug, 2013</td>
                                                <td>$239.85</td>
                                                <td><span class="label label-sm label-danger">
																Canceled </span></td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            <tr>
                                                <td><a href="#"> Patrick Walker </a></td>
                                                <td>6 Aug, 2013</td>
                                                <td>$1239.85</td>
                                                <td><span class="label label-sm label-success">
																Success </span></td>
                                                <td><a href="#"
                                                       class="btn default btn-xs green-stripe"> View </a></td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End: life time stats -->
            </div>
            <div class="col-md-6">
                <!-- Begin: life time stats -->
                <div class="portlet light">
                    <div class="portlet-title tabbable-line">
                        <div class="caption">
                            <i class="icon-share font-red-sunglo"></i> <span
                                class="caption-subject font-red-sunglo bold uppercase">Revenue</span>
                            <span class="caption-helper">weekly stats...</span>
                        </div>
                        <ul class="nav nav-tabs">
                            <li><a href="#portlet_tab2" data-toggle="tab"
                                   id="statistics_amounts_tab"> Amounts </a></li>
                            <li class="active"><a href="#portlet_tab1"
                                                  data-toggle="tab"> Orders </a></li>
                        </ul>
                    </div>
                    <div class="portlet-body">
                        <div class="tab-content">
                            <div class="tab-pane active" id="portlet_tab1">
                                <div id="statistics_1" class="chart"></div>
                            </div>
                            <div class="tab-pane" id="portlet_tab2">
                                <div id="statistics_2" class="chart"></div>
                            </div>
                        </div>
                        <div class="well margin-top-10 no-margin no-border">
                            <div class="row">
                                <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
                                    <span class="label label-success"> Revenue: </span>
                                    <h3>$111K</h3>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
                                    <span class="label label-info"> Tax: </span>
                                    <h3>$14K</h3>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
                                    <span class="label label-danger"> Shipment: </span>
                                    <h3>$10K</h3>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-6 text-stat">
                                    <span class="label label-warning"> Orders: </span>
                                    <h3>2350</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End: life time stats -->
            </div>
        </div>
        <!-- END PAGE CONTENT-->
    </div>
</div>
<!-- END CONTENT -->
</body>
<content tag="local_script"> <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

    <%@include file="/common/seller/core_plugin.jsp" %>

    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script
            src="<c:url value="/templates/assets/global/plugins/jqvmap/jqvmap/jquery.vmap.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.russia.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.world.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.europe.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.germany.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/global/plugins/jqvmap/jqvmap/maps/jquery.vmap.usa.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/global/plugins/jqvmap/jqvmap/data/jquery.vmap.sampledata.js"/>"
            type="text/javascript"></script>
    <!-- IMPORTANT! fullcalendar depends on jquery-ui-1.10.3.custom.min.js />"for drag & drop support -->
    <script
            src="<c:url value="/templates/assets/global/plugins/morris/morris.min.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/global/plugins/morris/raphael-min.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/global/plugins/jquery.sparkline.min.js"/>"
            type="text/javascript"></script> <!-- END PAGE LEVEL PLUGINS --> <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script
            src="<c:url value="/templates/assets/global/scripts/metronic.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/admin/layout4/scripts/layout.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/admin/layout4/scripts/demo.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/admin/pages/scripts/index3.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/admin/pages/scripts/tasks.js"/>"
            type="text/javascript"></script> <!-- END PAGE LEVEL SCRIPTS -->
    <script>
        jQuery(document).ready(function () {
            /* 		Metronic.init(); // init metronic core componets
             Layout.init(); // init layout
             Demo.init(); // init demo features
             Index.init(); // init index page
             Tasks.initDashboardWidget(); // init tash dashboard widget   */
            Metronic.init(); // init metronic core components
            Layout.init(); // init current layout
            Demo.init(); // init demo features
            Index.init(); // init index page
        });
    </script> <!-- END JAVASCRIPTS --> </content>

