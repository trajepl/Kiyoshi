<?php if (!defined('THINK_PATH')) exit();?><!-- <meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>苏州市文明城市建设测评</title>
<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/Kiyoshi/Public/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="/Kiyoshi/Public/css/style.css" /> -->
<!DOCTYPE html>
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
	<link rel="stylesheet" href="/Kiyoshi/Public/css/style.css">
	<link rel="stylesheet" href="/Kiyoshi/Public/css/bootstrap.min.css">
	<link rel="stylesheet" href="/Kiyoshi/Static/DataTables-1.10.8/css/jquery.dataTables.css">
	<link rel="stylesheet" href="/Kiyoshi/Static/font-awesome-4.5.0/css/font-awesome.min.css">
	<script type="text/javascript" src="/Kiyoshi/Public/plugins/jquery-1.11.2.js"></script>

</head>
<body>
<div id="wrapper-main">




<nav class="navbar navbar-inverse" role="navigation" style="margin: 0">
    <div style="margin-top: 15px">
        <h5 style="text-align: center; color: #999;">测评</h5>
    </div>
</nav>

<div id="page1">
    <div class="jumbotron" style="background:url('/Kiyoshi/Public/images/1.jpg');height: 700px;background-size: 100% 100%;-webkit-background-size: 100% 100%;">
        <div class="jumbotrontext">
            <h1>什么区</h1>
            <p>什么什么</p>
            <br/><br/>
            <p><a data-toggle="modal" href="/Kiyoshi" class="btn btn-info btn-lg" role="button">&lt&lt 返回首页</a></p>
        </div>
    </div>
</div>

        <!-- <a style="margin-right: 30px" class="btn btn-info btn-lg" href="<?php echo U('Index/insertItem');?>">添加记录</a>
        <a style="margin-right: 30px" class="btn btn-info btn-lg" href="<?php echo U('Index/upload');?>">数据导入</a>
        <a style="margin-right: 30px" class="btn btn-info btn-lg" href="<?php echo U('Index/exportData');?>">结果导出</a> -->

<div class="container" style="margin-top: 50px">
    <div style="float: right;">
        <a style="margin-right: 30px" data-toggle="modal" class="btn btn-primary btn-lg" id="add-file">数据导入</a>
        <button style="margin-right: 30px" data-toggle="modal" data-target="#myModal4" class="btn btn-info btn-lg">添加记录</button>  
        <button  data-toggle="modal" data-target="#myModal6" class="btn btn-primary btn-lg">结果导出</button>
    </div>
</div>

<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModallabel">添加记录</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label class="control-label">序号</label>
                        <input class="form-control">
                    </div>
                    <div class="form-group">
                        <label class="control-label">项目</label>
                        <input class="form-control">
                    </div>
                    <div class="form-group">
                        <label class="control-label">考察点位</label>
                        <input class="form-control">
                    </div>
                    <div class="form-group">
                        <label class="control-label">扣分</label>
                        <input class="form-control">
                    </div>
                    <div class="form-group">
                        <label class="control-label">得分</label>
                        <input class="form-control">
                    </div>
                     <div class="form-group">
                        <label class="control-label">区域</label>
                        <input class="form-control">
                    </div>
                     <div class="form-group">
                        <label class="control-label">责任单位</label>
                        <input class="form-control">
                    </div>
                     <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <input type="submit" class="btn btn-info">
                    </div>
                </form>
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

<div class="modal fade" id="myModal6" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-sm">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModallabel">导出???</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label class="control-label">???</label>
                    <input class="form-control">
                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary">确认</button>
            </div>
        </div>
    </div>
</div>


<div class="container">
    <div class="table-responsive" style="margin-top: 50px;margin-bottom: 100px">
        <table class="table table-striped table-bordered table-hover">
            <thead>
            <tr class="info">
                <th>???</th>
                <th>???</th>
                <th>???</th>
                <th>???</th>
                <th>???</th>
                <th class="col-md-1">操作</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Ele</td>
                <td>Ele</td>
                <td>Ele</td>
                <td><a href="#"><img></a></td>
                <td><a href="#"><img></a></td>
                <td><a data-toggle="modal" data-target="#myModal7" href="#" class="btn btn-info">???</a></td>
            </tr>
            <tr>
                <td>Ele</td>
                <td>Ele</td>
                <td>Ele</td>
                <td><a href="#"><img></a></td>
                <td><a href="#"><img></a></td>
                <td><a data-toggle="modal" data-target="#myModal7" href="#" class="btn btn-info">???</a></td>
            </tr>
            <tr>
                <td>Ele</td>
                <td>Ele</td>
                <td>Ele</td>
                <td><a href="#"><img></a></td>
                <td><a href="#"><img></a></td>
                <td><a data-toggle="modal" data-target="#myModal7" href="#" class="btn btn-info">???</a></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<nav class="navbar navbar-inverse" role="navigation" style="margin: 0">
    <div style="margin-top: 15px">
        <h5 style="text-align: center; color: #8e8e8e;">@苏州大学</h5>
    </div>
</nav>
<script src="/Kiyoshi/Public/plugins/jquary-1.11.2.js"></script>
<script src="/Kiyoshi/Public/plugins/bootstrap.min.js"></script>

<script type="text/javascript" src="/Kiyoshi/Public/script/index.js"></script>>
</body>
</html>