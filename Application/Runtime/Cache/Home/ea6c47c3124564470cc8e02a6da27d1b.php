<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="renderer" content="webkit|ie-comp|ie-stand">
	<meta name="keywords" content="测评" />
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
	
	<title>区域测评</title>
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





<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation" id="myNav">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">
                <img src="/Kiyoshi/Public/images/logo.png">
            </a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="<?php echo U('dataManage');?>">数据管理</a></li>
                <li><a data-toggle="model" id="test-result" href="<?php echo U('report');?>">测评结果</a></li>
                <li><a data-toggle="model" id="add-file">数据导入</a></li>
                <li><a href="<?php echo U('result');?>">数据管理</a></li>
            </ul>
        </div>
    </div>
</nav>

<div id="page1">
    <div class="jumbotron" style="background:url('<?php echo ($info["header"]); ?>');height: 700px;background-size: 100% 100%;-webkit-background-size: 100% 100%;">
        <div class="jumbotrontext">

            <img src="<?php echo ($info["test"]); ?>">
            <div class="backicon" style="padding-top: 70px;">
                <a href="<?php echo U('index');?>" target="_self">
                    <img src="<?php echo ($info["back"]); ?>">
                    <div class="backshadow">
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>

<div id="add-file-wrapper" class="none">
    <form action="<?php echo U('Index/upload');?>" method="post" enctype="multipart/form-data">
        <input type="file" name="dataset" id="add-file-input">
        <input type="submit" name="导入">
    </form>
    
</div>

<div class="container">
    <div class="table-responsive" style="margin-top: 50px;margin-bottom: 100px">
    </div>
</div>

<nav class="navbar navbar-inverse navbar-fixed-bottom" role="navigation" id="footer" style="margin-bottom:0px">
    <div style="margin-top: 15px">
        <h5 style="text-align: center; color: #8e8e8e;">@苏州大学管理学院公共服务中心</h5>
    </div>
</nav>
<script src="/Kiyoshi/Public/plugins/jquary-1.11.2.js"></script>
<script src="/Kiyoshi/Public/plugins/bootstrap.min.js"></script>

<script type="text/javascript" src="/Kiyoshi/Public/script/index.js"></script>
</body>
</html>