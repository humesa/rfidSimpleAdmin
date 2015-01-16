<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>It's Brain - premium responsive admin template by Eugene Kopyov</title>

<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/brain-theme.css" /> " rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/styles.css" /> " rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/font-awesome.min.css" />" rel="stylesheet" type="text/css">
<link href='http://fonts.googleapis.com/css?family=Cuprum' rel='stylesheet' type='text/css'>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>

<script type="text/javascript" src="js/plugins/forms/uniform.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/select2.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/inputmask.js"></script>
<script type="text/javascript" src="js/plugins/forms/autosize.js"></script>
<script type="text/javascript" src="js/plugins/forms/inputlimit.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/listbox.js"></script>
<script type="text/javascript" src="js/plugins/forms/multiselect.js"></script>
<script type="text/javascript" src="js/plugins/forms/validate.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/tags.min.js"></script>

<script type="text/javascript" src="js/plugins/forms/uploader/plupload.full.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/uploader/plupload.queue.min.js"></script>

<script type="text/javascript" src="js/plugins/forms/wysihtml5/wysihtml5.min.js"></script>
<script type="text/javascript" src="js/plugins/forms/wysihtml5/toolbar.js"></script>

<script type="text/javascript" src="js/plugins/interface/jgrowl.min.js"></script>
<script type="text/javascript" src="js/plugins/interface/datatables.min.js"></script>
<script type="text/javascript" src="js/plugins/interface/prettify.js"></script>
<script type="text/javascript" src="js/plugins/interface/fancybox.min.js"></script>
<script type="text/javascript" src="js/plugins/interface/colorpicker.js"></script>
<script type="text/javascript" src="js/plugins/interface/timepicker.min.js"></script>
<script type="text/javascript" src="js/plugins/interface/fullcalendar.min.js"></script>
<script type="text/javascript" src="js/plugins/interface/collapsible.min.js"></script>

<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/application.js"></script>

<style type="css">
.soft-back {
     margin: 0;
     background: url("<c:url value="/resources/images/pcModalBack.gif" />");
     background-repeat:no-repeat;
     display: compact;
     font: 13px/18px "Helvetica Neue", Helvetica, Arial, sans-serif;
}
</style>

</head>

<body class="full-width">

    <!-- Navbar -->
	<!--
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <div class="hidden-lg pull-right">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-right">
                        <span class="sr-only">Toggle navigation</span>
                        <i class="fa fa-chevron-down"></i>
                    </button>
                </div>

                <ul class="nav navbar-nav navbar-left-custom">
                    <li class="user dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" style="background: white;">
                            <img src="<c:url value="/resources/images/logo.png" />" alt="">
                            <span></span>
                            
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                            <li><a href="#"><i class="fa fa-tasks"></i> Tasks</a></li>
                            <li><a href="#"><i class="fa fa-cog"></i> Settings</a></li>
                            <li><a href="#"><i class="fa fa-mail-forward"></i> Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <ul class="nav navbar-nav navbar-right collapse" id="navbar-right">
                <li>
                    <a href="#">
                        <i class="fa fa-rotate-right"></i>
                        <span>Updates</span>
                        <strong class="label label-danger">15</strong>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa-comments"></i>
                        <span>Messages</span>
                        <strong class="label label-danger">7</strong>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa-tasks"></i>
                        <span>Notifications</span>
                    </a>
                </li>
            </ul>
        </div>
    </div> -->
    <!-- /navbar -->


    <!-- Page container -->
    <div class="page-container container-fluid" style="margin: 0px auto;">
    
        <!-- Page content -->
        <div class="page-content">


            <!-- Login wrapper -->
            <div class="login-wrapper">
				<div style="margin: 0px auto 40px 23px;" >
					<img src="<c:url value="/resources/images/logo-300.png"/>" alt="">
				</div>
                <form action="#" role="form">
					
					
                    <div class="panel panel-default">
                        <div class="panel-heading"><h6 class="panel-title"> <i class="fa fa-user"></i> User login</h6></div>
                        <div class="panel-body">
                            <div class="form-group has-feedback">
                                <label>Username</label>
                                <input type="text" class="form-control" placeholder="Username">
                                <i class="fa fa-user form-control-feedback"></i>
                            </div>

                            <div class="form-group has-feedback">
                                <label>Password</label>
                                <input type="password" class="form-control" placeholder="Password">
                                <i class="fa fa-lock form-control-feedback"></i>
                            </div>

                            <div class="row form-actions">
                                <div class="col-xs-6">
                                    <div class="checkbox">
                                    <label>
                                        <input type="checkbox" class="styled">
                                        Remember me
                                    </label>
                                    </div>
                                </div>

                                <div class="col-xs-6">
                                    <button type="submit" class="btn btn-warning pull-right"><i class="fa fa-bars"></i> Sign in</button>
                                </div>
						

                            </div>
                        </div>
                    </div>
                </form>
            </div>  
            <!-- /login wrapper -->      

        
        </div>
        <!-- /page content -->

    </div>
    <!-- page container -->

</body>
</html>
