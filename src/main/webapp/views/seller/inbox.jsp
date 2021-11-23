<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>

<head>
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link
            href="<c:url value="/templates/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.css"/>"
            rel="stylesheet" type="text/css"/>
    <link
            href="<c:url value="/templates/assets/global/plugins/fancybox/source/jquery.fancybox.css"/>"
            rel="stylesheet"/>
    <!-- BEGIN:File Upload Plugin CSS files-->
    <link
            href="<c:url value="/templates/assets/global/plugins/jquery-file-upload/blueimp-gallery/blueimp-gallery.min.css"/>"
            rel="stylesheet"/>
    <link
            href="<c:url value="/templates/assets/global/plugins/jquery-file-upload/css/jquery.fileupload.css"/>"
            rel="stylesheet"/>
    <link
            href="<c:url value="/templates/assets/global/plugins/jquery-file-upload/css/jquery.fileupload-ui.css"/>"
            rel="stylesheet"/>
    <!-- END:File Upload Plugin CSS files-->
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link
            href="<c:url value="/templates/assets/admin/pages/css/inbox.css"/>"
            rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL STYLES -->


    <%@include file="/common/seller/theme.jsp" %>
</head>

<body>
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
    <div class="page-content">
        <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
        <div class="modal fade" id="portlet-config" tabindex="-1"
             role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"
                                aria-hidden="true"></button>
                        <h4 class="modal-title">Modal title</h4>
                    </div>
                    <div class="modal-body">Widget settings form goes here</div>
                    <div class="modal-footer">
                        <button type="button" class="btn blue">Save changes</button>
                        <button type="button" class="btn default" data-dismiss="modal">Close</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
        <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
        <!-- BEGIN PAGE HEAD -->
        <div class="page-head">
            <!-- BEGIN PAGE TITLE -->
            <div class="page-title">
                <h1>
                    Inbox <small>statistics & reports</small>
                </h1>
            </div>
            <!-- END PAGE TITLE -->

            <%-- <%@include file="/common/seller/toolbar.jsp"%> --%>

        </div>
        <!-- END PAGE HEAD -->
        <!-- BEGIN PAGE BREADCRUMB -->
        <ul class="page-breadcrumb breadcrumb">
            <li><a href="#">Home</a><i class="fa fa-circle"></i></li>
            <li><a href="#">Features</a><i class="fa fa-circle"></i></li>
            <li class="active">Inbox</li>
        </ul>
        <!-- END PAGE BREADCRUMB -->
        <div class="portlet light">
            <div class="portlet-body">
                <div class="row inbox">
                    <div class="col-md-2">
                        <ul class="inbox-nav margin-bottom-10">
                            <li class="compose-btn"><a href="javascript:;"
                                                       data-title="Compose" class="btn green"> <i
                                    class="fa fa-edit"></i> Compose
                            </a></li>
                            <li class="inbox active"><a href="javascript:;" class="btn"
                                                        data-title="Inbox"> Inbox(3) </a> <b></b></li>
                            <li class="sent"><a class="btn" href="javascript:;"
                                                data-title="Sent"> Sent </a> <b></b></li>
                            <li class="draft"><a class="btn" href="javascript:;"
                                                 data-title="Draft"> Draft </a> <b></b></li>
                            <li class="trash"><a class="btn" href="javascript:;"
                                                 data-title="Trash"> Trash </a> <b></b></li>
                        </ul>
                    </div>
                    <div class="col-md-10">
                        <div class="inbox-header">
                            <h1 class="pull-left">Inbox</h1>
                            <form class="form-inline pull-right" action="index.html">
                                <div class="input-group input-medium">
                                    <input type="text" class="form-control" placeholder="Password">
                                    <span class="input-group-btn">
											<button type="submit" class="btn green">
												<i class="fa fa-search"></i>
											</button>
										</span>
                                </div>
                            </form>
                        </div>
                        <div class="inbox-loading">Loading...</div>
                        <div class="inbox-content"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END CONTENT -->

</body>


