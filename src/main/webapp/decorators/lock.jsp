<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">

<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>Metronic | Pages - Lock Screen 1</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link
            href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
            rel="stylesheet" type="text/css"/>
    <link
            href="<c:url value="/templates/assets/global/plugins/font-awesome/css/font-awesome.min.css"/>"
            rel="stylesheet" type="text/css"/>
    <link
            href="<c:url value="/templates/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"/>"
            rel="stylesheet" type="text/css"/>
    <link
            href="<c:url value="/templates/assets/global/plugins/bootstrap/css/bootstrap.min.css"/>"
            rel="stylesheet" type="text/css"/>
    <link
            href="<c:url value="/templates/assets/global/plugins/uniform/css/uniform.default.css"/>"
            rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="<c:url value="/templates/assets/admin/pages/css/lock.css"/>"
          rel="stylesheet" type="text/css"/>
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="<c:url value="/templates/assets/global/css/components-rounded.css"/>"
          id="style_components" rel="stylesheet" type="text/css"/>
    <link href="<c:url value="/templates/assets/global/css/plugins.css"/>"
          rel="stylesheet" type="text/css"/>
    <link
            href="<c:url value="/templates/assets/admin/layout/css/layout.css"/>"
            rel="stylesheet" type="text/css"/>
    <link
            href="<c:url value="/templates/assets/admin/layout/css/themes/default.css"/>"
            rel="stylesheet" type="text/css" id="style_color"/>
    <link
            href="<c:url value="/templates/assets/admin/layout/css/custom.css"/>"
            rel="stylesheet" type="text/css"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body>
<div class="page-lock">
    <div class="page-logo">
        <a class="brand" href="seller/home"> <img
                src="<c:url value="/templates/assets/admin/layout2/img/logo-big.png"/>" alt="logo"/>
        </a>
    </div>
    <div class="page-body">
        <div class="lock-head">
            Locked
        </div>
        <div class="lock-body">
            <div class="pull-left lock-avatar-block">
                <img src="<c:url value="/templates/assets/admin/pages/media/profile/photo3.jpg"/>" class="lock-avatar">
            </div>
            <form class="lock-form pull-left" action="lock" method="post">
                <h4>Amanda Smith</h4>
                <div class="form-group">
                    <input class="form-control placeholder-no-fix" type="password" autocomplete="off"
                           placeholder="Password" name="password"/>
                </div>
                <div class="form-actions">
                    <button type="submit" class="btn btn-success uppercase">Login</button>
                </div>
            </form>
        </div>
        <div class="lock-bottom">
            <a href="">Not Amanda Smith?</a>
        </div>
    </div>
    <div class="page-footer-custom">
        2014 &copy; Metronic. Admin Dashboard Template.
    </div>
</div>
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="<c:url value="/templates/assets/global/plugins/respond.min.js"/>"></script>
<script src="<c:url value="/templates/assets/global/plugins/excanvas.min.js"/>"></script> 
<![endif]-->
<script src="<c:url value="/templates/assets/global/plugins/jquery.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/templates/assets/global/plugins/jquery-migrate.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/templates/assets/global/plugins/bootstrap/js/bootstrap.min.js"/>"
        type="text/javascript"></script>
<script src="<c:url value="/templates/assets/global/plugins/jquery.blockui.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/templates/assets/global/plugins/uniform/jquery.uniform.min.js"/>"
        type="text/javascript"></script>
<script src="<c:url value="/templates/assets/global/plugins/jquery.cokie.min.js"/>" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="<c:url value="/templates/assets/global/plugins/backstretch/jquery.backstretch.min.js"/>"
        type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<script src="<c:url value="/templates/assets/global/scripts/metronic.js"/>" type="text/javascript"></script>
<script src="<c:url value="/templates/assets/admin/layout/scripts/layout.js"/>" type="text/javascript"></script>
<script src="<c:url value="/templates/assets/admin/layout/scripts/demo.js"/>" type="text/javascript"></script>
<script>
    jQuery(document).ready(function () {
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        Demo.init();
    });
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>