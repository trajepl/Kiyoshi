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
	
	<title>测评数据报告</title>
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




<link rel="stylesheet" href="/Kiyoshi/Public/css/report.css">

<div class="main-wrapper">
	<div class="cover-title page">
		<h2 id="title">苏州市<?php echo ($zoneName); ?>文明城市建设第三方测评数据报告</h2>
		<h3>(2016年度第2次)</h3>
		<img src="/Kiyoshi/Public/images/soochow.jpg" class="cover-img">
		<h3 class="dept">苏州大学社会公共文明研究所</h3>
		<hr class="flag-line"/>
		<h3 class="data">二零一六年七月</h3>
	</div>
	<div class="info page">
		<h3>(一)&nbsp;调查背景和目的</h3>
			<p>为持续提升<?php echo ($zoneName); ?>文明城市建设水平，按照2015年版《全国文明城市测评体系》和《全国未成年人思想道德建设工作测评体系》的要求，依据实地操作手册，<?php echo ($zoneName); ?>委托苏州大学社会公共文明研究所进行了第2016年第二次现场测评。</p>
		<h3>(二)&nbsp;调研对象和内容</h3>
			<p>此次调查内容主要包括社会主义
			<?php if(is_array($res_item)): foreach($res_item as $key=>$vi): if($key == 0): echo ($vi["item"]); else: ?>，<?php echo ($vi["item"]); endif; endforeach; endif; ?>
			等测评项目。</p>
		<h3>(三)&nbsp;数据处理</h3>
			<p>问卷数据录入和图表制作主要应用Excel软件，数据分析过程使用PHP7后台分析，调查报告为Word版本。</p>
	</div>
	<div class="info page">
		<h3>(四)&nbsp;全区测评得分</h3>
		<p>全区文明程度指数和未成年人测评得分概览表</p>
		<table class="table table-border">
	<thead>
		<tr>
			<th width="280" class="text-center">测评项目</th>
			<th width="150" class="text-center">合计分值</th>
			<th width="150" class="text-center">合计得分</th>
			<th width="150" class="text-center">及格率</th>
		</tr>
	</thead>	
	<tbody>
		<?php if(is_array($result)): foreach($result as $key=>$vi): ?><tr>
			<td class="text-center"><?php echo ($vi["res_item"]); ?></td>
			<td class="text-center"><?php echo ($vi['quota']); ?></td>
			<td class="text-center"><?php echo ($vi['final_score']); ?></td>
			<td class="text-center"><?php echo ($vi['pass_rate']); ?></td>
		</tr><?php endforeach; endif; ?>
	</tbody>
</table>	


		
		<p>全区文明程度指数测评各项目得分及排名情况：</p>
		<table class="table table-border">
	<thead>
		<tr>
			<th width="350" class="text-center">测评项目</th>
			<th width="150" class="text-center">指标分值</th>
			<th width="150" class="text-center">得分</th>
			<th width="150" class="text-center">及格率</th>
			<th width="150" class="text-center">名次</th>
		</tr>
	</thead>	
	<tbody>
		<?php if(is_array($res_item)): foreach($res_item as $key=>$vi): ?><tr>
			<td class="text-center"><?php echo ($vi["item"]); ?></td>
			<td class="text-center"><?php echo ($vi['quota']); ?></td>
			<td class="text-center"><?php echo ($vi['final_score']); ?></td>
			<td class="text-center"><?php echo ($vi['pass_rate']); ?></td>
			<td class="text-center"><?php echo ($vi['order']); ?></td>
		</tr><?php endforeach; endif; ?>
	</tbody>
</table>	


		<p>未成年人思想道德建设得分：</p>
		<table class="table table-border">
			<thead>
				<tr>
					<th width="180" class="text-center">测评项目</th>
					<th width="200" class="text-center">测评指标</th>
					<th width="200" class="text-center">指标分值</th>
					<th width="150" class="text-center">得分</th>
					<th width="150" class="text-center">合格率</th>
					<th width="160" class="text-center">小计得分</th>
					<th width="160" class="text-center">合格率</th>
				</tr>
			</thead>
			<tbody>
				<td class="text-center" rowspan="3">未成年人思想道德建设</td>
					<td class="text-center">社区教育</td>
					<td class="text-center"> </td>
					<td class="text-center"> </td>
					<td class="text-center"> </td>
					<td class="text-center" rowspan="3"> </td>
					<td class="text-center" rowspan="3"> </td>
				</tr>
					<td class="text-center">校园周边环境</td>
					<td class="text-center"> </td>
					<td class="text-center"> </td>
					<td class="text-center"> </td>
				</tr>
					<td class="text-center">网吧管理</td>
					<td class="text-center"> </td>
					<td class="text-center"> </td>
					<td class="text-center"> </td>
				</tr>
			</tbody>

		</table>

		<h3>(五)&nbsp;各街道（新城）文明程度指数测评得分极其排名</h3>
		<p>各街道（新城）文明程度指数测评得分极其排名</p>
		<table class="table table-border">
	<thead>
		<tr>
			<th width="350" class="text-center">单位</th>
			<th width="150" class="text-center">指标分值</th>
			<th width="150" class="text-center">得分</th>
			<th width="150" class="text-center">及格率</th>
			<th width="150" class="text-center">排名</th>
		</tr>
	</thead>	
	<tbody>
		<?php if(is_array($res_domain)): foreach($res_domain as $key=>$vi): ?><tr>
			<td class="text-center"><?php echo ($vi["domain"]); ?></td>
			<td class="text-center"><?php echo ($vi['quota']); ?></td>
			<td class="text-center"><?php echo ($vi['final_score']); ?></td>
			<td class="text-center"><?php echo ($vi['pass_rate']); ?></td>
			<td class="text-center"><?php echo ($vi['order']); ?></td>
		</tr><?php endforeach; endif; ?>
	</tbody>
