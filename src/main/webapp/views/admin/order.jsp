<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<head>
    <title>Orders</title>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/select2/select2.css"/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css"/>"/>
    <link rel="stylesheet" type="text/css"
          href="<c:url value="/templates/assets/global/plugins/bootstrap-datepicker/css/datepicker.css"/>"/>
    <%@include file="/common/admin/theme.jsp" %>
    <link rel="stylesheet"
          href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
    <link rel="stylesheet"
          href="https://cdn.datatables.net/buttons/1.2.4/css/buttons.dataTables.min.css">

</head>
<body>
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <style type="text/css">
        #page-content {
            padding-top: 0 !important;
        }
    </style>
    <div class="page-content" id="page-content">
        <!-- BEGIN PAGE CONTENT-->
        <div class="row">
            <div class="col-md-12">
                <div class="alert alert-warning ${param.msg == null ? "display-hide" : ""}">
                    <button class="close" data-close="alert"></button>
                    <span> <c:out value="${param.msg}"/>  </span>
                </div>
                <div class="portlet light">
                    <div class="portlet-title">
                        <div class="caption">
                            <i class="icon-basket font-green-sharp"></i> <span
                                class="caption-subject font-green-sharp bold uppercase">Order
									Listing</span> <span class="caption-helper">manage orders...</span>
                        </div>
                    </div>
                    <div class="portlet-body">
                        <div class="table-container">
                            <table id="example" class="table table-striped table-bordered"
                                   style="width: 100%">
                                <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Order day</th>
                                    <th>Seller</th>
                                    <th>Customer</th>
                                    <th>Phone</th>
                                    <th>Address</th>
                                    <th>Receiver</th>
                                    <th>Payment</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                <%--<fmt:setLocale value="fr_CA"/>--%>
                                <c:forEach items="${orders}" var="order" varStatus="STT">
                                    <tr>
                                        <td>${STT.index+1}</td>
                                        <td>${order.buy_date}</td>
                                        <td>${order.getSellerName()}</td>
                                        <td>${order.getCustomerName()}</td>
                                        <td>${order.phone}</td>
                                        <td>${order.address}</td>
                                        <td>${order.receiver}</td>
                                        <td>${order.getPayment()}</td>
                                        <td>${order.getOrderStatus()}</td>
                                        <td>
                                            <a href="orderview?action=view&id=${order.id}"
                                               class="btn btn-primary">Detail</a>
                                        </td>
                                    </tr>
                                </c:forEach>
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

<content tag="local_script">
    <%@include file="/common/admin/core_plugin.jsp" %>
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

    <script>
        jQuery(document).ready(function () {
            Metronic.init(); // init metronic core components
            Layout.init(); // init current layout
            Demo.init(); // init demo features
            // EcommerceOrders.init();
        });
    </script>
    <%--    <script type="text/javascript"--%>
    <%--            src="https://code.jquery.com/jquery-2.1.1.min.js"></script>--%>

    <!--Data Table-->
    <script type="text/javascript"
            src=" https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript"
            src=" https://cdn.datatables.net/buttons/1.2.4/js/dataTables.buttons.min.js"></script>

    <!--Export table buttons-->
    <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
    <script type="text/javascript"
            src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.24/build/pdfmake.min.js"></script>
    <script type="text/javascript"
            src="https://cdn.rawgit.com/bpampuch/pdfmake/0.1.24/build/vfs_fonts.js"></script>
    <script type="text/javascript"
            src="https://cdn.datatables.net/buttons/1.2.4/js/buttons.html5.min.js"></script>
    <script type="text/javascript"
            src="https://cdn.datatables.net/buttons/1.2.1/js/buttons.print.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#example').DataTable();
        });

        $('#example').DataTable({
            dom: 'Bfrtip',
            buttons: ['copy', 'excel', 'pdf', 'print'],
            "aaSorting": [1, 'desc']
        });
    </script>
</content>