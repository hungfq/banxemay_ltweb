<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<head>
    <title>Orders</title>

    <%@include file="/common/seller/theme.jsp" %>
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
            padding-top: 0px !important;
        }
    </style>
    <div class="page-content" id="page-content">
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
                <%--                <div class="note note-danger note-bordered">--%>
                <%--                    <p>NOTE: The below datatable is not connected to a real--%>
                <%--                        database so the filter and sorting is just simulated for demo--%>
                <%--                        purposes only.</p>--%>
                <%--                </div>--%>
                <!-- Begin: life time stats -->
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
                                    <th>STT</th>
                                    <th>Ngày đặt hàng</th>
                                    <th>Tên KH</th>
                                    <th>SĐT</th>
                                    <th>Địa chỉ</th>
                                    <th>Người nhận</th>
                                    <th>Thanh toán</th>
                                    <th>Trạng thái</th>
                                    <th>Hành động</th>
                                </tr>
                                </thead>
                                <tbody>
                                <fmt:setLocale value="fr_CA"/>
                                <c:forEach items="${orders}" var="order" varStatus="STT">
                                    <tr>
                                        <td>${STT.index+1}</td>
                                        <td>${order.buy_date}</td>
                                        <td>${order.getCustomerName()}</td>
                                        <td>${order.phone}</td>
                                        <td>${order.address}</td>
                                        <td>${order.receiver}</td>
                                        <td>${order.getPayment()}</td>
                                        <td>${order.getOrderStatus()}</td>
                                        <td>
                                            <a href="orderview?action=view&id=${order.id}"
                                               class="btn btn-primary">Chi tiết</a>
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
    <%@include file="/common/seller/core_plugin.jsp" %>


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
            EcommerceOrders.init();
        });
    </script>
    <script type="text/javascript"
            src="https://code.jquery.com/jquery-2.1.1.min.js"></script>

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
            buttons: ['copy', 'excel', 'pdf', 'print']
        });
    </script>
</content>