</table>	


		<h3>(六)&nbsp;各街道（新城）分类项目得分情况表</h3>
		<p>各街道（新城）分类项目得分情况表</p>
		<table class="table table-border">
	<thead>
		<tr>
			<th width="50" class="text-center">序号</th>
			<th width="150" class="text-center">项目</th>
			<?php if(is_array($domainEntry)): foreach($domainEntry as $key=>$entry): ?><th width="150" class="text-center"><?php echo ($entry['domain']); ?></th><?php endforeach; endif; ?>
		</tr>
	</thead>
	<?php $cnt = '0'; ?>
	<tbody>
		<?php if(is_array($itemEntry)): foreach($itemEntry as $key=>$vi_item): ?><tr>
				<td class="text-center"><?php echo ($cnt++); ?></td>
				<?php if($vi_item['item'] == 'final_score'): ?><td class="text-center">小计</td>
				<?php elseif($vi_item['item'] == 'quota'): ?>
					<td class="text-center">指标分值</td>
				<?php elseif($vi_item['item'] == 'pass_rate'): ?>
					<td class="text-center">及格率</td>
				<?php else: ?>
					<td class="text-center"><?php echo ($vi_item['item']); ?></td><?php endif; ?>
				<?php if(is_array($domainEntry)): foreach($domainEntry as $key=>$vi_domain): ?><td class="text-center"><?php echo ($res_domain_item[$vi_domain['domain']][$vi_item['item']]); ?></td><?php endforeach; endif; ?>
			</tr><?php endforeach; endif; ?>
	</tbody>
</table>

		<h3>(七)&nbsp;未成年人思想道德建设测评的得分极其排名</h3>
		<p>未成年人思想道德建设测评的得分极其排名：</p>
		<table class="table table-border">
	<thead>
		<tr>
			<th width="180" class="text-center">街道（新城）</th>
			<th width="200" class="text-center">指标分值</th>
			<th width="150" class="text-center">得分</th>
			<th width="150" class="text-center">合格率</th>
			<th width="160" class="text-center">排名</th>
		</tr>
	</thead>
	<tbody>
		<?php if(is_array($res_domain)): foreach($res_domain as $key=>$vi): ?><tr>
				<td class="text-center"><?php echo ($vi["domain"]); ?></td>
				<td class="text-center"></td>
				<td class="text-center"></td>
				<td class="text-center"></td>
				<td class="text-center"></td>
			</tr><?php endforeach; endif; ?>
	</tbody>

</table>

<table class="table table-border">
	<thead>
		<tr>
			<th width="180" class="text-center">部门</th>
			<th width="200" class="text-center">指标分值</th>
			<th width="150" class="text-center">得分</th>
			<th width="150" class="text-center">合格率</th>
			<th width="160" class="text-center">排名</th>
		</tr>
	</thead>
	<tbody>
		<?php if(is_array($res_department)): foreach($res_department as $key=>$vi): ?><tr>
				<td class="text-center"><?php echo ($vi["department"]); ?></td>
				<td class="text-center"></td>
				<td class="text-center"></td>
				<td class="text-center"></td>
				<td class="text-center"></td>
			</tr><?php endforeach; endif; ?>
	</tbody>

</table>

		<h3>(八)&nbsp;各责任单位文明程度指数测评得分极其排名</h3>
		<p>各责任单位文明程度指数测评得分极其排名</p>
		<table class="table table-border">
	<thead>
		<tr>
			<th width="350" class="text-center">单位</th>
			<th width="150" class="text-center">指标分值</th>
			<th width="150" class="text-center">得分</th>
			<th width="150" class="text-center">及格率</th>
			<th width="150" class="text-center">排名</th>
		</tr>
	</thead>	
	<tbody>
		<?php if(is_array($res_department)): foreach($res_department as $key=>$vi): ?><tr>
			<td class="text-center"><?php echo ($vi["department"]); ?></td>
			<td class="text-center"><?php echo ($vi['quota']); ?></td>
			<td class="text-center"><?php echo ($vi['final_score']); ?></td>
			<td class="text-center"><?php echo ($vi['pass_rate']); ?></td>
			<td class="text-center"><?php echo ($vi['order']); ?></td>
		</tr><?php endforeach; endif; ?>
	</tbody>
</table>	

	</div>
</div>
</body>
</html>