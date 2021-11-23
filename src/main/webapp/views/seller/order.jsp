<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<head>
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/select2/select2.css"/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/bootstrap-datepicker/css/datepicker.css"/>"/>
    <!-- END PAGE LEVEL STYLES -->

    <%@include file="/common/seller/theme.jsp" %>

</head>
<body>
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <div class="page-content" style="padding-top: 0px">
        <!-- BEGIN PAGE HEAD -->
<%--        <div class="page-head">--%>
<%--            <!-- BEGIN PAGE TITLE -->--%>
<%--            <div class="page-title">--%>
<%--                <h1>--%>
<%--                    Orders <small>statistics & reports</small>--%>
<%--                </h1>--%>
<%--            </div>--%>
<%--            <!-- END PAGE TITLE -->--%>

<%--            &lt;%&ndash; <%@include file="/common/seller/toolbar.jsp"%> &ndash;%&gt;--%>

<%--        </div>--%>
<%--        <!-- END PAGE HEAD -->--%>
<%--        <!-- BEGIN PAGE BREADCRUMB -->--%>
<%--        <ul class="page-breadcrumb breadcrumb">--%>
<%--            <li><a href="#">Home</a><i class="fa fa-circle"></i></li>--%>
<%--            <li><a href="#">Features</a><i class="fa fa-circle"></i></li>--%>
<%--            <li class="active">Order</li>--%>
<%--        </ul>--%>
<%--        <!-- END PAGE BREADCRUMB -->--%>

        <!-- BEGIN PAGE CONTENT-->
        <div class="row">
            <div class="col-md-12">
                <div class="note note-danger note-bordered">
                    <p>NOTE: The below datatable is not connected to a real
                        database so the filter and sorting is just simulated for demo
                        purposes only.</p>
                </div>
                <!-- Begin: life time stats -->
                <div class="portlet light">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="icon-basket font-green-sharp"></i> <span
                                class="caption-subject font-green-sharp bold uppercase">Order
									Listing</span> <span class="caption-helper">manage orders...</span>
                        </div>
                        <div class="actions">
                            <a href="#" class="btn btn-circle btn-default"> <i
                                    class="fa fa-plus"></i> <span class="hidden-480"> New
										Order </span>
                            </a>
                            <div class="btn-group">
                                <a class="btn btn-default btn-circle" href="#"
                                   data-toggle="dropdown"> <i class="fa fa-share"></i> <span
                                        class="hidden-480"> Tools </span> <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu pull-right">
                                    <li><a href="#"> Export to Excel </a></li>
                                    <li><a href="#"> Export to CSV </a></li>
                                    <li><a href="#"> Export to XML </a></li>
                                    <li class="divider"></li>
                                    <li><a href="#"> Print Invoices </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="table-container">
                            <div class="table-actions-wrapper">
                                <span> </span> <select
                                    class="table-group-action-input form-control input-inline input-small input-sm">
                                <option value="">Select...</option>
                                <option value="Cancel">Cancel</option>
                                <option value="Cancel">Hold</option>
                                <option value="Cancel">On Hold</option>
                                <option value="Close">Close</option>
                            </select>
                                <button class="btn btn-sm yellow table-group-action-submit">
                                    <i class="fa fa-check"></i> Submit
                                </button>
                            </div>
                            <table class="table table-striped table-bordered table-hover"
                                   id="datatable_orders">
                                <thead>
                                <tr role="row" class="heading">
                                    <th width="2%"><input type="checkbox"
                                                          class="group-checkable"></th>
                                    <th width="5%">Order&nbsp;#</th>
                                    <th width="15%">Purchased&nbsp;On</th>
                                    <th width="15%">Customer</th>
                                    <th width="10%">Ship&nbsp;To</th>
                                    <th width="10%">Base&nbsp;Price</th>
                                    <th width="10%">Purchased&nbsp;Price</th>
                                    <th width="10%">Status</th>
                                    <th width="10%">Actions</th>
                                </tr>
                                <tr role="row" class="filter">
                                    <td></td>
                                    <td><input type="text"
                                               class="form-control form-filter input-sm" name="order_id">
                                    </td>
                                    <td>
                                        <div class="input-group date date-picker margin-bottom-5"
                                             data-date-format="dd/mm/yyyy">
                                            <input type="text"
                                                   class="form-control form-filter input-sm" readonly
                                                   name="order_date_from" placeholder="From"> <span
                                                class="input-group-btn">
														<button class="btn btn-sm default" type="button">
															<i class="fa fa-calendar"></i>
														</button>
													</span>
                                        </div>
                                        <div class="input-group date date-picker"
                                             data-date-format="dd/mm/yyyy">
                                            <input type="text"
                                                   class="form-control form-filter input-sm" readonly
                                                   name="order_date_to" placeholder="To"> <span
                                                class="input-group-btn">
														<button class="btn btn-sm default" type="button">
															<i class="fa fa-calendar"></i>
														</button>
													</span>
                                        </div>
                                    </td>
                                    <td><input type="text"
                                               class="form-control form-filter input-sm"
                                               name="order_customer_name"></td>
                                    <td><input type="text"
                                               class="form-control form-filter input-sm"
                                               name="order_ship_to"></td>
                                    <td>
                                        <div class="margin-bottom-5">
                                            <input type="text"
                                                   class="form-control form-filter input-sm"
                                                   name="order_base_price_from" placeholder="From"/>
                                        </div>
                                        <input type="text"
                                               class="form-control form-filter input-sm"
                                               name="order_base_price_to" placeholder="To"/>
                                    </td>
                                    <td>
                                        <div class="margin-bottom-5">
                                            <input type="text"
                                                   class="form-control form-filter input-sm margin-bottom-5 clearfix"
                                                   name="order_purchase_price_from" placeholder="From"/>
                                        </div>
                                        <input type="text"
                                               class="form-control form-filter input-sm"
                                               name="order_purchase_price_to" placeholder="To"/>
                                    </td>
                                    <td><select name="order_status"
                                                class="form-control form-filter input-sm">
                                        <option value="">Select...</option>
                                        <option value="pending">Pending</option>
                                        <option value="closed">Closed</option>
                                        <option value="hold">On Hold</option>
                                        <option value="fraud">Fraud</option>
                                    </select></td>
                                    <td>
                                        <div class="margin-bottom-5">
                                            <button
                                                    class="btn btn-sm yellow filter-submit margin-bottom">
                                                <i class="fa fa-search"></i> Search
                                            </button>
                                        </div>
                                        <button class="btn btn-sm red filter-cancel">
                                            <i class="fa fa-times"></i> Reset
                                        </button>
                                    </td>
                                </tr>

                                </thead>
                                <tbody>
                                </tbody>
                            </table>
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
    <script type="text/javascript"
            src="<c:url value="/templates/assets/global/plugins/select2/select2.min.js"/>"></script>
    <script type="text/javascript"
            src="<c:url value="/templates/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"/>"></script>
    <script type="text/javascript"
            src="<c:url value="/templates/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"/>"></script>
    <script type="text/javascript"
            src="<c:url value="/templates/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"/>"></script>
    <!-- END PAGE LEVEL PLUGINS --> <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script
            src="<c:url value="/templates/assets/global/scripts/metronic.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/admin/layout2/scripts/layout.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/admin/layout2/scripts/demo.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/global/scripts/datatable.js"/>"></script>
    <script
            src="<c:url value="/templates/assets/admin/pages/scripts/ecommerce-orders.js"/>"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script>
        jQuery(document).ready(function () {
            Metronic.init(); // init metronic core components
            Layout.init(); // init current layout
            Demo.init(); // init demo features
            EcommerceOrders.init();
        });
    </script> <!-- END JAVASCRIPTS --> </content>