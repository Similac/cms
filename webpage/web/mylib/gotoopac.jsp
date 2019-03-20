<!DOCTYPE html>
<html lang="utf-8">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="template/cms/portal/img/favicon.png">

    <title></title>

    <!-- Bootstrap core CSS -->
    <link href="template/cms/portal/css/bootstrap.min.css" rel="stylesheet">
    <link href="template/cms/portal/css/bootstrap-reset.css" rel="stylesheet">
    <!--external css-->
    <link href="template/cms/portal/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="template/cms/portal/css/userstyle.css" rel="stylesheet">
    <link href="template/cms/portal/css/userstyle-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 tooltipss and media queries -->
    <!--[if lt IE 9]>
    <script src="template/cms/portal/js/html5shiv.js"></script>
    <script src="template/cms/portal/js/respond.min.js"></script>
    <![endif]-->
    <script src="template/cms/portal/js/jquery.js"></script>
    <script src="template/cms/portal/js/jquery.form.min.js"></script>
    <script src="template/cms/portal/js/jquery.watermark.js"></script>
	<style type="text/css">
p.error {
	color: #DE5959;
}

.form-signin input[type="text"].error, .form-signin input[type="password"].error {
	border-color: #b94a48;
	color: #b94a48;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
}

input.error:focus {
	border-color: #953b39;
	color: #b94a48;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px
		#d59392;
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 6px #d59392;
}	
	</style>
</head>

  <body class="login-body">

    <div class="container">

      <form class="form-signin" id="adminForm" action="http://202.116.174.108:8080/reader/redr_verify.php"  autocomplete="off" method="post">
        <h2 class="form-signin-heading"><img src="template/cms/portal/img/logo.png" style="height:70px;"/></h2>
        <div class="login-wrap">
            <input name="number" type="hidden" value="${userEntity.personnelno}">
            <input  name="passwd" type="hidden" value="${userEntity.pw}">
            <input id="captcha" name="captcha" type="text" style="width: 180px;height: 25px" class="inputxt" placeholder="" nullmsg="请输入验证码"> <img title="点击刷新" src="http://202.116.174.108:8080/reader/captcha.php" align="absbottom">
            <input  name="select" type="hidden" value="cert_no">
            <input name="returnUrl" type="hidden" value="${returnUrl}" >
			<button class="btn btn-lg btn-login btn-block" type="submit">${message}</button>
        </div>
      </form>

    </div>

  </body>
</html>