<content tag="local_script"> <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

    <%@include file="/common/seller/core_plugin.jsp" %>

    <!-- BEGIN: Page level plugins -->
    <script
            src="<c:url value="/templates/assets/global/plugins/fancybox/source/jquery.fancybox.pack.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/global/plugins/bootstrap-wysihtml5/wysihtml5-0.3.0.js"/>"
            type="text/javascript"></script>
    <script
            src="<c:url value="/templates/assets/global/plugins/bootstrap-wysihtml5/bootstrap-wysihtml5.js"/>"
            type="text/javascript"></script> <!-- BEGIN:File Upload Plugin JS files-->
    <!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
    <script
            src="<c:url value="/templates/assets/global/plugins/jquery-file-upload/js/vendor/jquery.ui.widget.js"/>"></script>
    <!-- The Templates plugin is included to render the upload/download listings -->
    <script
            src="<c:url value="/templates/assets/global/plugins/jquery-file-upload/js/vendor/tmpl.min.js"/>"></script>
    <!-- The Load Image plugin is included for the preview images and image resizing functionality -->
    <script
            src="<c:url value="/templates/assets/global/plugins/jquery-file-upload/js/vendor/load-image.min.js"/>"></script>
    <!-- The Canvas to Blob plugin is included for image resizing functionality -->
    <script
            src="<c:url value="/templates/assets/global/plugins/jquery-file-upload/js/vendor/canvas-to-blob.min.js"/>"></script>
    <!-- blueimp Gallery script -->
    <script
            src="<c:url value="/templates/assets/global/plugins/jquery-file-upload/blueimp-gallery/jquery.blueimp-gallery.min.js"/>"></script>
    <!-- The Iframe Transport is required for browsers without support for XHR file uploads -->
    <script
            src="<c:url value="/templates/assets/global/plugins/jquery-file-upload/js/jquery.iframe-transport.js"/>"></script>
    <!-- The basic File Upload plugin -->
    <script
            src="<c:url value="/templates/assets/global/plugins/jquery-file-upload/js/jquery.fileupload.js"/>"></script>
    <!-- The File Upload processing plugin -->
    <script
            src="<c:url value="/templates/assets/global/plugins/jquery-file-upload/js/jquery.fileupload-process.js"/>"></script>
    <!-- The File Upload image preview & resize plugin -->
    <script
            src="<c:url value="/templates/assets/global/plugins/jquery-file-upload/js/jquery.fileupload-image.js"/>"></script>
    <!-- The File Upload audio preview plugin -->
    <script
            src="<c:url value="/templates/assets/global/plugins/jquery-file-upload/js/jquery.fileupload-audio.js"/>"></script>
    <!-- The File Upload video preview plugin -->
    <script
            src="<c:url value="/templates/assets/global/plugins/jquery-file-upload/js/jquery.fileupload-video.js"/>"></script>
    <!-- The File Upload validation plugin -->
    <script
            src="<c:url value="/templates/assets/global/plugins/jquery-file-upload/js/jquery.fileupload-validate.js"/>"></script>
    <!-- The File Upload user interface plugin -->
    <script
            src="<c:url value="/templates/assets/global/plugins/jquery-file-upload/js/jquery.fileupload-ui.js"/>"></script>
    <!-- The main application script -->
    <!-- The XDomainRequest Transport is included for cross-domain file deletion for IE 8 and IE 9 -->
    <!--[if (gte IE 8)&(lt IE 10)]>
    <script src="<c:url value="/templates/assets/global/plugins/jquery-file-upload/js/cors/jquery.xdr-transport.js"/>"></script>
    <![endif]--> <!-- END:File Upload Plugin JS files--> <!-- END: Page level plugins -->
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
            src="<c:url value="/templates/assets/admin/pages/scripts/inbox.js"/>"
            type="text/javascript"></script>
    <script>
        jQuery(document).ready(function () {
            // initiate layout and plugins
            Metronic.init(); // init metronic core components
            Layout.init(); // init current layout
            Demo.init(); // init demo features
            Inbox.init();
        });
    </script> <!-- END JAVASCRIPTS --> </content>