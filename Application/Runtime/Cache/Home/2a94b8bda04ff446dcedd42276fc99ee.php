<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta name="keywords" content="首页" />
	<meta name="description" content=""/>
	<!-- <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" /> -->
	<meta http-equiv="Cache-Control" content="no-transform" /> 
	<meta http-equiv="Cache-Control" content="no-siteapp" />
	
	<!--[if lte IE 9]>
		<link rel="stylesheet" type="text/css" href="/Kiyoshi/Public/css/ie.css" />
	<![endif]--> 

	<!--[if IE 9]>
	    <script type="text/javascript" src="/Kiyoshi/Static/PIE-2.0beta1/PIE_IE9.js"></script>
	    <link rel="stylesheet" type="text/css" href="/Kiyoshi/Public/css/ie9.css" />
	<![endif]-->

	<!--[if lt IE 9]>
		<script type="text/javascript" src="/Kiyoshi/Public/plugins/html5.js"></script>
		<script type="text/javascript" src="/Kiyoshi/Public/plugins/respond.min.js"></script>
		<script type="text/javascript" src="/Kiyoshi/Static/PIE-2.0beta1/PIE_IE678.js"></script>
		<link rel="stylesheet" type="text/css" href="/Kiyoshi/Public/css/ie678.css" />
	<![endif]-->

	<!--[if lte IE 6]>
		<script src="/Kiyoshi/Public/plugins/DD_belatedPNG_0.0.8a.js" type="text/javascript"></script>

		<script type="text/javascript">
		    DD_belatedPNG.fix('div, ul, img, li, input , a');
		</script>
	<![endif]--> 
	
	<title>苏州文明城市建设测评</title>
	<!-- <link href="favicon.ico" type="image/x-icon" rel="shortcut icon" /> -->
	<link rel="stylesheet" href="/Kiyoshi/Public/css/common.css">
	<link rel="stylesheet" href="/Kiyoshi/Public/css/admin.css">	
	<link rel="stylesheet" href="/Kiyoshi/Public/css/bootstrap.min.css">
	<link rel="stylesheet" href="/Kiyoshi/Static/DataTables-1.10.8/css/jquery.dataTables.css">
	<link rel="stylesheet" href="/Kiyoshi/Static/font-awesome-4.5.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="/Kiyoshi/Public/css/style.css">
	<script type="text/javascript" src="/Kiyoshi/Public/plugins/jquery-1.11.2.js"></script>

</head>
<body>
<div id="wrapper-main">





<body>
	<div class="modal fade bs-example-modal-sm" id="myModal" role="dialog" aria-label="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">增加用户</h4>
            </div>
            <div class="modal-body">
                <form action="<?php echo U('Index/addUser');?>" method="post" class="form-horizontal" role="form">
                    <div class="form-group">
                        <label class="col-xs-4">用户名</label>
                        <div class="col-xs-8">
                            <input type="text" class="form-control username" placeholder="用户名称" name="username">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-4">用户密码</label>
                        <div class="col-xs-8">
                            <input type="password" class="form-control ps1" placeholder="密码" name="password">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-4">确认密码</label>
                        <div class="col-xs-8">
                            <input type="password" class="form-control ps2" placeholder="密码" name="password_conf">
                        </div>
                    </div>
                    <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <input type="submit" class="btn btn-primary" value="确认">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="myNav">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">
                <img src="/Kiyoshi/Public/images/logo.png">
            </a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav" id="mytab">
                <li class="active"><a href="<?php echo U('index');?>">首页</a></li>
                <li><a href="#twopage" target="_self">各区测评</a></li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <li><a href="<?php echo U('Index/logout');?>">注销</a></li>
                <?php if($isAdmin == true): ?><li class="admin-item"><a data-toggle="modal" data-target="#myModal">用户增加</a></li>
                <?php else: ?>
                    <li class="user-item"><a data-toggle="modal">欢迎使用</a></li><?php endif; ?>
            </ul>
        </div>
    </div>
</nav>
<script>
    $(document).ready(function() {
        $("input[type='submit']").click(function(e) {
            var username = $(".username").val().trim();
            var password = $(".ps1").val().trim();
            var password_conf = $(".ps2").val().trim();
           
            if(username == '') {
                alert("请输入用户名！");
                e.preventDefault();
            } else if(password != password_conf){
                alert("确保俩次密码输入一致！"); 
                e.preventDefault();
            } 
        });
    });
</script>>

	<div id="partone">
    <div class="jumbotron" style="background:url('/Kiyoshi/Public/images/headersz.png');height: 450px;background-size: 100% 100%;-webkit-background-size: 100% 100%;">
        <div class="jumbotrontext">
            <img src="/Kiyoshi/Public/images/textsz.png">
        </div>
</div>

	<div class="twopage container" id="twopage">
    <div class="twopage-text">
        <h1 class="twopage-text-h1">
            各区测评情况
        </h1>
    </div>
    <div class="row">
        <?php if(is_array($zoneInfo)): foreach($zoneInfo as $key=>$vi): ?><div class="twopage-books col-md-4">
                <a href="<?php echo U('Index/disone', array('id'=>$vi['id']));?>" target="_blank">
                    <img src="<?php echo ($vi["btn"]); ?>">
                    <div class="bookicon">
                        <h3><?php echo ($vi["zone"]); ?></h3>
                        <h1><strong>测评</strong></h1>
                    </div>
                </a>
            </div><?php endforeach; endif; ?>
    </div>
</div>

	<nav class="navbar navbar-inverse navbar-fixed-bottom" role="navigation" id="footer" style="margin-bottom:0px">
    <div style="margin-top: 15px">
        <h5 style="text-align: center; color: #8e8e8e;">@苏州大学管理学院公共服务中心</h5>
    </div>
</nav>

	<script src="/Kiyoshi/Public/plugins/jquery-1.11.2.js"></script>
	<script src="/Kiyoshi/Public/plugins/bootstrap.min.js"></script>
</body>
</html>